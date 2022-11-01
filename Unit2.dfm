object datos: Tdatos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 835
  Width = 1173
  object Data: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=ON'
      'isc_tpb_concurrency'
      'isc_tpb_wait')
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    DesignConnection = True
    HostName = 'localhost'
    Port = 0
    Database = 'data'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    LibraryLocation = 'C:\PrintSoft PV\data\fbclient.dll'
    Left = 32
    Top = 16
  end
  object IbqEmpleados: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from Mtempleado')
    Params = <>
    Left = 200
    Top = 64
    object IbqEmpleadosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object IbqEmpleadosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object IbqEmpleadosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object IbqEmpleadosCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object IbqEmpleadosTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object IbqEmpleadosCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object IbqEmpleadosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object IbqEmpleadosLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object IbqEmpleadosPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object IbqEmpleadosMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object IbqEmpleadosELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object IbqEmpleadosIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object IbqEmpleadosCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object IbqEmpleadosMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object IbqEmpleadosMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object IbqEmpleadosIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object IbqEmpleadosIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object IbqEmpleadosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
    end
    object IbqEmpleadosdescmax: TFloatField
      FieldName = 'descmax'
    end
    object IbqEmpleadosINICIO: TDateField
      FieldName = 'INICIO'
    end
    object IbqEmpleadosSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object IbqEmpleadosCOD: TIntegerField
      FieldName = 'COD'
    end
    object IbqEmpleadosCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object IbqEmpleadosFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
    object IbqEmpleadosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object IbqEmpleadosESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object IbqEmpleadosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object IbqEmpleadosDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
  end
  object ZQuery1: TZQuery
    Connection = Data
    Params = <>
    Left = 24
    Top = 120
  end
  object IbClientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cliente'
      'WHERE'
      '  cliente.CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO cliente'
      
        '  (CODIGO, NOMBRES, DIRECCION, CEDULA, TELEFONO, CELULAR, COLOR,' +
        ' CONTACTO, '
      
        '   RENGLONCNF, TXTCNF, CREDITOLIMITE, TIPO, RNC, CONDICION, INIC' +
        'IO, SUELDO, '
      
        '   PAGOITB, CREDITO, BALANCE, ESTADO, MOVIL, CODIGO_T, COMISION,' +
        ' NUMEROPIN, '
      
        '   TELEFONO3, EMAIL, RUTA_ID, REGIONID, PROVINCIAID, MUNICIPIOID' +
        ', MUSADOS, '
      '   MPENDIENTES, PINVIP, PIN)'
      'VALUES'
      
        '  (:CODIGO, :NOMBRES, :DIRECCION, :CEDULA, :TELEFONO, :CELULAR, ' +
        ':COLOR, '
      
        '   :CONTACTO, :RENGLONCNF, :TXTCNF, :CREDITOLIMITE, :TIPO, :RNC,' +
        ' :CONDICION, '
      
        '   :INICIO, :SUELDO, :PAGOITB, :CREDITO, :BALANCE, :ESTADO, :MOV' +
        'IL, :CODIGO_T, '
      
        '   :COMISION, :NUMEROPIN, :TELEFONO3, :EMAIL, :RUTA_ID, :REGIONI' +
        'D, :PROVINCIAID, '
      '   :MUNICIPIOID, :MUSADOS, :MPENDIENTES, :PINVIP, :PIN)')
    ModifySQL.Strings = (
      'UPDATE cliente SET'
      '  CODIGO = :CODIGO,'
      '  NOMBRES = :NOMBRES,'
      '  DIRECCION = :DIRECCION,'
      '  CEDULA = :CEDULA,'
      '  TELEFONO = :TELEFONO,'
      '  CELULAR = :CELULAR,'
      '  COLOR = :COLOR,'
      '  CONTACTO = :CONTACTO,'
      '  RENGLONCNF = :RENGLONCNF,'
      '  TXTCNF = :TXTCNF,'
      '  CREDITOLIMITE = :CREDITOLIMITE,'
      '  TIPO = :TIPO,'
      '  RNC = :RNC,'
      '  CONDICION = :CONDICION,'
      '  INICIO = :INICIO,'
      '  SUELDO = :SUELDO,'
      '  PAGOITB = :PAGOITB,'
      '  CREDITO = :CREDITO,'
      '  BALANCE = :BALANCE,'
      '  ESTADO = :ESTADO,'
      '  MOVIL = :MOVIL,'
      '  CODIGO_T = :CODIGO_T,'
      '  COMISION = :COMISION,'
      '  NUMEROPIN = :NUMEROPIN,'
      '  TELEFONO3 = :TELEFONO3,'
      '  EMAIL = :EMAIL,'
      '  RUTA_ID = :RUTA_ID,'
      '  REGIONID = :REGIONID,'
      '  PROVINCIAID = :PROVINCIAID,'
      '  MUNICIPIOID = :MUNICIPIOID,'
      '  MUSADOS = :MUSADOS,'
      '  MPENDIENTES = :MPENDIENTES,'
      '  PINVIP = :PINVIP,'
      '  PIN = :PIN'
      'WHERE'
      '  cliente.CODIGO = :OLD_CODIGO')
    RefreshSQL.Strings = (
      'select'
      '    CODIGO,'
      '    NOMBRES,'
      '    DIRECCION,'
      '    CEDULA,'
      '    TELEFONO,'
      '    CELULAR,'
      '    COLOR,'
      '    CONTACTO,'
      '    RENGLONCNF,'
      '    TXTCNF,'
      '    CREDITOLIMITE,'
      '    TIPO,'
      '    RNC,'
      '    CONDICION,'
      '    INICIO,'
      '    SUELDO,'
      '    PAGOITB,'
      '    CREDITO,'
      '    BALANCE,'
      '    ESTADO,'
      '    MOVIL,'
      '    CODIGO_T'
      'from '
      'cliente')
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEDULA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RENGLONCNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TXTCNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CREDITOLIMITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUELDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGOITB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BALANCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOVIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_T'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMISION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMEROPIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RUTA_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REGIONID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MUNICIPIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MUSADOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MPENDIENTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PINVIP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODIGO'
        ParamType = ptUnknown
      end>
  end
  object DsClientes: TDataSource
    DataSet = FbtClientes
    Left = 152
    Top = 64
  end
  object ZUpdateSQL1: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 64
    Top = 128
  end
  object FbtClientes: TZQuery
    Connection = Data
    UpdateObject = IbClientes
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 96
    Top = 64
    object FbtClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FbtClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object FbtClientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object FbtClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object FbtClientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object FbtClientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object FbtClientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object FbtClientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object FbtClientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
      currency = True
    end
    object FbtClientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object FbtClientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FbtClientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object FbtClientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object FbtClientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object FbtClientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object FbtClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
      currency = True
    end
    object FbtClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object FbtClientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object FbtClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object FbtClientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 15
    end
    object FbtClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object FbtClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      Size = 10
    end
    object FbtClientesTELEFONO3: TWideStringField
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object FbtClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object FbtClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
    object FbtClientesREGIONID: TIntegerField
      FieldName = 'REGIONID'
    end
    object FbtClientesPROVINCIAID: TIntegerField
      FieldName = 'PROVINCIAID'
    end
    object FbtClientesMUNICIPIOID: TIntegerField
      FieldName = 'MUNICIPIOID'
    end
    object FbtClientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object FbtClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
      currency = True
    end
    object FbtClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
      currency = True
    end
    object FbtClientesNOMBRES: TWideStringField
      DisplayWidth = 200
      FieldName = 'NOMBRES'
      Size = 100
    end
    object FbtClientesPINVIP: TWideStringField
      FieldName = 'PINVIP'
      Size = 10
    end
    object FbtClientesPIN: TIntegerField
      FieldName = 'PIN'
    end
  end
  object FqArticulos: TZQuery
    Connection = Data
    UpdateObject = FUArticulos
    SQL.Strings = (
      'select * from mtarticulo')
    Params = <>
    UpdateMode = umUpdateAll
    Left = 16
    Top = 184
    object FqArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object FqArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object FqArticulosCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 25
    end
    object FqArticulosCATEGORIA: TWideStringField
      FieldName = 'CATEGORIA'
      Size = 15
    end
    object FqArticulosCANT_MINI: TFloatField
      FieldName = 'CANT_MINI'
    end
    object FqArticulosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 15
    end
    object FqArticulosALMACEN: TWideStringField
      FieldName = 'ALMACEN'
      Size = 3
    end
    object FqArticulosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object FqArticulosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object FqArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object FqArticulosPROVEEDOR1: TWideStringField
      FieldName = 'PROVEEDOR1'
      Size = 35
    end
    object FqArticulosPROVEEDOR2: TWideStringField
      FieldName = 'PROVEEDOR2'
      Size = 35
    end
    object FqArticulosIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object FqArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 1
    end
    object FqArticulosABREVIADO1: TWideStringField
      FieldName = 'ABREVIADO1'
      Size = 30
    end
    object FqArticulosUNIDAD_VENTA: TWideStringField
      FieldName = 'UNIDAD_VENTA'
      Size = 15
    end
    object FqArticulosCODIGO1: TWideStringField
      FieldName = 'CODIGO1'
      Size = 10
    end
    object FqArticulosMODIFUSUARIO: TWideStringField
      FieldName = 'MODIFUSUARIO'
      Size = 30
    end
    object FqArticulosFECHAMODI: TDateField
      FieldName = 'FECHAMODI'
    end
    object FqArticulosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object FqArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 2
    end
    object FqArticulosCODIGOXTR: TIntegerField
      FieldName = 'CODIGOXTR'
    end
    object FqArticulosTIPOCOD: TWideStringField
      FieldName = 'TIPOCOD'
      Size = 10
    end
    object FqArticulosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object FqArticulosCANTIDAD_MAXIMA: TFloatField
      FieldName = 'CANTIDAD_MAXIMA'
    end
    object FqArticulosCOD1: TIntegerField
      FieldName = 'COD1'
    end
    object FqArticulosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object FqArticulosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FqArticulosBENEF: TFloatField
      FieldName = 'BENEF'
    end
    object FqArticulosBENEF_PORC: TWideStringField
      FieldName = 'BENEF_PORC'
      Size = 2
    end
    object FqArticulosPRECIOABIERTO: TWideStringField
      FieldName = 'PRECIOABIERTO'
      Size = 2
    end
    object FqArticulosCOD_ART1: TIntegerField
      FieldName = 'COD_ART1'
    end
    object FqArticulosCOCINA: TWideStringField
      FieldName = 'COCINA'
      Size = 2
    end
    object FqArticulosCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object FqArticulosCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object FqArticulosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 18
    end
    object FqArticulosCOMENTARIO: TWideMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftWideMemo
    end
    object FqArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 70
    end
    object FqArticulosCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 15
    end
    object FqArticulosEXISTENCIA1: TExtendedField
      FieldName = 'EXISTENCIA1'
      Precision = 19
    end
    object FqArticulosEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
    end
  end
  object FUArticulos: TZUpdateSQL
    DeleteSQL.Strings = (
      'delete from mtarticulos'
      'where'
      'codigo =:old_codigo')
    InsertSQL.Strings = (
      'insert into mtarticulo(    '
      '    CODIGO,'
      '    ARTICULO,'
      '    MODELO,'
      '    MARCA,'
      '    COLOR,'
      '    CATEGORIA,'
      '    CANT_MINI,'
      '    SERIE,'
      '    ALMACEN,'
      '    PRECIO1,'
      '    PRECIO2,'
      '    COSTO,'
      '    COMENTARIO,'
      '    PROVEEDOR1,'
      '    PROVEEDOR2,'
      '    IMPUESTO,'
      '    EXISTENCIA,'
      '    ITBIS,'
      '    ABREVIADO1,'
      '    UNIDAD_VENTA,'
      '    CODIGO1,'
      '    MODIFUSUARIO,'
      '    FECHAMODI,'
      '    EXISTENCIA1,'
      '    ABREVIADO,'
      '    POLITICA,'
      '    CODIGOXTR,'
      '    TIPOCOD,'
      '    CONDICION,'
      '    ESTADO,'
      '    CANTIDAD_MAXIMA,'
      '    COD1,'
      '    IMAGEN,'
      '    TIPO,'
      '    BENEF,'
      '    BENEF_PORC,'
      '    PRECIOABIERTO,'
      '    COD_ART1,'
      '    COCINA,'
      '    CLA_COSTO,'
      '    CLA_PRECIO'
      ')'
      'values'
      '(   :CODIGO,'
      '    :ARTICULO,'
      '    :MODELO,'
      '    :MARCA,'
      '    :COLOR,'
      '    :CATEGORIA,'
      '    :CANT_MINI,'
      '    :SERIE,'
      '    :ALMACEN,'
      '    :PRECIO1,'
      '    :PRECIO2,'
      '    :COSTO,'
      '    :COMENTARIO,'
      '    :PROVEEDOR1,'
      '    :PROVEEDOR2,'
      '    :IMPUESTO,'
      '    :EXISTENCIA,'
      '    :ITBIS,'
      '    :ABREVIADO1,'
      '    :UNIDAD_VENTA,'
      '    :CODIGO1,'
      '    :MODIFUSUARIO,'
      '    :FECHAMODI,'
      '    :EXISTENCIA1,'
      '    :ABREVIADO,'
      '    :POLITICA,'
      '    :CODIGOXTR,'
      '    :TIPOCOD,'
      '    :CONDICION,'
      '    :ESTADO,'
      '    :CANTIDAD_MAXIMA,'
      '    :COD1,'
      '    :IMAGEN,'
      '    :TIPO,'
      '    :BENEF,'
      '    :BENEF_PORC,'
      '    :PRECIOABIERTO,'
      '    :COD_ART1,'
      '    :COCINA,'
      '    :CLA_COSTO,'
      '    :CLA_PRECIO'
      ')')
    ModifySQL.Strings = (
      'update mtarticulo set    '
      '    CODIGO=:codigo,'#9
      '    ARTICULO=:ARTICULO,'
      '    MODELO=:MODELO,'
      '    MARCA=:MARCA,'
      '    COLOR=:COLOR,'#9
      '    CATEGORIA=:CATEGORIA,'
      '    CANT_MINI=:CANT_MINI,'
      '    SERIE=:SERIE,'
      '    ALMACEN=:ALMACEN,'
      '    PRECIO1=:PRECIO1,'
      '    PRECIO2=:PRECIO2,'
      '    COSTO'#9'=:COSTO,'#9
      '    COMENTARIO=:COMENTARIO,'
      '    PROVEEDOR1=:PROVEEDOR1,'
      '    PROVEEDOR2=:PROVEEDOR2,'
      '    IMPUESTO=:IMPUESTO,'
      '    EXISTENCIA=:EXISTENCIA,'
      '    ITBIS'#9'=:ITBIS,'
      '    ABREVIADO1=:ABREVIADO1,'
      '    UNIDAD_VENTA=:UNIDAD_VENTA,'
      '    CODIGO1=:CODIGO1,'
      '    MODIFUSUARIO=:MODIFUSUARIO,'
      '    FECHAMODI=:FECHAMODI,'
      '    EXISTENCIA1=:EXISTENCIA1,'
      '    ABREVIADO=:ABREVIADO,'
      '    POLITICA=:POLITICA,'
      '    CODIGOXTR=:CODIGOXTR,'
      '    TIPOCOD=:TIPOCOD,'
      '    CONDICION=:CONDICION,'
      '    ESTADO=:ESTADO,'
      '    CANTIDAD_MAXIMA=:CANTIDAD_MAXIMA,'
      '    COD1=:COD1,'
      '    IMAGEN=:IMAGEN,'
      '    TIPO=:TIPO,'
      '    BENEF=:BENEF,'
      '    BENEF_PORC=:BENEF_PORC,'
      '    PRECIOABIERTO=:PRECIOABIERTO,'
      '    COD_ART1=:COD_ART1,'
      '    COCINA=:COCINA,'
      '    CLA_COSTO=:CLA_COSTO,'
      '    CLA_PRECIO=:CLA_PRECIO'
      ''
      'where'
      'codigo =:old_codigo ')
    RefreshSQL.Strings = (
      'select * from mtarticulo')
    UseSequenceFieldForRefreshSQL = False
    Left = 64
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CATEGORIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_MINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMENTARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD_VENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODIFUSUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAMODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POLITICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOXTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOCOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD_MAXIMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEF_PORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIOABIERTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COCINA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_codigo'
        ParamType = ptUnknown
      end>
  end
  object IbqCategorias: TZQuery
    Connection = Data
    SQL.Strings = (
      'select * from MTCATEGORIAARTICULO')
    Params = <>
    Left = 104
    Top = 232
  end
  object DsCategoria: TDataSource
    DataSet = IbqCategorias
    Left = 112
    Top = 176
  end
  object FbqFabricantes: TZQuery
    Connection = Data
    UpdateObject = FUfabricantes
    SQL.Strings = (
      'select * from  MAN_PROVEDORES')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 160
    Top = 136
    object FbqFabricantesCOD_PROV: TIntegerField
      FieldName = 'COD_PROV'
      Required = True
    end
    object FbqFabricantesNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 50
    end
    object FbqFabricantesNOM_CONTACTO: TWideStringField
      FieldName = 'NOM_CONTACTO'
      Size = 50
    end
    object FbqFabricantesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object FbqFabricantesTELF1: TWideStringField
      FieldName = 'TELF1'
      Size = 13
    end
    object FbqFabricantesTELF2: TWideStringField
      FieldName = 'TELF2'
      Size = 13
    end
    object FbqFabricantesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 45
    end
    object FbqFabricantesWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 100
    end
    object FbqFabricantesTEL_EXTENSION: TIntegerField
      FieldName = 'TEL_EXTENSION'
    end
    object FbqFabricantesFAX: TWideStringField
      FieldName = 'FAX'
      Size = 15
    end
    object FbqFabricantesRNC: TWideStringField
      FieldName = 'RNC'
    end
    object FbqFabricantesV_CELULAR: TWideStringField
      FieldName = 'V_CELULAR'
      Size = 15
    end
  end
  object FUfabricantes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MAN_PROVEDORES'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    InsertSQL.Strings = (
      'INSERT INTO MAN_PROVEDORES'
      
        '  (COD_PROV, NOMBRE_PRO, NOM_CONTACTO, DIRECCION, TELF1, TELF2, ' +
        'EMAIL, '
      '   WEBSITE, TEL_EXTENSION, FAX, RNC, V_CELULAR)'
      'VALUES'
      
        '  (:COD_PROV, :NOMBRE_PRO, :NOM_CONTACTO, :DIRECCION, :TELF1, :T' +
        'ELF2, :EMAIL, '
      '   :WEBSITE, :TEL_EXTENSION, :FAX, :RNC, :V_CELULAR)')
    ModifySQL.Strings = (
      'UPDATE MAN_PROVEDORES SET'
      '  COD_PROV = :COD_PROV,'
      '  NOMBRE_PRO = :NOMBRE_PRO,'
      '  NOM_CONTACTO = :NOM_CONTACTO,'
      '  DIRECCION = :DIRECCION,'
      '  TELF1 = :TELF1,'
      '  TELF2 = :TELF2,'
      '  EMAIL = :EMAIL,'
      '  WEBSITE = :WEBSITE,'
      '  TEL_EXTENSION = :TEL_EXTENSION,'
      '  FAX = :FAX,'
      '  RNC = :RNC,'
      '  V_CELULAR = :V_CELULAR'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    RefreshSQL.Strings = (
      'select * from fabricantes')
    UseSequenceFieldForRefreshSQL = False
    Left = 208
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CONTACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WEBSITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEL_EXTENSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'V_CELULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_PROV'
        ParamType = ptUnknown
      end>
  end
  object FbqMaster_Fact: TZQuery
    Connection = Data
    UpdateObject = FRMaster_Fact
    OnPostError = FbqMaster_FactPostError
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
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1000
    Top = 88
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
    object FbqMaster_FactPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FbqMaster_FactHORA: TTimeField
      FieldName = 'HORA'
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
    object FbqMaster_FactCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object FbqMaster_FactNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object FbqMaster_FactTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FbqMaster_FactTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object FbqMaster_FactCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object FbqMaster_FactPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
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
    object FbqMaster_FactBONOS: TFloatField
      FieldName = 'BONOS'
      currency = True
    end
    object FbqMaster_FactNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object FbqMaster_FactOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object FbqMaster_FactIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object FbqMaster_FactDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object FbqMaster_FactCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object FbqMaster_FactVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object FbqMaster_FactPAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
      currency = True
    end
    object FbqMaster_FactPAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
      currency = True
    end
    object FbqMaster_FactPAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
      currency = True
    end
    object FbqMaster_FactPAGOXBONO: TFloatField
      FieldName = 'PAGOXBONO'
      currency = True
    end
    object FbqMaster_FactDIR: TWideStringField
      FieldName = 'DIR'
      Size = 40
    end
    object FbqMaster_FactFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object FbqMaster_FactCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 40
    end
    object FbqMaster_FactNOMBRECLIENTE_PRN: TWideStringField
      DisplayWidth = 200
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object FbqMaster_FactFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object FbqMaster_FactIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object FbqMaster_FactCAJ: TWideStringField
      FieldName = 'CAJ'
      Size = 35
    end
    object FbqMaster_FactTECNICO: TWideStringField
      FieldName = 'TECNICO'
      Size = 35
    end
    object FbqMaster_FactIDESTACION: TIntegerField
      FieldName = 'IDESTACION'
    end
    object FbqMaster_FactSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object FbqMaster_FactESTACION: TWideStringField
      FieldName = 'ESTACION'
      Size = 30
    end
  end
  object FRMaster_Fact: TZUpdateSQL
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
      
        '   PAGOXEFECTIVO, PAGOXCHEQUE, PAGOXTARJETA, PAGOXBONO, IDESTACI' +
        'ON, ESTACION, '
      '   SUBTOTAL)'
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
      
        '   :IDRUTA, :CAJAID, :TCREDITO, :VEFECTIVA, :IDTECNICO, :PAGOXEF' +
        'ECTIVO, '
      
        '   :PAGOXCHEQUE, :PAGOXTARJETA, :PAGOXBONO, :IDESTACION, :ESTACI' +
        'ON, :SUBTOTAL)')
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
      '  PAGOXEFECTIVO = :PAGOXEFECTIVO,'
      '  PAGOXCHEQUE = :PAGOXCHEQUE,'
      '  PAGOXTARJETA = :PAGOXTARJETA,'
      '  PAGOXBONO = :PAGOXBONO,'
      '  IDESTACION = :IDESTACION,'
      '  ESTACION = :ESTACION,'
      '  SUBTOTAL = :SUBTOTAL'
      'WHERE'
      '  master_fact.NO_FACT = :OLD_NO_FACT')
    RefreshSQL.Strings = (
      'select * from master_fact')
    UseSequenceFieldForRefreshSQL = True
    Left = 880
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_fact'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_client'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'no_fact1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
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
        Name = 'condicion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'renta'
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
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacion'
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
        Name = 'nom_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descuento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rotulo'
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
        Name = 'terminal'
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
        Name = 'IDESTACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBTOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object ZUconfiguracion: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from configuracion')
    Params = <>
    Left = 744
    Top = 304
    object ZUconfiguracionCODIGO_COM: TWideStringField
      FieldName = 'CODIGO_COM'
      Size = 10
    end
    object ZUconfiguracionEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object ZUconfiguracionRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object ZUconfiguracionTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 13
    end
    object ZUconfiguracionFAX: TWideStringField
      FieldName = 'FAX'
      Size = 13
    end
    object ZUconfiguracionCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object ZUconfiguracionEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object ZUconfiguracionCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object ZUconfiguracionFACTIMPRIME: TWideStringField
      FieldName = 'FACTIMPRIME'
      Size = 15
    end
    object ZUconfiguracionGENERART: TWideStringField
      FieldName = 'GENERART'
      Size = 2
    end
    object ZUconfiguracionITBIS: TFloatField
      FieldName = 'ITBIS'
    end
    object ZUconfiguracionAVG_GANANCIA: TFloatField
      FieldName = 'AVG_GANANCIA'
    end
    object ZUconfiguracionCOBRAR_ITBS: TWideStringField
      FieldName = 'COBRAR_ITBS'
      Size = 1
    end
    object ZUconfiguracionTHEMS: TWideStringField
      FieldName = 'THEMS'
      Size = 30
    end
    object ZUconfiguracionANCHO: TIntegerField
      FieldName = 'ANCHO'
    end
    object ZUconfiguracionALTO: TIntegerField
      FieldName = 'ALTO'
    end
    object ZUconfiguracionRUTABACKUP: TWideStringField
      FieldName = 'RUTABACKUP'
      Size = 30
    end
    object ZUconfiguracionABRIRCAJON: TIntegerField
      FieldName = 'ABRIRCAJON'
    end
    object ZUconfiguracionPTINTERTPV: TWideStringField
      FieldName = 'PTINTERTPV'
      Size = 15
    end
    object ZUconfiguracionCARGO_CARD: TFloatField
      FieldName = 'CARGO_CARD'
    end
    object ZUconfiguracionCARGO_CHEQUE: TFloatField
      FieldName = 'CARGO_CHEQUE'
    end
    object ZUconfiguracionMSN_PIE_FACT: TWideStringField
      FieldName = 'MSN_PIE_FACT'
      Size = 30
    end
    object ZUconfiguracionIMP_CANT: TWideStringField
      FieldName = 'IMP_CANT'
      Size = 2
    end
    object ZUconfiguracionIMPRIMIRCREDITO: TWideStringField
      FieldName = 'IMPRIMIRCREDITO'
      Size = 10
    end
    object ZUconfiguracionIMPRIMIRCONTADO: TWideStringField
      FieldName = 'IMPRIMIRCONTADO'
      Size = 10
    end
    object ZUconfiguracionDESCUENTO: TWideStringField
      FieldName = 'DESCUENTO'
      Size = 10
    end
    object ZUconfiguracionTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object ZUconfiguracionTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 10
    end
    object ZUconfiguracionSTOPVENTAS: TFloatField
      FieldName = 'STOPVENTAS'
    end
    object ZUconfiguracionSTOPCOMPRAS: TFloatField
      FieldName = 'STOPCOMPRAS'
    end
    object ZUconfiguracionCONTROLSTOPVENTAS: TWideStringField
      FieldName = 'CONTROLSTOPVENTAS'
      Size = 2
    end
    object ZUconfiguracionCONTROLSTOPCOMPRAS: TWideStringField
      FieldName = 'CONTROLSTOPCOMPRAS'
      Size = 2
    end
    object ZUconfiguracionNCF_CF_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_CF_INICIO_NUMERO'
    end
    object ZUconfiguracionNCF_CF_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_CF_INICIO_LETRA'
      Size = 14
    end
    object ZUconfiguracionNCF_CF_CONTADOR: TIntegerField
      FieldName = 'NCF_CF_CONTADOR'
    end
    object ZUconfiguracionNCF_CF_FINAL_NUMERO: TFloatField
      FieldName = 'NCF_CF_FINAL_NUMERO'
    end
    object ZUconfiguracionNCF_VF_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_VF_INICIO_NUMERO'
    end
    object ZUconfiguracionNCF_VF_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_VF_INICIO_LETRA'
      Size = 14
    end
    object ZUconfiguracionNCF_VF_CONTADOR: TIntegerField
      FieldName = 'NCF_VF_CONTADOR'
    end
    object ZUconfiguracionNCF_VF_FINAL_NUMERO: TFloatField
      FieldName = 'NCF_VF_FINAL_NUMERO'
    end
    object ZUconfiguracionNCF_ESP_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_ESP_INICIO_NUMERO'
    end
    object ZUconfiguracionNCF_ESP_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_ESP_INICIO_LETRA'
      Size = 14
    end
    object ZUconfiguracionNCF_ESP_CONTADOR: TIntegerField
      FieldName = 'NCF_ESP_CONTADOR'
    end
    object ZUconfiguracionNCF_ESP_FINAL: TFloatField
      FieldName = 'NCF_ESP_FINAL'
    end
    object ZUconfiguracionNO_AUTORIZACION2: TFloatField
      FieldName = 'NO_AUTORIZACION2'
    end
    object ZUconfiguracionNO_AUTORIZACION3: TFloatField
      FieldName = 'NO_AUTORIZACION3'
    end
    object ZUconfiguracionNO_AUTORIZACION: TFloatField
      FieldName = 'NO_AUTORIZACION'
    end
    object ZUconfiguracionUSAR_CF: TWideStringField
      FieldName = 'USAR_CF'
      Size = 10
    end
    object ZUconfiguracionUSAR_VF: TWideStringField
      FieldName = 'USAR_VF'
      Size = 10
    end
    object ZUconfiguracionUSAR_ESP: TWideStringField
      FieldName = 'USAR_ESP'
      Size = 10
    end
    object ZUconfiguracionROTULO_FC: TWideStringField
      FieldName = 'ROTULO_FC'
      Size = 60
    end
    object ZUconfiguracionROTULO_FVF: TWideStringField
      FieldName = 'ROTULO_FVF'
      Size = 60
    end
    object ZUconfiguracionROTULO_ESP: TWideStringField
      FieldName = 'ROTULO_ESP'
      Size = 60
    end
    object ZUconfiguracionVARIABLE_DEDUCIBLE: TFloatField
      FieldName = 'VARIABLE_DEDUCIBLE'
    end
    object ZUconfiguracionLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object ZUconfiguracionCLAVEANULAR: TWideStringField
      FieldName = 'CLAVEANULAR'
      Size = 10
    end
    object ZUconfiguracionTERMINAL_TPV: TWideStringField
      FieldName = 'TERMINAL_TPV'
      Size = 10
    end
    object ZUconfiguracionMONTOCF: TFloatField
      FieldName = 'MONTOCF'
    end
    object ZUconfiguracionREDONDEAR: TWideStringField
      FieldName = 'REDONDEAR'
      Size = 2
    end
    object ZUconfiguracionCOMISIONVENTA: TFloatField
      FieldName = 'COMISIONVENTA'
    end
    object ZUconfiguracionCONFID: TIntegerField
      FieldName = 'CONFID'
      Required = True
    end
    object ZUconfiguracionLOGO_FRONTAR: TBlobField
      FieldName = 'LOGO_FRONTAR'
    end
    object ZUconfiguracionLOGOF_TXT: TWideStringField
      FieldName = 'LOGOF_TXT'
      Size = 3
    end
    object ZUconfiguracionLOGOP_TXT: TWideStringField
      FieldName = 'LOGOP_TXT'
      Size = 3
    end
    object ZUconfiguracionINSERTARSERIAL: TIntegerField
      FieldName = 'INSERTARSERIAL'
    end
    object ZUconfiguracionDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 102
    end
    object ZUconfiguracionITBIS_D: TFloatField
      FieldName = 'ITBIS_D'
      ReadOnly = True
    end
    object ZUconfiguracionENLACEAWEB: TIntegerField
      FieldName = 'ENLACEAWEB'
    end
    object ZUconfiguracionPISTOLAOPTICA: TIntegerField
      FieldName = 'PISTOLAOPTICA'
    end
    object ZUconfiguracionTIPO_FACTURACION: TIntegerField
      FieldName = 'TIPO_FACTURACION'
    end
    object ZUconfiguracionEXISTENCIAFACT: TIntegerField
      FieldName = 'EXISTENCIAFACT'
    end
    object ZUconfiguracionRUTADB: TWideStringField
      FieldName = 'RUTADB'
      Size = 12
    end
    object ZUconfiguracionCANT_CAJA: TIntegerField
      FieldName = 'CANT_CAJA'
    end
    object ZUconfiguracionTAZA: TFloatField
      FieldName = 'TAZA'
    end
    object ZUconfiguracionMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 10
    end
    object ZUconfiguracionAPLICAR_AUMENTO_TAZA: TWideStringField
      FieldName = 'APLICAR_AUMENTO_TAZA'
      Size = 2
    end
    object ZUconfiguracionANCHO_IMG_FRONTAL: TIntegerField
      FieldName = 'ANCHO_IMG_FRONTAL'
      ReadOnly = True
    end
    object ZUconfiguracionALTO_IMG_FRONTAL: TIntegerField
      FieldName = 'ALTO_IMG_FRONTAL'
      ReadOnly = True
    end
    object ZUconfiguracionLEFT_IMAGEN: TIntegerField
      FieldName = 'LEFT_IMAGEN'
      ReadOnly = True
    end
    object ZUconfiguracionRIGHT_IMAGEN: TIntegerField
      FieldName = 'RIGHT_IMAGEN'
      ReadOnly = True
    end
    object ZUconfiguracionREDONDEOCOMPLETO: TIntegerField
      FieldName = 'REDONDEOCOMPLETO'
    end
    object ZUconfiguracionCOMPROBANTEDEFAULT: TWideStringField
      FieldName = 'COMPROBANTEDEFAULT'
      Size = 15
    end
    object ZUconfiguracionUSOAPLICACION: TWideStringField
      FieldName = 'USOAPLICACION'
      ReadOnly = True
      Size = 10
    end
    object ZUconfiguracionARTICULOSVARIOS: TWideStringField
      FieldName = 'ARTICULOSVARIOS'
      Size = 30
    end
    object ZUconfiguracionMENSAJE_PIE1: TWideMemoField
      FieldName = 'MENSAJE_PIE1'
      BlobType = ftWideMemo
    end
    object ZUconfiguracionMENSAJE_PIE2: TWideMemoField
      FieldName = 'MENSAJE_PIE2'
      BlobType = ftWideMemo
    end
    object ZUconfiguracionIMPRESION_RAPIDA: TWideStringField
      FieldName = 'IMPRESION_RAPIDA'
      Size = 10
    end
    object ZUconfiguracionIMPRESIONDEFECTO: TWideStringField
      FieldName = 'IMPRESIONDEFECTO'
    end
    object ZUconfiguracionTEXINICIAR: TWideStringField
      FieldName = 'TEXINICIAR'
      Size = 30
    end
    object ZUconfiguracionLONGTICKET: TIntegerField
      FieldName = 'LONGTICKET'
    end
    object ZUconfiguracionIMPRIMEOPCIONAL: TWideStringField
      FieldName = 'IMPRIMEOPCIONAL'
      Size = 2
    end
    object ZUconfiguracionENTRAREFECTIVOINICIAL: TWideStringField
      FieldName = 'ENTRAREFECTIVOINICIAL'
      Size = 2
    end
    object ZUconfiguracionCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object ZUconfiguracionUSARCASHDRAWER: TWideStringField
      FieldName = 'USARCASHDRAWER'
      Size = 2
    end
    object ZUconfiguracionITBS_DEDUCIBLE: TFloatField
      FieldName = 'ITBS_DEDUCIBLE'
    end
    object ZUconfiguracionIMPRIMECOTIZA: TWideStringField
      FieldName = 'IMPRIMECOTIZA'
      Size = 10
    end
    object ZUconfiguracionUSARRMA: TIntegerField
      FieldName = 'USARRMA'
    end
    object ZUconfiguracionALMACENRMA: TIntegerField
      FieldName = 'ALMACENRMA'
    end
    object ZUconfiguracionALMACENNOMBRE: TWideStringField
      FieldName = 'ALMACENNOMBRE'
      Size = 15
    end
    object ZUconfiguracionHABILITARMORA: TWideStringField
      FieldName = 'HABILITARMORA'
      Size = 2
    end
    object ZUconfiguracionTIPOINVENTARIO: TWideStringField
      FieldName = 'TIPOINVENTARIO'
      Size = 15
    end
    object ZUconfiguracionACTIVARSOLIDARIDAD: TWideStringField
      FieldName = 'ACTIVARSOLIDARIDAD'
      ReadOnly = True
      Size = 2
    end
    object ZUconfiguracionDSBDIASVENTAS: TIntegerField
      FieldName = 'DSBDIASVENTAS'
    end
    object ZUconfiguracionPERMISOSALIR: TWideStringField
      FieldName = 'PERMISOSALIR'
      Size = 2
    end
    object ZUconfiguracionARTICULOREPETIDO: TWideStringField
      FieldName = 'ARTICULOREPETIDO'
      Size = 2
    end
    object ZUconfiguracionEMUSUARIO: TWideStringField
      FieldName = 'EMUSUARIO'
      Size = 50
    end
    object ZUconfiguracionEMCONTRASENA: TWideStringField
      FieldName = 'EMCONTRASENA'
      Size = 50
    end
    object ZUconfiguracionEMASUNTO: TWideStringField
      FieldName = 'EMASUNTO'
      Size = 50
    end
    object ZUconfiguracionEMDESTINATARIOS: TWideStringField
      FieldName = 'EMDESTINATARIOS'
      Size = 100
    end
    object ZUconfiguracionEMADJUNTO: TWideStringField
      FieldName = 'EMADJUNTO'
      Size = 75
    end
    object ZUconfiguracionENVIAREMAILCUADRE: TWideStringField
      FieldName = 'ENVIAREMAILCUADRE'
      ReadOnly = True
      Size = 2
    end
    object ZUconfiguracionCALLE: TWideStringField
      FieldName = 'CALLE'
      Size = 30
    end
    object ZUconfiguracionSECTOR: TWideStringField
      FieldName = 'SECTOR'
      Size = 30
    end
    object ZUconfiguracionCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      Size = 30
    end
    object ZUconfiguracionTIMPRESIONPRE: TIntegerField
      FieldName = 'TIMPRESIONPRE'
    end
    object ZUconfiguracionVERSION: TIntegerField
      FieldName = 'VERSION'
    end
    object ZUconfiguracionCONTROLCONTADOR: TWideStringField
      FieldName = 'CONTROLCONTADOR'
      Size = 2
    end
    object ZUconfiguracionCONTROLCONTADORTOTAL: TIntegerField
      FieldName = 'CONTROLCONTADORTOTAL'
    end
    object ZUconfiguracionCLAVEAUTORIZACION: TWideStringField
      FieldName = 'CLAVEAUTORIZACION'
      Size = 200
    end
    object ZUconfiguracionLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object ZUconfiguracionTIPOSALIDALOTE: TWideStringField
      FieldName = 'TIPOSALIDALOTE'
      Size = 2
    end
    object ZUconfiguracionTIPOPRECIO: TWideStringField
      FieldName = 'TIPOPRECIO'
      Size = 15
    end
  end
  object DsMaster_Fact: TDataSource
    DataSet = FbqMaster_Fact
    Left = 944
    Top = 80
  end
  object Zdetalle: TZQuery
    Connection = Data
    UpdateObject = ZUd
    SQL.Strings = (
      
        'select a.*, b.articulo, c.unidad, b.itbis, b.taza_compra from de' +
        'tailfact a'
      'left join mtartuculos b On  a.articuloid =  b.cod_art'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'order by NO_FACT asc')
    Params = <>
    DataSource = DsMaster_Fact
    MasterFields = 'NO_FACT'
    MasterSource = DsMaster_Fact
    LinkedFields = 'MASTERID'
    Left = 744
    Top = 112
    object ZdetalleNO_FACT: TIntegerField
      DisplayLabel = 'N'
      DisplayWidth = 2
      FieldName = 'NO_FACT'
    end
    object ZdetalleARTICULO: TWideStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 25
      FieldName = 'ARTICULO'
      Size = 45
    end
    object ZdetalleCANTIDAD: TFloatField
      DisplayLabel = 'Cant'
      DisplayWidth = 3
      FieldName = 'CANTIDAD'
      DisplayFormat = '#,##0.00'
    end
    object ZdetallePRECIO: TFloatField
      DisplayLabel = 'Precio'
      DisplayWidth = 10
      FieldName = 'PRECIO'
      DisplayFormat = '$#,0.00;-$#,0.00'
      currency = True
    end
    object ZdetalleNO_FACT1: TWideStringField
      DisplayWidth = 12
      FieldName = 'NO_FACT1'
      Visible = False
      Size = 12
    end
    object ZdetalleMASTERID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MASTERID'
      Visible = False
    end
    object ZdetalleIMPUESTO: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPUESTO'
      Visible = False
      currency = True
    end
    object ZdetalleITBS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITBS'
      Visible = False
      currency = True
    end
    object ZdetalleITBIS2: TFloatField
      DisplayWidth = 10
      FieldName = 'ITBIS2'
      Visible = False
    end
    object ZdetalleCOD_ART: TWideStringField
      DisplayWidth = 15
      FieldName = 'COD_ART'
      Visible = False
      Size = 15
    end
    object ZdetalleCOMBO: TWideStringField
      DisplayWidth = 10
      FieldName = 'COMBO'
      Visible = False
      Size = 10
    end
    object ZdetalleARTICULOID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ARTICULOID'
      Visible = False
    end
    object ZdetalleTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Visible = False
      DisplayFormat = '$#,0.00;-$#,0.00'
      currency = True
    end
    object ZdetalleANCHO: TFloatField
      DisplayWidth = 10
      FieldName = 'ANCHO'
      Visible = False
    end
    object ZdetalleALTO: TFloatField
      DisplayWidth = 10
      FieldName = 'ALTO'
      Visible = False
    end
    object ZdetalleUNIDADID: TIntegerField
      DisplayWidth = 10
      FieldName = 'UNIDADID'
      Visible = False
    end
    object ZdetalleITBS_ART: TWideStringField
      DisplayWidth = 1
      FieldName = 'ITBS_ART'
      Visible = False
      Size = 1
    end
    object ZdetalleUNIDAD: TWideStringField
      DisplayWidth = 10
      FieldName = 'UNIDAD'
      Visible = False
      Size = 10
    end
    object ZdetalleEX: TWideStringField
      DisplayWidth = 1
      FieldName = 'EX'
      Visible = False
      Size = 1
    end
    object ZdetalleIDALMACEN: TIntegerField
      FieldName = 'IDALMACEN'
    end
    object ZdetalleBARRA: TWideStringField
      FieldName = 'BARRA'
    end
    object ZdetalleITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object ZdetalleIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object ZdetalleTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 400
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
    object ZdetalleFRACCION: TWideStringField
      FieldName = 'FRACCION'
      Size = 100
    end
    object ZdetalleTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object ZdetalleITB3: TFloatField
      FieldName = 'ITB3'
      currency = True
    end
    object ZdetalleLIN: TIntegerField
      FieldName = 'LIN'
    end
    object ZdetalleUNID: TWideStringField
      FieldName = 'UNID'
      Size = 10
    end
    object ZdetallePORCENTDESC: TFloatField
      FieldName = 'PORCENTDESC'
    end
    object ZdetalleDESC: TFloatField
      FieldName = 'DESC'
      currency = True
    end
    object ZdetalleIBSAPLICADO: TFloatField
      FieldName = 'IBSAPLICADO'
    end
    object ZdetallePORCDESCUENTO: TFloatField
      FieldName = 'PORCDESCUENTO'
    end
  end
  object QueryUpdate: TZQuery
    Connection = Data
    Params = <>
    Left = 400
    Top = 64
  end
  object QCAJA: TZIBEventAlerter
    AutoRegister = False
    Registered = False
    Left = 512
    Top = 184
  end
  object ZEmpleados: TZQuery
    Connection = Data
    UpdateObject = Zupdate_empleado
    SQL.Strings = (
      'select * from mtempleado')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 448
    Top = 160
    object ZEmpleadosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object ZEmpleadosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZEmpleadosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object ZEmpleadosCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object ZEmpleadosTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object ZEmpleadosCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object ZEmpleadosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object ZEmpleadosLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object ZEmpleadosPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object ZEmpleadosMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object ZEmpleadosELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object ZEmpleadosIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object ZEmpleadosCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object ZEmpleadosMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object ZEmpleadosMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object ZEmpleadosIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object ZEmpleadosIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object ZEmpleadosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
    end
    object ZEmpleadosINICIO: TDateField
      FieldName = 'INICIO'
    end
    object ZEmpleadosSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object ZEmpleadosCOD: TIntegerField
      FieldName = 'COD'
    end
    object ZEmpleadosCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object ZEmpleadosFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
    object ZEmpleadosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZEmpleadosESTADOS: TIntegerField
      FieldName = 'ESTADOS'
      LookupDataSet = FbCategorias
    end
    object ZEmpleadosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZEmpleadosDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
  end
  object Zupdate_empleado: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM mtempleado'
      'WHERE'
      
        '  ((mtempleado.COD_EMP IS NULL AND :OLD_COD_EMP IS NULL) OR (mte' +
        'mpleado.COD_EMP = :OLD_COD_EMP))')
    InsertSQL.Strings = (
      'INSERT INTO mtempleado'
      
        '  (COD_EMP, NOMBRES_EMP, DIRECCION, CEDULA, TELEFONO, CELULAR, T' +
        'IPO, LOGIN, '
      
        '   PIN, MODIFICAR_ARTICULOS, ELIMINAR, IMPRIMIR, CONTABILIDAD, M' +
        'ODIFICAR_FACTURAS, '
      
        '   MODIFICAR_UTILIDAD, IMPRIMIR_CUADRE, IMPRIMIR_FINACIERO, COD_' +
        'EMP1, INICIO, '
      
        '   SUELDO, COD, CARGO, FECHA_ING, ESTADOS, TIENDAID, IMAGEN, DES' +
        'CUENTO)'
      'VALUES'
      
        '  (:COD_EMP, :NOMBRES_EMP, :DIRECCION, :CEDULA, :TELEFONO, :CELU' +
        'LAR, :TIPO, '
      
        '   :LOGIN, :PIN, :MODIFICAR_ARTICULOS, :ELIMINAR, :IMPRIMIR, :CO' +
        'NTABILIDAD, '
      
        '   :MODIFICAR_FACTURAS, :MODIFICAR_UTILIDAD, :IMPRIMIR_CUADRE, :' +
        'IMPRIMIR_FINACIERO, '
      
        '   :COD_EMP1, :INICIO, :SUELDO, :COD, :CARGO, :FECHA_ING, :ESTAD' +
        'OS, :TIENDAID, '
      '   :IMAGEN, :DESCUENTO)')
    ModifySQL.Strings = (
      'UPDATE mtempleado SET'
      '  COD_EMP = :COD_EMP,'
      '  NOMBRES_EMP = :NOMBRES_EMP,'
      '  DIRECCION = :DIRECCION,'
      '  CEDULA = :CEDULA,'
      '  TELEFONO = :TELEFONO,'
      '  CELULAR = :CELULAR,'
      '  TIPO = :TIPO,'
      '  LOGIN = :LOGIN,'
      '  PIN = :PIN,'
      '  MODIFICAR_ARTICULOS = :MODIFICAR_ARTICULOS,'
      '  ELIMINAR = :ELIMINAR,'
      '  IMPRIMIR = :IMPRIMIR,'
      '  CONTABILIDAD = :CONTABILIDAD,'
      '  MODIFICAR_FACTURAS = :MODIFICAR_FACTURAS,'
      '  MODIFICAR_UTILIDAD = :MODIFICAR_UTILIDAD,'
      '  IMPRIMIR_CUADRE = :IMPRIMIR_CUADRE,'
      '  IMPRIMIR_FINACIERO = :IMPRIMIR_FINACIERO,'
      '  COD_EMP1 = :COD_EMP1,'
      '  INICIO = :INICIO,'
      '  SUELDO = :SUELDO,'
      '  COD = :COD,'
      '  CARGO = :CARGO,'
      '  FECHA_ING = :FECHA_ING,'
      '  ESTADOS = :ESTADOS,'
      '  TIENDAID = :TIENDAID,'
      '  IMAGEN = :IMAGEN,'
      '  DESCUENTO = :DESCUENTO'
      'WHERE'
      
        '  ((mtempleado.COD_EMP IS NULL AND :OLD_COD_EMP IS NULL) OR (mte' +
        'mpleado.COD_EMP = :OLD_COD_EMP))')
    RefreshSQL.Strings = (
      'select * from mtempleado')
    UseSequenceFieldForRefreshSQL = False
    Left = 528
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRES_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEDULA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODIFICAR_ARTICULOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ELIMINAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMIR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTABILIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODIFICAR_FACTURAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODIFICAR_UTILIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMIR_CUADRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMIR_FINACIERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_EMP1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUELDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_ING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_EMP'
        ParamType = ptUnknown
      end>
  end
  object DsEmpleados: TDataSource
    DataSet = ZEmpleados
    Left = 168
    Top = 288
  end
  object ZUCategoria: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MTCATEGORIA'
      'WHERE'
      '  MTCATEGORIA.CODCAT = :OLD_CODCAT')
    InsertSQL.Strings = (
      'INSERT INTO MTCATEGORIA'
      '  (CODCAT, CAT, IMAGEN, EXTFOTO, OPCION)'
      'VALUES'
      '  (:CODCAT, :CAT, :IMAGEN, :EXTFOTO, :OPCION)')
    ModifySQL.Strings = (
      'UPDATE MTCATEGORIA SET'
      '  CODCAT = :CODCAT,'
      '  CAT = :CAT,'
      '  IMAGEN = :IMAGEN,'
      '  EXTFOTO = :EXTFOTO,'
      '  OPCION = :OPCION'
      'WHERE'
      '  MTCATEGORIA.CODCAT = :OLD_CODCAT')
    RefreshSQL.Strings = (
      'select * from MTCATEGORIA')
    UseSequenceFieldForRefreshSQL = False
    Left = 784
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXTFOTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODCAT'
        ParamType = ptUnknown
      end>
  end
  object FbCategorias: TZQuery
    Connection = Data
    UpdateObject = ZUCategoria
    SQL.Strings = (
      'select * from MTCATEGORIA')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 744
    Top = 24
    object FbCategoriasCODCAT: TIntegerField
      FieldName = 'CODCAT'
      Required = True
    end
    object FbCategoriasIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object FbCategoriasEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      ReadOnly = True
      Size = 5
    end
    object FbCategoriasOPCION: TWideStringField
      FieldName = 'OPCION'
      Size = 2
    end
    object FbCategoriasCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
  end
  object Zrecibo_pago: TZQuery
    Connection = Data
    UpdateObject = Zup_recibo_pago
    SQL.Strings = (
      'select A.*, b.nombres Nombre_Cliente from recibo_pago A'
      'left join cliente b On a.clienteid = b.codigo')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 48
    Top = 272
    object Zrecibo_pagoNO_RECIBO1: TIntegerField
      FieldName = 'NO_RECIBO1'
    end
    object Zrecibo_pagoNO_RECIBO: TWideStringField
      FieldName = 'NO_RECIBO'
      Size = 10
    end
    object Zrecibo_pagoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object Zrecibo_pagoCOD_CLIENTE: TWideStringField
      FieldName = 'COD_CLIENTE'
      Size = 10
    end
    object Zrecibo_pagoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object Zrecibo_pagoMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object Zrecibo_pagoLETRAS1: TWideStringField
      FieldName = 'LETRAS1'
      Size = 100
    end
    object Zrecibo_pagoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 12
    end
    object Zrecibo_pagoDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 152
    end
    object Zrecibo_pagoCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object Zrecibo_pagoUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object Zrecibo_pagoNOMBRE_CLIENTE: TWideStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 40
    end
    object Zrecibo_pagoIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
  end
  object Zup_recibo_pago: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM recibo_pago'
      'WHERE'
      '  recibo_pago.NO_RECIBO1 = :OLD_NO_RECIBO1')
    InsertSQL.Strings = (
      'INSERT INTO recibo_pago'
      
        '  (NO_RECIBO1, NO_RECIBO, FECHA, COD_CLIENTE, CLIENTE, DESCRIPCI' +
        'ON, MONTO, '
      
        '   LETRAS1, TIPO, CLIENTEID, USUARIOID, CAPITAL, INTERES, IDTURN' +
        'O)'
      'VALUES'
      
        '  (:NO_RECIBO1, :NO_RECIBO, :FECHA, :COD_CLIENTE, :CLIENTE, :DES' +
        'CRIPCION, '
      
        '   :MONTO, :LETRAS1, :TIPO, :CLIENTEID, :USUARIOID, :CAPITAL, :I' +
        'NTERES, '
      '   :IDTURNO)')
    ModifySQL.Strings = (
      'UPDATE recibo_pago SET'
      '  NO_RECIBO1 = :NO_RECIBO1,'
      '  NO_RECIBO = :NO_RECIBO,'
      '  FECHA = :FECHA,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  CLIENTE = :CLIENTE,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  MONTO = :MONTO,'
      '  LETRAS1 = :LETRAS1,'
      '  TIPO = :TIPO,'
      '  CLIENTEID = :CLIENTEID,'
      '  USUARIOID = :USUARIOID,'
      '  CAPITAL = :CAPITAL,'
      '  INTERES = :INTERES,'
      '  IDTURNO = :IDTURNO'
      'WHERE'
      '  recibo_pago.NO_RECIBO1 = :OLD_NO_RECIBO1')
    RefreshSQL.Strings = (
      'select * from recibo_pago')
    UseSequenceFieldForRefreshSQL = False
    Left = 88
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_recibo1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'no_recibo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descripcion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'monto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'letras1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAPITAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_no_recibo1'
        ParamType = ptUnknown
      end>
  end
  object DsZup_recibo_pago: TDataSource
    DataSet = Zrecibo_pago
    Left = 136
    Top = 280
  end
  object ZuManArti: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM mtartuculos'
      'WHERE'
      '  mtartuculos.COD_ART = :OLD_COD_ART')
    InsertSQL.Strings = (
      'INSERT INTO mtartuculos'
      
        '  (COD_ART, CODIGOTXT, ARTICULO, MODELO, MARCA, COLOR, COD_CAT, ' +
        'COD_SERIE, '
      
        '   COD_ALM, COSTO, COD_PROV1, EXISTENCIA1, ITBIS, ABREVIADO, COD' +
        '_BARRA, '
      
        '   COD_UV, USUARIOMOD, FECHA_MOD, POLITICA, COSTO_PR, IMAGEN, CL' +
        'A_COSTO, '
      
        '   CLA_PRECIO, PRECIO_A, PRECIO_B, PRECIO_D, ESTADO, EXTFOTO, DE' +
        'SCRIPCIONWEB, '
      
        '   PUBLICARWEB, CODIGOBARRA, EMPAQUE, CANT_EMPA, COD_PROV2, COD_' +
        'PROV3, '
      
        '   REFERENCIA, OPCION_SABOR, STOCK_MA, STOCK_M, FACTOR, TIPO_PRO' +
        'DUCTOS, '
      
        '   FACTURABLE, STOCK, OPCIONES_BOLA, PARTICIONADO, COMPUESTO, BE' +
        'NEFICIOS, '
      
        '   MONEDA, UNIDAD, TAZA_COMPRA, FECHA_COMPRA, INTERES_ACUMULADO,' +
        ' ALMACEN, '
      
        '   PERCIO_COPA, COMISION, ARTICULOS_OMO, CODIGOUNICO, EMPRESA, C' +
        'ONDICION, '
      
        '   UTILIDAD2, UTILIDAD3, PRECIO_BRUTO1, PRECIO_BRUTO2, PRECIO_BR' +
        'UTO3, MAYOREO1, '
      
        '   MAYOREO2, MAYOREO3, DESCRIPCION, COSTOPROMENO, TIENECOMPACTIB' +
        'ILIDAD, '
      
        '   COMPACTIBLECON, UBICACION, OBS, TIPOB, ESTADOCONDICION, IDMON' +
        'EDA, COSTO_DOLLARS, '
      
        '   CODEQUIVALENCIA, DESC_EQUIVALENCIA, CANTEQUIVALENCA, PRE1, PR' +
        'E2, PRE3, '
      
        '   COSP, COST, PRECIO_C, UTILIDAD4, MAYOREO4, PRECIO_BRUTO4, UTI' +
        'LIDADSOBREITBS, '
      
        '   APLICARPORMAYOR, NOMBREABREVIADO, PRESENTACION, CAPACIDAD, MO' +
        'DIUSO, '
      
        '   IDMARCA, DESCPERMITIDO, SUBCATEGORIA, SUSTANCIA, CLASIFICACIO' +
        'N, INDICACION, '
      
        '   UNIDADVENTA, UNIDADCOMPRA, SERIE, LOTE, PERMITIRDESC, IDIMPUE' +
        'STO)'
      'VALUES'
      
        '  (:COD_ART, :CODIGOTXT, :ARTICULO, :MODELO, :MARCA, :COLOR, :CO' +
        'D_CAT, '
      
        '   :COD_SERIE, :COD_ALM, :COSTO, :COD_PROV1, :EXISTENCIA1, :ITBI' +
        'S, :ABREVIADO, '
      
        '   :COD_BARRA, :COD_UV, :USUARIOMOD, :FECHA_MOD, :POLITICA, :COS' +
        'TO_PR, '
      
        '   :IMAGEN, :CLA_COSTO, :CLA_PRECIO, :PRECIO_A, :PRECIO_B, :PREC' +
        'IO_D, :ESTADO, '
      
        '   :EXTFOTO, :DESCRIPCIONWEB, :PUBLICARWEB, :CODIGOBARRA, :EMPAQ' +
        'UE, :CANT_EMPA, '
      
        '   :COD_PROV2, :COD_PROV3, :REFERENCIA, :OPCION_SABOR, :STOCK_MA' +
        ', :STOCK_M, '
      
        '   :FACTOR, :TIPO_PRODUCTOS, :FACTURABLE, :STOCK, :OPCIONES_BOLA' +
        ', :PARTICIONADO, '
      
        '   :COMPUESTO, :BENEFICIOS, :MONEDA, :UNIDAD, :TAZA_COMPRA, :FEC' +
        'HA_COMPRA, '
      
        '   :INTERES_ACUMULADO, :ALMACEN, :PERCIO_COPA, :COMISION, :ARTIC' +
        'ULOS_OMO, '
      
        '   :CODIGOUNICO, :EMPRESA, :CONDICION, :UTILIDAD2, :UTILIDAD3, :' +
        'PRECIO_BRUTO1, '
      
        '   :PRECIO_BRUTO2, :PRECIO_BRUTO3, :MAYOREO1, :MAYOREO2, :MAYORE' +
        'O3, :DESCRIPCION, '
      
        '   :COSTOPROMENO, :TIENECOMPACTIBILIDAD, :COMPACTIBLECON, :UBICA' +
        'CION, :OBS, '
      
        '   :TIPOB, :ESTADOCONDICION, :IDMONEDA, :COSTO_DOLLARS, :CODEQUI' +
        'VALENCIA, '
      
        '   :DESC_EQUIVALENCIA, :CANTEQUIVALENCA, :PRE1, :PRE2, :PRE3, :C' +
        'OSP, :COST, '
      
        '   :PRECIO_C, :UTILIDAD4, :MAYOREO4, :PRECIO_BRUTO4, :UTILIDADSO' +
        'BREITBS, '
      
        '   :APLICARPORMAYOR, :NOMBREABREVIADO, :PRESENTACION, :CAPACIDAD' +
        ', :MODIUSO, '
      
        '   :IDMARCA, :DESCPERMITIDO, :SUBCATEGORIA, :SUSTANCIA, :CLASIFI' +
        'CACION, '
      
        '   :INDICACION, :UNIDADVENTA, :UNIDADCOMPRA, :SERIE, :LOTE, :PER' +
        'MITIRDESC, '
      '   :IDIMPUESTO)')
    ModifySQL.Strings = (
      'UPDATE mtartuculos SET'
      '  COD_ART = :COD_ART,'
      '  CODIGOTXT = :CODIGOTXT,'
      '  ARTICULO = :ARTICULO,'
      '  MODELO = :MODELO,'
      '  MARCA = :MARCA,'
      '  COLOR = :COLOR,'
      '  COD_CAT = :COD_CAT,'
      '  COD_SERIE = :COD_SERIE,'
      '  COD_ALM = :COD_ALM,'
      '  COSTO = :COSTO,'
      '  COD_PROV1 = :COD_PROV1,'
      '  EXISTENCIA1 = :EXISTENCIA1,'
      '  ITBIS = :ITBIS,'
      '  ABREVIADO = :ABREVIADO,'
      '  COD_BARRA = :COD_BARRA,'
      '  COD_UV = :COD_UV,'
      '  USUARIOMOD = :USUARIOMOD,'
      '  FECHA_MOD = :FECHA_MOD,'
      '  POLITICA = :POLITICA,'
      '  COSTO_PR = :COSTO_PR,'
      '  IMAGEN = :IMAGEN,'
      '  CLA_COSTO = :CLA_COSTO,'
      '  CLA_PRECIO = :CLA_PRECIO,'
      '  PRECIO_A = :PRECIO_A,'
      '  PRECIO_B = :PRECIO_B,'
      '  PRECIO_D = :PRECIO_D,'
      '  ESTADO = :ESTADO,'
      '  EXTFOTO = :EXTFOTO,'
      '  DESCRIPCIONWEB = :DESCRIPCIONWEB,'
      '  PUBLICARWEB = :PUBLICARWEB,'
      '  CODIGOBARRA = :CODIGOBARRA,'
      '  EMPAQUE = :EMPAQUE,'
      '  CANT_EMPA = :CANT_EMPA,'
      '  COD_PROV2 = :COD_PROV2,'
      '  COD_PROV3 = :COD_PROV3,'
      '  REFERENCIA = :REFERENCIA,'
      '  OPCION_SABOR = :OPCION_SABOR,'
      '  STOCK_MA = :STOCK_MA,'
      '  STOCK_M = :STOCK_M,'
      '  FACTOR = :FACTOR,'
      '  TIPO_PRODUCTOS = :TIPO_PRODUCTOS,'
      '  FACTURABLE = :FACTURABLE,'
      '  STOCK = :STOCK,'
      '  OPCIONES_BOLA = :OPCIONES_BOLA,'
      '  PARTICIONADO = :PARTICIONADO,'
      '  COMPUESTO = :COMPUESTO,'
      '  BENEFICIOS = :BENEFICIOS,'
      '  MONEDA = :MONEDA,'
      '  UNIDAD = :UNIDAD,'
      '  TAZA_COMPRA = :TAZA_COMPRA,'
      '  FECHA_COMPRA = :FECHA_COMPRA,'
      '  INTERES_ACUMULADO = :INTERES_ACUMULADO,'
      '  ALMACEN = :ALMACEN,'
      '  PERCIO_COPA = :PERCIO_COPA,'
      '  COMISION = :COMISION,'
      '  ARTICULOS_OMO = :ARTICULOS_OMO,'
      '  CODIGOUNICO = :CODIGOUNICO,'
      '  EMPRESA = :EMPRESA,'
      '  CONDICION = :CONDICION,'
      '  UTILIDAD2 = :UTILIDAD2,'
      '  UTILIDAD3 = :UTILIDAD3,'
      '  PRECIO_BRUTO1 = :PRECIO_BRUTO1,'
      '  PRECIO_BRUTO2 = :PRECIO_BRUTO2,'
      '  PRECIO_BRUTO3 = :PRECIO_BRUTO3,'
      '  MAYOREO1 = :MAYOREO1,'
      '  MAYOREO2 = :MAYOREO2,'
      '  MAYOREO3 = :MAYOREO3,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  COSTOPROMENO = :COSTOPROMENO,'
      '  TIENECOMPACTIBILIDAD = :TIENECOMPACTIBILIDAD,'
      '  COMPACTIBLECON = :COMPACTIBLECON,'
      '  UBICACION = :UBICACION,'
      '  OBS = :OBS,'
      '  TIPOB = :TIPOB,'
      '  ESTADOCONDICION = :ESTADOCONDICION,'
      '  IDMONEDA = :IDMONEDA,'
      '  COSTO_DOLLARS = :COSTO_DOLLARS,'
      '  CODEQUIVALENCIA = :CODEQUIVALENCIA,'
      '  DESC_EQUIVALENCIA = :DESC_EQUIVALENCIA,'
      '  CANTEQUIVALENCA = :CANTEQUIVALENCA,'
      '  PRE1 = :PRE1,'
      '  PRE2 = :PRE2,'
      '  PRE3 = :PRE3,'
      '  COSP = :COSP,'
      '  COST = :COST,'
      '  PRECIO_C = :PRECIO_C,'
      '  UTILIDAD4 = :UTILIDAD4,'
      '  MAYOREO4 = :MAYOREO4,'
      '  PRECIO_BRUTO4 = :PRECIO_BRUTO4,'
      '  UTILIDADSOBREITBS = :UTILIDADSOBREITBS,'
      '  APLICARPORMAYOR = :APLICARPORMAYOR,'
      '  NOMBREABREVIADO = :NOMBREABREVIADO,'
      '  PRESENTACION = :PRESENTACION,'
      '  CAPACIDAD = :CAPACIDAD,'
      '  MODIUSO = :MODIUSO,'
      '  IDMARCA = :IDMARCA,'
      '  DESCPERMITIDO = :DESCPERMITIDO,'
      '  SUBCATEGORIA = :SUBCATEGORIA,'
      '  SUSTANCIA = :SUSTANCIA,'
      '  CLASIFICACION = :CLASIFICACION,'
      '  INDICACION = :INDICACION,'
      '  UNIDADVENTA = :UNIDADVENTA,'
      '  UNIDADCOMPRA = :UNIDADCOMPRA,'
      '  SERIE = :SERIE,'
      '  LOTE = :LOTE,'
      '  PERMITIRDESC = :PERMITIRDESC,'
      '  IDIMPUESTO = :IDIMPUESTO'
      'WHERE'
      '  mtartuculos.COD_ART = :OLD_COD_ART')
    RefreshSQL.Strings = (
      'select * from MTARTUCULOS')
    UseSequenceFieldForRefreshSQL = False
    Left = 640
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOTXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_UV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOMOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_MOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POLITICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_A'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_B'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXTFOTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCIONWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PUBLICARWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOBARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPAQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_EMPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION_SABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PRODUCTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTURABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCIONES_BOLA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARTICIONADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEFICIOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_ACUMULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCIO_COPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMISION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOS_OMO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOUNICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILIDAD2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILIDAD3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_BRUTO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_BRUTO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_BRUTO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAYOREO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAYOREO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAYOREO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTOPROMENO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENECOMPACTIBILIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPACTIBLECON'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UBICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADOCONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_DOLLARS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEQUIVALENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESC_EQUIVALENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTEQUIVALENCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRE2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRE3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_C'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILIDAD4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAYOREO4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_BRUTO4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILIDADSOBREITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APLICARPORMAYOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAPACIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODIUSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCPERMITIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBCATEGORIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUSTANCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASIFICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INDICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDADVENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDADCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERMITIRDESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDIMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_ART'
        ParamType = ptUnknown
      end>
  end
  object MantArt: TZQuery
    Connection = Data
    UpdateObject = ZuManArti
    SQL.Strings = (
      
        'select b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas' +
        ', e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, ' +
        'g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A'
      'left join producto_indicaciones b on a.indicacion = b.id'
      'left join productos_sustancia c On a.sustancia =c.id'
      'left join productos_marca d On a.idmarca = d.id'
      'left join man_provedores e On a.cod_prov1 = e.cod_prov'
      'Left Join productos_clasificacion f on a.clasificacion = f.id'
      'Left join mtcategoria g On a.cod_cat = g.codcat'
      'Left join producto_subcategoria h on a.subcategoria = h.id'
      'left join tb_moneda i On a.idmoneda = i.id'
      'left join man_provedores J On a.cod_prov1 = J.cod_prov')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 608
    Top = 16
    object MantArtCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object MantArtMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object MantArtMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object MantArtCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object MantArtCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object MantArtCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object F: TIntegerField
      FieldName = 'COD_ALM'
    end
    object MantArtCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object MantArtCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object MantArtEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object MantArtABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object MantArtCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object MantArtCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object MantArtUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object MantArtFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object MantArtPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object MantArtARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object MantArtCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object MantArtIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object MantArtCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object MantArtCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object MantArtPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object MantArtPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object MantArtPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
      currency = True
    end
    object MantArtCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object MantArtESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object MantArtEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object MantArtDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object MantArtPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object MantArtEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object MantArtCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object MantArtCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object MantArtCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object MantArtREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object MantArtOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object MantArtSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object MantArtSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object MantArtFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object MantArtTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object MantArtFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object MantArtSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object MantArtOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object MantArtPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object MantArtCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object MantArtBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object MantArtMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object MantArtUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object MantArtTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object MantArtALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object MantArtCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object MantArtARTICULOS_OMO: TWideStringField
      FieldName = 'ARTICULOS_OMO'
      Size = 10
    end
    object MantArtCODIGOUNICO: TWideStringField
      FieldName = 'CODIGOUNICO'
      Size = 5
    end
    object MantArtEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 25
    end
    object MantArtCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object MantArtUTILIDAD2: TFloatField
      FieldName = 'UTILIDAD2'
    end
    object MantArtUTILIDAD3: TFloatField
      FieldName = 'UTILIDAD3'
    end
    object MantArtPRECIO_BRUTO1: TFloatField
      FieldName = 'PRECIO_BRUTO1'
      currency = True
    end
    object MantArtPRECIO_BRUTO2: TFloatField
      FieldName = 'PRECIO_BRUTO2'
      currency = True
    end
    object MantArtPRECIO_BRUTO3: TFloatField
      FieldName = 'PRECIO_BRUTO3'
      currency = True
    end
    object MantArtMAYOREO1: TFloatField
      FieldName = 'MAYOREO1'
      currency = True
    end
    object MantArtMAYOREO2: TFloatField
      FieldName = 'MAYOREO2'
      currency = True
    end
    object MantArtMAYOREO3: TFloatField
      FieldName = 'MAYOREO3'
      currency = True
    end
    object MantArtDESCRIPCION: TWideMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftWideMemo
    end
    object MantArtCOSTOPROMENO: TFloatField
      FieldName = 'COSTOPROMENO'
      currency = True
    end
    object MantArtINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object MantArtPERCIO_COPA: TFloatField
      FieldName = 'PERCIO_COPA'
    end
    object MantArtTIENECOMPACTIBILIDAD: TWideStringField
      FieldName = 'TIENECOMPACTIBILIDAD'
      Size = 2
    end
    object MantArtCOMPACTIBLECON: TIntegerField
      FieldName = 'COMPACTIBLECON'
    end
    object MantArtITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object MantArtUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object MantArtOBS: TIntegerField
      FieldName = 'OBS'
    end
    object MantArtTIPOB: TWideStringField
      FieldName = 'TIPOB'
      Size = 15
    end
    object MantArtESTADOCONDICION: TWideStringField
      FieldName = 'ESTADOCONDICION'
      Size = 10
    end
    object MantArtCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object MantArtIDMONEDA: TIntegerField
      FieldName = 'IDMONEDA'
    end
    object MantArtCOSTO_DOLLARS: TFloatField
      FieldName = 'COSTO_DOLLARS'
    end
    object MantArtCODEQUIVALENCIA: TWideStringField
      FieldName = 'CODEQUIVALENCIA'
      Size = 30
    end
    object MantArtDESC_EQUIVALENCIA: TWideStringField
      FieldName = 'DESC_EQUIVALENCIA'
      Size = 100
    end
    object MantArtCANTEQUIVALENCA: TFloatField
      FieldName = 'CANTEQUIVALENCA'
    end
    object MantArtFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object MantArtPRE1: TFloatField
      FieldName = 'PRE1'
      currency = True
    end
    object MantArtPRE2: TFloatField
      FieldName = 'PRE2'
      currency = True
    end
    object MantArtPRE3: TFloatField
      FieldName = 'PRE3'
      currency = True
    end
    object MantArtCOSP: TFloatField
      FieldName = 'COSP'
    end
    object MantArtCOST: TFloatField
      FieldName = 'COST'
    end
    object MantArtPRECIO_C: TFloatField
      FieldName = 'PRECIO_C'
      currency = True
    end
    object MantArtCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
    object MantArtUTILIDAD4: TFloatField
      FieldName = 'UTILIDAD4'
      currency = True
    end
    object MantArtPRECIO_BRUTO4: TFloatField
      FieldName = 'PRECIO_BRUTO4'
      currency = True
    end
    object MantArtMAYOREO4: TFloatField
      FieldName = 'MAYOREO4'
      currency = True
    end
    object MantArtUTILIDADSOBREITBS: TWideStringField
      FieldName = 'UTILIDADSOBREITBS'
      Size = 2
    end
    object MantArtAPLICARPORMAYOR: TWideStringField
      FieldName = 'APLICARPORMAYOR'
      Size = 2
    end
    object MantArtNOM_INDICACION: TWideStringField
      FieldName = 'NOM_INDICACION'
      Size = 100
    end
    object MantArtSUST: TWideStringField
      FieldName = 'SUST'
      Size = 100
    end
    object MantArtMARCAS: TWideStringField
      FieldName = 'MARCAS'
      Size = 50
    end
    object MantArtNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 50
    end
    object MantArtCLASI: TWideStringField
      FieldName = 'CLASI'
      Size = 61
    end
    object MantArtSUBCAT: TWideStringField
      FieldName = 'SUBCAT'
      Size = 50
    end
    object MantArtNOMBREABREVIADO: TWideStringField
      FieldName = 'NOMBREABREVIADO'
      Size = 35
    end
    object MantArtPRESENTACION: TWideStringField
      FieldName = 'PRESENTACION'
    end
    object MantArtCAPACIDAD: TIntegerField
      FieldName = 'CAPACIDAD'
    end
    object MantArtMODIUSO: TWideStringField
      FieldName = 'MODIUSO'
      Size = 100
    end
    object MantArtIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object MantArtDESCPERMITIDO: TIntegerField
      FieldName = 'DESCPERMITIDO'
    end
    object MantArtSUBCATEGORIA: TIntegerField
      FieldName = 'SUBCATEGORIA'
    end
    object MantArtSUSTANCIA: TIntegerField
      FieldName = 'SUSTANCIA'
    end
    object MantArtCLASIFICACION: TIntegerField
      FieldName = 'CLASIFICACION'
    end
    object MantArtINDICACION: TIntegerField
      FieldName = 'INDICACION'
    end
    object MantArtUNIDADVENTA: TWideStringField
      FieldName = 'UNIDADVENTA'
      Size = 10
    end
    object MantArtUNIDADCOMPRA: TWideStringField
      FieldName = 'UNIDADCOMPRA'
      Size = 10
    end
    object MantArtSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
    object MantArtPRO2: TWideStringField
      FieldName = 'PRO2'
      Size = 50
    end
    object MantArtSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 2
    end
    object MantArtLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object MantArtPERMITIRDESC: TWideStringField
      FieldName = 'PERMITIRDESC'
      Size = 2
    end
    object MantArtIDIMPUESTO: TIntegerField
      FieldName = 'IDIMPUESTO'
    end
  end
  object ZUseries: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM man_series'
      'WHERE'
      '  man_series.COD_SERIES = :OLD_COD_SERIES')
    InsertSQL.Strings = (
      'INSERT INTO man_series'
      
        '  (COD_SERIES, COD_ARTI, SERIES, ESTADO, NO_FACT, IDDETALLE, PRE' +
        'CIO, ITBS, '
      '   TOTAL)'
      'VALUES'
      
        '  (:COD_SERIES, :COD_ARTI, :SERIES, :ESTADO, :NO_FACT, :IDDETALL' +
        'E, :PRECIO, '
      '   :ITBS, :TOTAL)')
    ModifySQL.Strings = (
      'UPDATE man_series SET'
      '  COD_SERIES = :COD_SERIES,'
      '  COD_ARTI = :COD_ARTI,'
      '  SERIES = :SERIES,'
      '  ESTADO = :ESTADO,'
      '  NO_FACT = :NO_FACT,'
      '  IDDETALLE = :IDDETALLE,'
      '  PRECIO = :PRECIO,'
      '  ITBS = :ITBS,'
      '  TOTAL = :TOTAL'
      'WHERE'
      '  man_series.COD_SERIES = :OLD_COD_SERIES')
    RefreshSQL.Strings = (
      '')
    UseSequenceFieldForRefreshSQL = False
    Left = 656
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_SERIES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ARTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDDETALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_SERIES'
        ParamType = ptUnknown
      end>
  end
  object Series: TZQuery
    Connection = Data
    UpdateObject = ZUseries
    BeforeDelete = SeriesBeforeDelete
    SQL.Strings = (
      'select * from man_series')
    Params = <>
    MasterFields = 'NO_FACT'
    MasterSource = DsDetalleMaster
    LinkedFields = 'IDDETALLE'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 616
    Top = 88
    object SeriesCOD_SERIES: TIntegerField
      FieldName = 'COD_SERIES'
      Required = True
    end
    object SeriesCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object SeriesSERIES: TWideStringField
      FieldName = 'SERIES'
      Size = 30
    end
    object SeriesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object SeriesNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object SeriesIDDETALLE: TIntegerField
      FieldName = 'IDDETALLE'
    end
    object SeriesPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object SeriesITBS: TFloatField
      FieldName = 'ITBS'
      currency = True
    end
    object SeriesTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object ZUAlmacen: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM man_almacen'
      'WHERE'
      '  man_almacen.COD_ALMACEN = :OLD_COD_ALMACEN')
    InsertSQL.Strings = (
      'INSERT INTO man_almacen'
      '  (COD_ALMACEN, ALM_C, DESCRIPCION, EXISTENCIA, COD_ART)'
      'VALUES'
      '  (:COD_ALMACEN, :ALM_C, :DESCRIPCION, :EXISTENCIA, :COD_ART)')
    ModifySQL.Strings = (
      'UPDATE man_almacen SET'
      '  COD_ALMACEN = :COD_ALMACEN,'
      '  ALM_C = :ALM_C,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  EXISTENCIA = :EXISTENCIA,'
      '  COD_ART = :COD_ART'
      'WHERE'
      '  man_almacen.COD_ALMACEN = :OLD_COD_ALMACEN')
    RefreshSQL.Strings = (
      'select * from man_almacen')
    UseSequenceFieldForRefreshSQL = False
    Left = 656
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALM_C'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_ALMACEN'
        ParamType = ptUnknown
      end>
  end
  object Malmacen: TZQuery
    Connection = Data
    UpdateObject = ZUAlmacen
    SQL.Strings = (
      'select * from man_almacen')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 616
    Top = 136
    object MalmacenCOD_ALMACEN: TIntegerField
      FieldName = 'COD_ALMACEN'
      Required = True
    end
    object MalmacenALM_C: TIntegerField
      FieldName = 'ALM_C'
    end
    object MalmacenDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object MalmacenEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
    end
    object MalmacenCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
  end
  object ZUCombo: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MANTCOMBO'
      'WHERE'
      '  MANTCOMBO.COD_MANCOMBO = :OLD_COD_MANCOMBO')
    InsertSQL.Strings = (
      'INSERT INTO MANTCOMBO'
      
        '  (COD_MANCOMBO, MACOMBOID, COD_ART, PRECIO, PRECIO2, PRECIO3, C' +
        'ANTIDAD, '
      '   DESC)'
      'VALUES'
      
        '  (:COD_MANCOMBO, :MACOMBOID, :COD_ART, :PRECIO, :PRECIO2, :PREC' +
        'IO3, :CANTIDAD, '
      '   :DESC)')
    ModifySQL.Strings = (
      'UPDATE MANTCOMBO SET'
      '  COD_MANCOMBO = :COD_MANCOMBO,'
      '  MACOMBOID = :MACOMBOID,'
      '  COD_ART = :COD_ART,'
      '  PRECIO = :PRECIO,'
      '  PRECIO2 = :PRECIO2,'
      '  PRECIO3 = :PRECIO3,'
      '  CANTIDAD = :CANTIDAD,'
      '  DESC = :DESC'
      'WHERE'
      '  MANTCOMBO.COD_MANCOMBO = :OLD_COD_MANCOMBO')
    RefreshSQL.Strings = (
      'select * from mantcombo')
    UseSequenceFieldForRefreshSQL = False
    Left = 648
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_MANCOMBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MACOMBOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_MANCOMBO'
        ParamType = ptUnknown
      end>
  end
  object ZCombo: TZQuery
    Connection = Data
    UpdateObject = ZUCombo
    SQL.Strings = (
      'select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a'
      'left join MtArtuculos b On a.cod_art = b.cod_art')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsArt
    LinkedFields = 'MACOMBOID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 616
    Top = 184
    object ZComboCOD_MANCOMBO: TIntegerField
      FieldName = 'COD_MANCOMBO'
      Required = True
    end
    object ZComboCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZComboPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object ZComboARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object ZComboCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object ZComboCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object ZComboMACOMBOID: TIntegerField
      FieldName = 'MACOMBOID'
    end
    object ZComboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZComboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZComboCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZComboDESC: TWideStringField
      FieldName = 'DESC'
      Size = 100
    end
  end
  object DsArt: TDataSource
    DataSet = MantArt
    Left = 672
    Top = 16
  end
  object ZUMaCombo: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM combomaster'
      'WHERE'
      '  combomaster.COMBOMASTER = :OLD_COMBOMASTER')
    InsertSQL.Strings = (
      'INSERT INTO combomaster'
      
        '  (COMBOMASTER, NOMBRECOMBO, PRECIO1, PRECIO2, PRECIO3, COSTOS1,' +
        ' COSTOS2, '
      '   ESTADO, CODTIENDA, CODIGOTXT)'
      'VALUES'
      
        '  (:COMBOMASTER, :NOMBRECOMBO, :PRECIO1, :PRECIO2, :PRECIO3, :CO' +
        'STOS1, '
      '   :COSTOS2, :ESTADO, :CODTIENDA, :CODIGOTXT)')
    ModifySQL.Strings = (
      'UPDATE combomaster SET'
      '  COMBOMASTER = :COMBOMASTER,'
      '  NOMBRECOMBO = :NOMBRECOMBO,'
      '  PRECIO1 = :PRECIO1,'
      '  PRECIO2 = :PRECIO2,'
      '  PRECIO3 = :PRECIO3,'
      '  COSTOS1 = :COSTOS1,'
      '  COSTOS2 = :COSTOS2,'
      '  ESTADO = :ESTADO,'
      '  CODTIENDA = :CODTIENDA,'
      '  CODIGOTXT = :CODIGOTXT'
      'WHERE'
      '  combomaster.COMBOMASTER = :OLD_COMBOMASTER')
    RefreshSQL.Strings = (
      'select * from mantcombo')
    UseSequenceFieldForRefreshSQL = False
    Left = 656
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COMBOMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRECOMBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTOS1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTOS2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOTXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COMBOMASTER'
        ParamType = ptUnknown
      end>
  end
  object MaCombo: TZQuery
    Connection = Data
    UpdateObject = ZUMaCombo
    SQL.Strings = (
      'select a.*,b.descripcion from combomaster a'
      'left join tienda b On a.codtienda = b.tiendaid')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 616
    Top = 232
    object MaComboCOMBOMASTER: TIntegerField
      FieldName = 'COMBOMASTER'
      Required = True
    end
    object MaComboNOMBRECOMBO: TWideStringField
      FieldName = 'NOMBRECOMBO'
      Size = 45
    end
    object MaComboPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object MaComboCOSTOS1: TFloatField
      FieldName = 'COSTOS1'
    end
    object MaComboCOSTOS2: TFloatField
      FieldName = 'COSTOS2'
    end
    object MaComboESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object MaComboCODTIENDA: TIntegerField
      FieldName = 'CODTIENDA'
    end
    object MaComboDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object MaComboCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object MaComboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object MaComboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
  end
  object DsMaCombo: TDataSource
    DataSet = MaCombo
    Left = 712
    Top = 184
  end
  object tienda: TZQuery
    Connection = Data
    UpdateObject = Zutienda
    SQL.Strings = (
      'select * from tienda')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 784
    Top = 64
    object tiendaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
      Required = True
    end
    object tiendaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object tiendaDIRECCCION: TWideStringField
      FieldName = 'DIRECCCION'
      ReadOnly = True
      Size = 70
    end
    object tiendaCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      ReadOnly = True
    end
    object tiendaTELEFONO1: TWideStringField
      FieldName = 'TELEFONO1'
      ReadOnly = True
      Size = 14
    end
    object tiendaTELEFONO2: TWideStringField
      FieldName = 'TELEFONO2'
      ReadOnly = True
      Size = 14
    end
    object tiendaRNC: TWideStringField
      FieldName = 'RNC'
      ReadOnly = True
      Size = 15
    end
    object tiendaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object Zutienda: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tienda'
      'WHERE'
      '  tienda.TIENDAID = :OLD_TIENDAID')
    InsertSQL.Strings = (
      'INSERT INTO tienda'
      
        '  (TIENDAID, DESCRIPCION, ESTADO, DIRECCCION, CIUDAD, TELEFONO1,' +
        ' TELEFONO2, '
      '   RNC)'
      'VALUES'
      
        '  (:TIENDAID, :DESCRIPCION, :ESTADO, :DIRECCCION, :CIUDAD, :TELE' +
        'FONO1, '
      '   :TELEFONO2, :RNC)')
    ModifySQL.Strings = (
      'UPDATE tienda SET'
      '  TIENDAID = :TIENDAID,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  ESTADO = :ESTADO,'
      '  DIRECCCION = :DIRECCCION,'
      '  CIUDAD = :CIUDAD,'
      '  TELEFONO1 = :TELEFONO1,'
      '  TELEFONO2 = :TELEFONO2,'
      '  RNC = :RNC'
      'WHERE'
      '  tienda.TIENDAID = :OLD_TIENDAID')
    RefreshSQL.Strings = (
      'select * from mantcombo')
    UseSequenceFieldForRefreshSQL = False
    Left = 824
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIUDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_TIENDAID'
        ParamType = ptUnknown
      end>
  end
  object DsTienda: TDataSource
    DataSet = tienda
    Left = 744
    Top = 64
  end
  object ZUMconduce: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MCONDUCE'
      'WHERE'
      '  MCONDUCE.MCONDUCEID = :OLD_MCONDUCEID')
    InsertSQL.Strings = (
      'INSERT INTO MCONDUCE'
      
        '  (MCONDUCEID, MCONDUCETXT, FECHA, USUARIOID, TIENDAID, TIENDAID' +
        'DESTINO, '
      '   ESTADO)'
      'VALUES'
      
        '  (:MCONDUCEID, :MCONDUCETXT, :FECHA, :USUARIOID, :TIENDAID, :TI' +
        'ENDAIDDESTINO, '
      '   :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE MCONDUCE SET'
      '  MCONDUCEID = :MCONDUCEID,'
      '  MCONDUCETXT = :MCONDUCETXT,'
      '  FECHA = :FECHA,'
      '  USUARIOID = :USUARIOID,'
      '  TIENDAID = :TIENDAID,'
      '  TIENDAIDDESTINO = :TIENDAIDDESTINO,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  MCONDUCE.MCONDUCEID = :OLD_MCONDUCEID')
    RefreshSQL.Strings = (
      'select * from mantcombo')
    UseSequenceFieldForRefreshSQL = False
    Left = 640
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MCONDUCEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MCONDUCETXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAIDDESTINO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_MCONDUCEID'
        ParamType = ptUnknown
      end>
  end
  object ZMConduce: TZQuery
    Connection = Data
    UpdateObject = ZUMconduce
    SQL.Strings = (
      'select a.*,b.descripcion from MCONDUCE a'
      'left join tienda b On a.tiendaID= b.tiendaid')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 608
    Top = 288
    object ZMConduceMCONDUCEID: TIntegerField
      FieldName = 'MCONDUCEID'
      Required = True
    end
    object ZMConduceMCONDUCETXT: TWideStringField
      FieldName = 'MCONDUCETXT'
      Size = 10
    end
    object ZMConduceFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZMConduceUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZMConduceTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZMConduceTIENDAIDDESTINO: TIntegerField
      FieldName = 'TIENDAIDDESTINO'
    end
    object ZMConduceESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZMConduceDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object DsMconduce: TDataSource
    DataSet = ZMConduce
    Left = 672
    Top = 288
  end
  object ZUInventario: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MINVENTARIO'
      'WHERE'
      '  MINVENTARIO.MINVENTARIOID = :OLD_MINVENTARIOID')
    InsertSQL.Strings = (
      'INSERT INTO MINVENTARIO'
      
        '  (MINVENTARIOID, FECHA, IDTIENDA, COD_ART, CONCEPTOID, COD_USUA' +
        'RIO, ENTRADA, '
      '   SALIDA, COSTO_UN, COD_ALM, LIN)'
      'VALUES'
      
        '  (:MINVENTARIOID, :FECHA, :IDTIENDA, :COD_ART, :CONCEPTOID, :CO' +
        'D_USUARIO, '
      '   :ENTRADA, :SALIDA, :COSTO_UN, :COD_ALM, :LIN)')
    ModifySQL.Strings = (
      'UPDATE MINVENTARIO SET'
      '  MINVENTARIOID = :MINVENTARIOID,'
      '  FECHA = :FECHA,'
      '  IDTIENDA = :IDTIENDA,'
      '  COD_ART = :COD_ART,'
      '  CONCEPTOID = :CONCEPTOID,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  ENTRADA = :ENTRADA,'
      '  SALIDA = :SALIDA,'
      '  COSTO_UN = :COSTO_UN,'
      '  COD_ALM = :COD_ALM,'
      '  LIN = :LIN'
      'WHERE'
      '  MINVENTARIO.MINVENTARIOID = :OLD_MINVENTARIOID')
    RefreshSQL.Strings = (
      'select * from MINVENTARIO')
    UseSequenceFieldForRefreshSQL = False
    Left = 528
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MINVENTARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONCEPTOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTRADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SALIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_UN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_MINVENTARIOID'
        ParamType = ptUnknown
      end>
  end
  object ZInventario: TZQuery
    Connection = Data
    UpdateObject = ZUInventario
    SQL.Strings = (
      'select * from MINVENTARIO')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 496
    Top = 24
    object ZInventarioMINVENTARIOID: TIntegerField
      FieldName = 'MINVENTARIOID'
      Required = True
    end
    object ZInventarioFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZInventarioIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZInventarioCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZInventarioCONCEPTOID: TIntegerField
      FieldName = 'CONCEPTOID'
    end
    object ZInventarioCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object ZInventarioENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object ZInventarioSALIDA: TFloatField
      FieldName = 'SALIDA'
    end
    object ZInventarioCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZInventarioCOSTO_UN: TIntegerField
      FieldName = 'COSTO_UN'
    end
    object ZInventarioLIN: TIntegerField
      FieldName = 'LIN'
    end
  end
  object zuUsuario: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM musuario'
      'WHERE'
      '  musuario.USUARIOID = :OLD_USUARIOID')
    InsertSQL.Strings = (
      'INSERT INTO musuario'
      
        '  (USUARIOID, EMPLEADOID, TIPO, PASSW, IDAC, IDSESSION, ESTADO1,' +
        ' DESCUENTO, '
      '   SEXO, AVATAR)'
      'VALUES'
      
        '  (:USUARIOID, :EMPLEADOID, :TIPO, :PASSW, :IDAC, :IDSESSION, :E' +
        'STADO1, '
      '   :DESCUENTO, :SEXO, :AVATAR)')
    ModifySQL.Strings = (
      'UPDATE musuario SET'
      '  USUARIOID = :USUARIOID,'
      '  EMPLEADOID = :EMPLEADOID,'
      '  TIPO = :TIPO,'
      '  PASSW = :PASSW,'
      '  IDAC = :IDAC,'
      '  IDSESSION = :IDSESSION,'
      '  ESTADO1 = :ESTADO1,'
      '  DESCUENTO = :DESCUENTO,'
      '  SEXO = :SEXO,'
      '  AVATAR = :AVATAR'
      'WHERE'
      '  musuario.USUARIOID = :OLD_USUARIOID')
    UseSequenceFieldForRefreshSQL = False
    Left = 552
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLEADOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PASSW'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDAC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDSESSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AVATAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_USUARIOID'
        ParamType = ptUnknown
      end>
  end
  object ZUsaurios: TZQuery
    Connection = Data
    UpdateObject = zuUsuario
    SQL.Strings = (
      
        'select a.*, b.NOMBRES_EMP,B.tiendaid, C.nombre_session from musu' +
        'ario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      'left join tb_sesion c On A.idsession = C.id')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 512
    Top = 64
    object ZUsauriosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object ZUsauriosEMPLEADOID: TIntegerField
      FieldName = 'EMPLEADOID'
    end
    object ZUsauriosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZUsauriosPASSW: TWideStringField
      FieldName = 'PASSW'
      Size = 200
    end
    object ZUsauriosIDAC: TWideStringField
      FieldName = 'IDAC'
      Size = 10
    end
    object ZUsauriosIDSESSION: TIntegerField
      FieldName = 'IDSESSION'
    end
    object ZUsauriosESTADO1: TWideStringField
      FieldName = 'ESTADO1'
      Size = 10
    end
    object ZUsauriosDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
    object ZUsauriosSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object ZUsauriosAVATAR: TBlobField
      FieldName = 'AVATAR'
    end
    object ZUsauriosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZUsauriosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZUsauriosNOMBRE_SESSION: TWideStringField
      FieldName = 'NOMBRE_SESSION'
      Size = 50
    end
  end
  object ZqUsuarios: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      
        'select a.*, b.NOMBRES_EMP,B.tiendaid, C.nombre_session from musu' +
        'ario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      'left join tb_sesion c On A.idsession = C.id'
      ''
      ''
      '')
    Params = <>
    Left = 464
    Top = 64
    object ZqUsuariosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object ZqUsuariosEMPLEADOID: TIntegerField
      FieldName = 'EMPLEADOID'
    end
    object ZqUsuariosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZqUsuariosPASSW: TWideStringField
      FieldName = 'PASSW'
      Size = 200
    end
    object ZqUsuariosIDAC: TWideStringField
      FieldName = 'IDAC'
      Size = 10
    end
    object ZqUsuariosIDSESSION: TIntegerField
      FieldName = 'IDSESSION'
    end
    object ZqUsuariosESTADO1: TWideStringField
      FieldName = 'ESTADO1'
      Size = 10
    end
    object ZqUsuariosDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
    object ZqUsuariosSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object ZqUsuariosAVATAR: TBlobField
      FieldName = 'AVATAR'
    end
    object ZqUsuariosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZqUsuariosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZqUsuariosNOMBRE_SESSION: TWideStringField
      FieldName = 'NOMBRE_SESSION'
      Size = 50
    end
  end
  object DsDetalleMaster: TDataSource
    DataSet = Zdetalle
    Left = 816
    Top = 136
  end
  object zdetalle1: TZTable
    Connection = Data
    SortType = stIgnored
    BeforePost = zdetalle1BeforePost
    AfterPost = zdetalle1AfterPost
    TableName = 'DETAILFACT'
    MasterFields = 'NO_FACT'
    MasterSource = DsMaster_Fact
    LinkedFields = 'NO_FACT'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 840
    Top = 280
    object zdetalle1NO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object zdetalle1NO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object zdetalle1FECHA_FACT: TDateField
      FieldName = 'FECHA_FACT'
    end
    object zdetalle1TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object zdetalle1COD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object zdetalle1ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object zdetalle1MARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object zdetalle1MODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object zdetalle1CANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object zdetalle1PRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object zdetalle1IMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
      currency = True
    end
    object zdetalle1ITBS: TFloatField
      FieldName = 'ITBS'
      currency = True
    end
    object zdetalle1ITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object zdetalle1TOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object zdetalle1DESC1: TFloatField
      FieldName = 'DESC1'
    end
    object zdetalle1COD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object zdetalle1ITB: TWideStringField
      FieldName = 'ITB'
      Size = 1
    end
    object zdetalle1COBROITB: TWideStringField
      FieldName = 'COBROITB'
      Size = 1
    end
    object zdetalle1UNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object zdetalle1COSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object zdetalle1ESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object zdetalle1TIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object zdetalle1ABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 13
    end
    object zdetalle1IMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object zdetalle1COD_CLIENT: TIntegerField
      FieldName = 'COD_CLIENT'
    end
    object zdetalle1DESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object zdetalle1COMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object zdetalle1CONDICION_ART: TWideStringField
      FieldName = 'CONDICION_ART'
      Size = 10
    end
    object zdetalle1LINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object zdetalle1OPIT: TIntegerField
      FieldName = 'OPIT'
    end
    object zdetalle1PRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object zdetalle1EMPLEADO: TWideStringField
      FieldName = 'EMPLEADO'
      Size = 30
    end
    object zdetalle1CANT: TFloatField
      FieldName = 'CANT'
    end
    object zdetalle1TURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object zdetalle1CLAVE_COSTO: TWideStringField
      FieldName = 'CLAVE_COSTO'
      Size = 10
    end
  end
  object ZUpdateSQL2: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM configuracion'
      'WHERE'
      '  configuracion.CONFID = :OLD_CONFID')
    InsertSQL.Strings = (
      'INSERT INTO configuracion'
      
        '  (CONFID, CODIGO_COM, EMPRESA, RNC, TELEFONO, FAX, CELULAR, EMA' +
        'IL, DIRECCION, '
      
        '   CONTACTO, FACTIMPRIME, GENERART, ITBIS, AVG_GANANCIA, COBRAR_' +
        'ITBS, THEMS, '
      
        '   ANCHO, ALTO, RUTABACKUP, ABRIRCAJON, PTINTERTPV, CARGO_CARD, ' +
        'CARGO_CHEQUE, '
      
        '   MSN_PIE_FACT, IMP_CANT, IMPRIMIRCREDITO, IMPRIMIRCONTADO, DES' +
        'CUENTO, '
      
        '   TIPOITBS, TERMINAL, STOPVENTAS, STOPCOMPRAS, CONTROLSTOPVENTA' +
        'S, CONTROLSTOPCOMPRAS, '
      
        '   NCF_CF_INICIO_NUMERO, NCF_CF_INICIO_LETRA, NCF_CF_CONTADOR, N' +
        'CF_CF_FINAL_NUMERO, '
      
        '   NCF_VF_INICIO_NUMERO, NCF_VF_INICIO_LETRA, NCF_VF_CONTADOR, N' +
        'CF_VF_FINAL_NUMERO, '
      
        '   NCF_ESP_INICIO_NUMERO, NCF_ESP_INICIO_LETRA, NCF_ESP_CONTADOR' +
        ', NCF_ESP_FINAL, '
      
        '   NO_AUTORIZACION2, NO_AUTORIZACION3, NO_AUTORIZACION, USAR_CF,' +
        ' USAR_VF, '
      
        '   USAR_ESP, ROTULO_FC, ROTULO_FVF, ROTULO_ESP, VARIABLE_DEDUCIB' +
        'LE, LOGO, '
      
        '   CLAVEAUTORIZACION, CLAVEANULAR, TERMINAL_TPV, MONTOCF, REDOND' +
        'EAR, COMISIONVENTA, '
      
        '   LOGO_FRONTAR, LOGOF_TXT, LOGOP_TXT, INSERTARSERIAL, ITBIS_D, ' +
        'ENLACEAWEB, '
      
        '   PISTOLAOPTICA, TIPO_FACTURACION, EXISTENCIAFACT, RUTADB, CANT' +
        '_CAJA, '
      
        '   TAZA, MONEDA, APLICAR_AUMENTO_TAZA, ANCHO_IMG_FRONTAL, ALTO_I' +
        'MG_FRONTAL, '
      
        '   LEFT_IMAGEN, RIGHT_IMAGEN, REDONDEOCOMPLETO, TAZAINTERES, PER' +
        'IODO, COMPROBANTEDEFAULT, '
      
        '   USOAPLICACION, ARTICULOSVARIOS, MENSAJE_PIE1, MENSAJE_PIE2, I' +
        'MPRESION_RAPIDA, '
      
        '   IMPRESIONDEFECTO, HABILITARMORA, TAZAMORA, TIEMPODIAS, TEXINI' +
        'CIAR, LONGTICKET, '
      
        '   IMPRIMEOPCIONAL, ENTRAREFECTIVOINICIAL, CAJAID, IMPRIMECOTIZA' +
        ', USARCASHDRAWER, '
      
        '   ITBS_DEDUCIBLE, USARRMA, ALMACENRMA, ALMACENNOMBRE, TIPOINVEN' +
        'TARIO, '
      
        '   ACTIVARSOLIDARIDAD, PERMISOSALIR, ARTICULOREPETIDO, DSBDIASVE' +
        'NTAS, TIMPRESIONPRE, '
      
        '   CALLE, CIUDAD, SECTOR, CONTROLCONTADOR, CONTROLCONTADORTOTAL,' +
        ' EMUSUARIO, '
      
        '   EMCONTRASENA, EMASUNTO, EMDESTINATARIOS, EMADJUNTO, ENVIAREMA' +
        'ILCUADRE, '
      '   VERSION, LOTE, TIPOSALIDALOTE, TIPOPRECIO)'
      'VALUES'
      
        '  (:CONFID, :CODIGO_COM, :EMPRESA, :RNC, :TELEFONO, :FAX, :CELUL' +
        'AR, :EMAIL, '
      
        '   :DIRECCION, :CONTACTO, :FACTIMPRIME, :GENERART, :ITBIS, :AVG_' +
        'GANANCIA, '
      
        '   :COBRAR_ITBS, :THEMS, :ANCHO, :ALTO, :RUTABACKUP, :ABRIRCAJON' +
        ', :PTINTERTPV, '
      
        '   :CARGO_CARD, :CARGO_CHEQUE, :MSN_PIE_FACT, :IMP_CANT, :IMPRIM' +
        'IRCREDITO, '
      
        '   :IMPRIMIRCONTADO, :DESCUENTO, :TIPOITBS, :TERMINAL, :STOPVENT' +
        'AS, :STOPCOMPRAS, '
      
        '   :CONTROLSTOPVENTAS, :CONTROLSTOPCOMPRAS, :NCF_CF_INICIO_NUMER' +
        'O, :NCF_CF_INICIO_LETRA, '
      
        '   :NCF_CF_CONTADOR, :NCF_CF_FINAL_NUMERO, :NCF_VF_INICIO_NUMERO' +
        ', :NCF_VF_INICIO_LETRA, '
      
        '   :NCF_VF_CONTADOR, :NCF_VF_FINAL_NUMERO, :NCF_ESP_INICIO_NUMER' +
        'O, :NCF_ESP_INICIO_LETRA, '
      
        '   :NCF_ESP_CONTADOR, :NCF_ESP_FINAL, :NO_AUTORIZACION2, :NO_AUT' +
        'ORIZACION3, '
      
        '   :NO_AUTORIZACION, :USAR_CF, :USAR_VF, :USAR_ESP, :ROTULO_FC, ' +
        ':ROTULO_FVF, '
      
        '   :ROTULO_ESP, :VARIABLE_DEDUCIBLE, :LOGO, :CLAVEAUTORIZACION, ' +
        ':CLAVEANULAR, '
      
        '   :TERMINAL_TPV, :MONTOCF, :REDONDEAR, :COMISIONVENTA, :LOGO_FR' +
        'ONTAR, '
      
        '   :LOGOF_TXT, :LOGOP_TXT, :INSERTARSERIAL, :ITBIS_D, :ENLACEAWE' +
        'B, :PISTOLAOPTICA, '
      
        '   :TIPO_FACTURACION, :EXISTENCIAFACT, :RUTADB, :CANT_CAJA, :TAZ' +
        'A, :MONEDA, '
      
        '   :APLICAR_AUMENTO_TAZA, :ANCHO_IMG_FRONTAL, :ALTO_IMG_FRONTAL,' +
        ' :LEFT_IMAGEN, '
      
        '   :RIGHT_IMAGEN, :REDONDEOCOMPLETO, :TAZAINTERES, :PERIODO, :CO' +
        'MPROBANTEDEFAULT, '
      
        '   :USOAPLICACION, :ARTICULOSVARIOS, :MENSAJE_PIE1, :MENSAJE_PIE' +
        '2, :IMPRESION_RAPIDA, '
      
        '   :IMPRESIONDEFECTO, :HABILITARMORA, :TAZAMORA, :TIEMPODIAS, :T' +
        'EXINICIAR, '
      
        '   :LONGTICKET, :IMPRIMEOPCIONAL, :ENTRAREFECTIVOINICIAL, :CAJAI' +
        'D, :IMPRIMECOTIZA, '
      
        '   :USARCASHDRAWER, :ITBS_DEDUCIBLE, :USARRMA, :ALMACENRMA, :ALM' +
        'ACENNOMBRE, '
      
        '   :TIPOINVENTARIO, :ACTIVARSOLIDARIDAD, :PERMISOSALIR, :ARTICUL' +
        'OREPETIDO, '
      
        '   :DSBDIASVENTAS, :TIMPRESIONPRE, :CALLE, :CIUDAD, :SECTOR, :CO' +
        'NTROLCONTADOR, '
      
        '   :CONTROLCONTADORTOTAL, :EMUSUARIO, :EMCONTRASENA, :EMASUNTO, ' +
        ':EMDESTINATARIOS, '
      
        '   :EMADJUNTO, :ENVIAREMAILCUADRE, :VERSION, :LOTE, :TIPOSALIDAL' +
        'OTE, :TIPOPRECIO)')
    ModifySQL.Strings = (
      'UPDATE configuracion SET'
      '  CONFID = :CONFID,'
      '  CODIGO_COM = :CODIGO_COM,'
      '  EMPRESA = :EMPRESA,'
      '  RNC = :RNC,'
      '  TELEFONO = :TELEFONO,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  EMAIL = :EMAIL,'
      '  DIRECCION = :DIRECCION,'
      '  CONTACTO = :CONTACTO,'
      '  FACTIMPRIME = :FACTIMPRIME,'
      '  GENERART = :GENERART,'
      '  ITBIS = :ITBIS,'
      '  AVG_GANANCIA = :AVG_GANANCIA,'
      '  COBRAR_ITBS = :COBRAR_ITBS,'
      '  THEMS = :THEMS,'
      '  ANCHO = :ANCHO,'
      '  ALTO = :ALTO,'
      '  RUTABACKUP = :RUTABACKUP,'
      '  ABRIRCAJON = :ABRIRCAJON,'
      '  PTINTERTPV = :PTINTERTPV,'
      '  CARGO_CARD = :CARGO_CARD,'
      '  CARGO_CHEQUE = :CARGO_CHEQUE,'
      '  MSN_PIE_FACT = :MSN_PIE_FACT,'
      '  IMP_CANT = :IMP_CANT,'
      '  IMPRIMIRCREDITO = :IMPRIMIRCREDITO,'
      '  IMPRIMIRCONTADO = :IMPRIMIRCONTADO,'
      '  DESCUENTO = :DESCUENTO,'
      '  TIPOITBS = :TIPOITBS,'
      '  TERMINAL = :TERMINAL,'
      '  STOPVENTAS = :STOPVENTAS,'
      '  STOPCOMPRAS = :STOPCOMPRAS,'
      '  CONTROLSTOPVENTAS = :CONTROLSTOPVENTAS,'
      '  CONTROLSTOPCOMPRAS = :CONTROLSTOPCOMPRAS,'
      '  NCF_CF_INICIO_NUMERO = :NCF_CF_INICIO_NUMERO,'
      '  NCF_CF_INICIO_LETRA = :NCF_CF_INICIO_LETRA,'
      '  NCF_CF_CONTADOR = :NCF_CF_CONTADOR,'
      '  NCF_CF_FINAL_NUMERO = :NCF_CF_FINAL_NUMERO,'
      '  NCF_VF_INICIO_NUMERO = :NCF_VF_INICIO_NUMERO,'
      '  NCF_VF_INICIO_LETRA = :NCF_VF_INICIO_LETRA,'
      '  NCF_VF_CONTADOR = :NCF_VF_CONTADOR,'
      '  NCF_VF_FINAL_NUMERO = :NCF_VF_FINAL_NUMERO,'
      '  NCF_ESP_INICIO_NUMERO = :NCF_ESP_INICIO_NUMERO,'
      '  NCF_ESP_INICIO_LETRA = :NCF_ESP_INICIO_LETRA,'
      '  NCF_ESP_CONTADOR = :NCF_ESP_CONTADOR,'
      '  NCF_ESP_FINAL = :NCF_ESP_FINAL,'
      '  NO_AUTORIZACION2 = :NO_AUTORIZACION2,'
      '  NO_AUTORIZACION3 = :NO_AUTORIZACION3,'
      '  NO_AUTORIZACION = :NO_AUTORIZACION,'
      '  USAR_CF = :USAR_CF,'
      '  USAR_VF = :USAR_VF,'
      '  USAR_ESP = :USAR_ESP,'
      '  ROTULO_FC = :ROTULO_FC,'
      '  ROTULO_FVF = :ROTULO_FVF,'
      '  ROTULO_ESP = :ROTULO_ESP,'
      '  VARIABLE_DEDUCIBLE = :VARIABLE_DEDUCIBLE,'
      '  LOGO = :LOGO,'
      '  CLAVEAUTORIZACION = :CLAVEAUTORIZACION,'
      '  CLAVEANULAR = :CLAVEANULAR,'
      '  TERMINAL_TPV = :TERMINAL_TPV,'
      '  MONTOCF = :MONTOCF,'
      '  REDONDEAR = :REDONDEAR,'
      '  COMISIONVENTA = :COMISIONVENTA,'
      '  LOGO_FRONTAR = :LOGO_FRONTAR,'
      '  LOGOF_TXT = :LOGOF_TXT,'
      '  LOGOP_TXT = :LOGOP_TXT,'
      '  INSERTARSERIAL = :INSERTARSERIAL,'
      '  ITBIS_D = :ITBIS_D,'
      '  ENLACEAWEB = :ENLACEAWEB,'
      '  PISTOLAOPTICA = :PISTOLAOPTICA,'
      '  TIPO_FACTURACION = :TIPO_FACTURACION,'
      '  EXISTENCIAFACT = :EXISTENCIAFACT,'
      '  RUTADB = :RUTADB,'
      '  CANT_CAJA = :CANT_CAJA,'
      '  TAZA = :TAZA,'
      '  MONEDA = :MONEDA,'
      '  APLICAR_AUMENTO_TAZA = :APLICAR_AUMENTO_TAZA,'
      '  ANCHO_IMG_FRONTAL = :ANCHO_IMG_FRONTAL,'
      '  ALTO_IMG_FRONTAL = :ALTO_IMG_FRONTAL,'
      '  LEFT_IMAGEN = :LEFT_IMAGEN,'
      '  RIGHT_IMAGEN = :RIGHT_IMAGEN,'
      '  REDONDEOCOMPLETO = :REDONDEOCOMPLETO,'
      '  TAZAINTERES = :TAZAINTERES,'
      '  PERIODO = :PERIODO,'
      '  COMPROBANTEDEFAULT = :COMPROBANTEDEFAULT,'
      '  USOAPLICACION = :USOAPLICACION,'
      '  ARTICULOSVARIOS = :ARTICULOSVARIOS,'
      '  MENSAJE_PIE1 = :MENSAJE_PIE1,'
      '  MENSAJE_PIE2 = :MENSAJE_PIE2,'
      '  IMPRESION_RAPIDA = :IMPRESION_RAPIDA,'
      '  IMPRESIONDEFECTO = :IMPRESIONDEFECTO,'
      '  HABILITARMORA = :HABILITARMORA,'
      '  TAZAMORA = :TAZAMORA,'
      '  TIEMPODIAS = :TIEMPODIAS,'
      '  TEXINICIAR = :TEXINICIAR,'
      '  LONGTICKET = :LONGTICKET,'
      '  IMPRIMEOPCIONAL = :IMPRIMEOPCIONAL,'
      '  ENTRAREFECTIVOINICIAL = :ENTRAREFECTIVOINICIAL,'
      '  CAJAID = :CAJAID,'
      '  IMPRIMECOTIZA = :IMPRIMECOTIZA,'
      '  USARCASHDRAWER = :USARCASHDRAWER,'
      '  ITBS_DEDUCIBLE = :ITBS_DEDUCIBLE,'
      '  USARRMA = :USARRMA,'
      '  ALMACENRMA = :ALMACENRMA,'
      '  ALMACENNOMBRE = :ALMACENNOMBRE,'
      '  TIPOINVENTARIO = :TIPOINVENTARIO,'
      '  ACTIVARSOLIDARIDAD = :ACTIVARSOLIDARIDAD,'
      '  PERMISOSALIR = :PERMISOSALIR,'
      '  ARTICULOREPETIDO = :ARTICULOREPETIDO,'
      '  DSBDIASVENTAS = :DSBDIASVENTAS,'
      '  TIMPRESIONPRE = :TIMPRESIONPRE,'
      '  CALLE = :CALLE,'
      '  CIUDAD = :CIUDAD,'
      '  SECTOR = :SECTOR,'
      '  CONTROLCONTADOR = :CONTROLCONTADOR,'
      '  CONTROLCONTADORTOTAL = :CONTROLCONTADORTOTAL,'
      '  EMUSUARIO = :EMUSUARIO,'
      '  EMCONTRASENA = :EMCONTRASENA,'
      '  EMASUNTO = :EMASUNTO,'
      '  EMDESTINATARIOS = :EMDESTINATARIOS,'
      '  EMADJUNTO = :EMADJUNTO,'
      '  ENVIAREMAILCUADRE = :ENVIAREMAILCUADRE,'
      '  VERSION = :VERSION,'
      '  LOTE = :LOTE,'
      '  TIPOSALIDALOTE = :TIPOSALIDALOTE,'
      '  TIPOPRECIO = :TIPOPRECIO'
      'WHERE'
      '  configuracion.CONFID = :OLD_CONFID')
    RefreshSQL.Strings = (
      ''
      '')
    UseSequenceFieldForRefreshSQL = True
    Left = 784
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONFID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_COM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTIMPRIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GENERART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AVG_GANANCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRAR_ITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THEMS'
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
        Name = 'RUTABACKUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABRIRCAJON'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PTINTERTPV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGO_CARD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGO_CHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MSN_PIE_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMP_CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMIRCREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMIRCONTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOPVENTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOPCOMPRAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTROLSTOPVENTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTROLSTOPCOMPRAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_CF_INICIO_NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_CF_INICIO_LETRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_CF_CONTADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_CF_FINAL_NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_VF_INICIO_NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_VF_INICIO_LETRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_VF_CONTADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_VF_FINAL_NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_ESP_INICIO_NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_ESP_INICIO_LETRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_ESP_CONTADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_ESP_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_AUTORIZACION2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_AUTORIZACION3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_AUTORIZACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAR_CF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAR_VF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAR_ESP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROTULO_FC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROTULO_FVF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROTULO_ESP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VARIABLE_DEDUCIBLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLAVEAUTORIZACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLAVEANULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL_TPV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REDONDEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMISIONVENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGO_FRONTAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGOF_TXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGOP_TXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSERTARSERIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS_D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENLACEAWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PISTOLAOPTICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_FACTURACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIAFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RUTADB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APLICAR_AUMENTO_TAZA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANCHO_IMG_FRONTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALTO_IMG_FRONTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEFT_IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RIGHT_IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REDONDEOCOMPLETO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZAINTERES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIODO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPROBANTEDEFAULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USOAPLICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOSVARIOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MENSAJE_PIE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MENSAJE_PIE2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRESION_RAPIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRESIONDEFECTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HABILITARMORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZAMORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIEMPODIAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEXINICIAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LONGTICKET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMEOPCIONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTRAREFECTIVOINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRIMECOTIZA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USARCASHDRAWER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBS_DEDUCIBLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USARRMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMACENRMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMACENNOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOINVENTARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACTIVARSOLIDARIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERMISOSALIR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOREPETIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DSBDIASVENTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIMPRESIONPRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIUDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECTOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTROLCONTADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTROLCONTADORTOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMUSUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMCONTRASENA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMASUNTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMDESTINATARIOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMADJUNTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENVIAREMAILCUADRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOSALIDALOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CONFID'
        ParamType = ptUnknown
      end>
  end
  object Configuracion: TZQuery
    Connection = Data
    SortType = stIgnored
    UpdateObject = ZUpdateSQL2
    SQL.Strings = (
      'select * from configuracion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 744
    Top = 192
    object ConfiguracionCODIGO_COM: TWideStringField
      FieldName = 'CODIGO_COM'
      Size = 10
    end
    object ConfiguracionEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object ConfiguracionRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object ConfiguracionTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 13
    end
    object ConfiguracionFAX: TWideStringField
      FieldName = 'FAX'
      Size = 13
    end
    object ConfiguracionCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object ConfiguracionEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object ConfiguracionCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object ConfiguracionFACTIMPRIME: TWideStringField
      FieldName = 'FACTIMPRIME'
      Size = 15
    end
    object ConfiguracionGENERART: TWideStringField
      FieldName = 'GENERART'
      Size = 2
    end
    object ConfiguracionITBIS: TFloatField
      FieldName = 'ITBIS'
    end
    object ConfiguracionAVG_GANANCIA: TFloatField
      FieldName = 'AVG_GANANCIA'
    end
    object ConfiguracionCOBRAR_ITBS: TWideStringField
      FieldName = 'COBRAR_ITBS'
      Size = 1
    end
    object ConfiguracionTHEMS: TWideStringField
      FieldName = 'THEMS'
      Size = 30
    end
    object ConfiguracionANCHO: TIntegerField
      FieldName = 'ANCHO'
    end
    object ConfiguracionALTO: TIntegerField
      FieldName = 'ALTO'
    end
    object ConfiguracionRUTABACKUP: TWideStringField
      FieldName = 'RUTABACKUP'
      Size = 30
    end
    object ConfiguracionABRIRCAJON: TIntegerField
      FieldName = 'ABRIRCAJON'
    end
    object ConfiguracionPTINTERTPV: TWideStringField
      FieldName = 'PTINTERTPV'
      Size = 15
    end
    object ConfiguracionCARGO_CARD: TFloatField
      FieldName = 'CARGO_CARD'
    end
    object ConfiguracionCARGO_CHEQUE: TFloatField
      FieldName = 'CARGO_CHEQUE'
    end
    object ConfiguracionIMP_CANT: TWideStringField
      FieldName = 'IMP_CANT'
      Size = 2
    end
    object ConfiguracionIMPRIMIRCREDITO: TWideStringField
      FieldName = 'IMPRIMIRCREDITO'
      Size = 10
    end
    object ConfiguracionIMPRIMIRCONTADO: TWideStringField
      FieldName = 'IMPRIMIRCONTADO'
      Size = 10
    end
    object ConfiguracionDESCUENTO: TWideStringField
      FieldName = 'DESCUENTO'
      Size = 10
    end
    object ConfiguracionTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object ConfiguracionTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 10
    end
    object ConfiguracionSTOPVENTAS: TFloatField
      FieldName = 'STOPVENTAS'
    end
    object ConfiguracionSTOPCOMPRAS: TFloatField
      FieldName = 'STOPCOMPRAS'
    end
    object ConfiguracionCONTROLSTOPVENTAS: TWideStringField
      FieldName = 'CONTROLSTOPVENTAS'
      Size = 2
    end
    object ConfiguracionCONTROLSTOPCOMPRAS: TWideStringField
      FieldName = 'CONTROLSTOPCOMPRAS'
      Size = 2
    end
    object ConfiguracionNCF_CF_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_CF_INICIO_NUMERO'
    end
    object ConfiguracionNCF_CF_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_CF_INICIO_LETRA'
      Size = 14
    end
    object ConfiguracionNCF_CF_CONTADOR: TIntegerField
      FieldName = 'NCF_CF_CONTADOR'
    end
    object ConfiguracionNCF_CF_FINAL_NUMERO: TFloatField
      FieldName = 'NCF_CF_FINAL_NUMERO'
    end
    object ConfiguracionNCF_VF_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_VF_INICIO_NUMERO'
    end
    object ConfiguracionNCF_VF_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_VF_INICIO_LETRA'
      Size = 14
    end
    object ConfiguracionNCF_VF_CONTADOR: TIntegerField
      FieldName = 'NCF_VF_CONTADOR'
    end
    object ConfiguracionNCF_VF_FINAL_NUMERO: TFloatField
      FieldName = 'NCF_VF_FINAL_NUMERO'
    end
    object ConfiguracionNCF_ESP_INICIO_NUMERO: TFloatField
      FieldName = 'NCF_ESP_INICIO_NUMERO'
    end
    object ConfiguracionNCF_ESP_INICIO_LETRA: TWideStringField
      FieldName = 'NCF_ESP_INICIO_LETRA'
      Size = 14
    end
    object ConfiguracionNCF_ESP_CONTADOR: TIntegerField
      FieldName = 'NCF_ESP_CONTADOR'
    end
    object ConfiguracionNCF_ESP_FINAL: TFloatField
      FieldName = 'NCF_ESP_FINAL'
    end
    object ConfiguracionNO_AUTORIZACION2: TFloatField
      FieldName = 'NO_AUTORIZACION2'
    end
    object ConfiguracionNO_AUTORIZACION3: TFloatField
      FieldName = 'NO_AUTORIZACION3'
    end
    object ConfiguracionNO_AUTORIZACION: TFloatField
      FieldName = 'NO_AUTORIZACION'
    end
    object ConfiguracionUSAR_CF: TWideStringField
      FieldName = 'USAR_CF'
      Size = 10
    end
    object ConfiguracionUSAR_VF: TWideStringField
      FieldName = 'USAR_VF'
      Size = 10
    end
    object ConfiguracionUSAR_ESP: TWideStringField
      FieldName = 'USAR_ESP'
      Size = 10
    end
    object ConfiguracionROTULO_FC: TWideStringField
      FieldName = 'ROTULO_FC'
      Size = 60
    end
    object ConfiguracionROTULO_FVF: TWideStringField
      FieldName = 'ROTULO_FVF'
      Size = 60
    end
    object ConfiguracionROTULO_ESP: TWideStringField
      FieldName = 'ROTULO_ESP'
      Size = 60
    end
    object ConfiguracionVARIABLE_DEDUCIBLE: TFloatField
      FieldName = 'VARIABLE_DEDUCIBLE'
    end
    object ConfiguracionLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object ConfiguracionCLAVEANULAR: TWideStringField
      FieldName = 'CLAVEANULAR'
      Size = 10
    end
    object ConfiguracionTERMINAL_TPV: TWideStringField
      FieldName = 'TERMINAL_TPV'
      Size = 10
    end
    object ConfiguracionMONTOCF: TFloatField
      FieldName = 'MONTOCF'
    end
    object ConfiguracionCOMISIONVENTA: TFloatField
      FieldName = 'COMISIONVENTA'
    end
    object ConfiguracionREDONDEAR: TWideStringField
      FieldName = 'REDONDEAR'
      Size = 2
    end
    object ConfiguracionCONFID: TIntegerField
      FieldName = 'CONFID'
      Required = True
    end
    object ConfiguracionLOGO_FRONTAR: TBlobField
      FieldName = 'LOGO_FRONTAR'
    end
    object ConfiguracionLOGOF_TXT: TWideStringField
      FieldName = 'LOGOF_TXT'
      Size = 3
    end
    object ConfiguracionLOGOP_TXT: TWideStringField
      FieldName = 'LOGOP_TXT'
      Size = 3
    end
    object ConfiguracionINSERTARSERIAL: TIntegerField
      FieldName = 'INSERTARSERIAL'
    end
    object ConfiguracionDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 102
    end
    object ConfiguracionMSN_PIE_FACT: TWideStringField
      FieldName = 'MSN_PIE_FACT'
      Size = 100
    end
    object ConfiguracionITBIS_D: TFloatField
      FieldName = 'ITBIS_D'
    end
    object ConfiguracionENLACEAWEB: TIntegerField
      FieldName = 'ENLACEAWEB'
    end
    object ConfiguracionPISTOLAOPTICA: TIntegerField
      FieldName = 'PISTOLAOPTICA'
    end
    object ConfiguracionTIPO_FACTURACION: TIntegerField
      FieldName = 'TIPO_FACTURACION'
    end
    object ConfiguracionEXISTENCIAFACT: TIntegerField
      FieldName = 'EXISTENCIAFACT'
    end
    object ConfiguracionRUTADB: TWideStringField
      FieldName = 'RUTADB'
      Size = 12
    end
    object ConfiguracionCANT_CAJA: TIntegerField
      FieldName = 'CANT_CAJA'
    end
    object ConfiguracionTAZA: TFloatField
      FieldName = 'TAZA'
    end
    object ConfiguracionMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 10
    end
    object ConfiguracionAPLICAR_AUMENTO_TAZA: TWideStringField
      FieldName = 'APLICAR_AUMENTO_TAZA'
      Size = 2
    end
    object ConfiguracionANCHO_IMG_FRONTAL: TIntegerField
      FieldName = 'ANCHO_IMG_FRONTAL'
    end
    object ConfiguracionALTO_IMG_FRONTAL: TIntegerField
      FieldName = 'ALTO_IMG_FRONTAL'
    end
    object ConfiguracionLEFT_IMAGEN: TIntegerField
      FieldName = 'LEFT_IMAGEN'
    end
    object ConfiguracionRIGHT_IMAGEN: TIntegerField
      FieldName = 'RIGHT_IMAGEN'
    end
    object ConfiguracionREDONDEOCOMPLETO: TIntegerField
      FieldName = 'REDONDEOCOMPLETO'
    end
    object ConfiguracionCOMPROBANTEDEFAULT: TWideStringField
      FieldName = 'COMPROBANTEDEFAULT'
      Size = 15
    end
    object ConfiguracionUSOAPLICACION: TWideStringField
      FieldName = 'USOAPLICACION'
      Size = 10
    end
    object ConfiguracionARTICULOSVARIOS: TWideStringField
      FieldName = 'ARTICULOSVARIOS'
      Size = 30
    end
    object ConfiguracionMENSAJE_PIE1: TWideMemoField
      FieldName = 'MENSAJE_PIE1'
      BlobType = ftWideMemo
    end
    object ConfiguracionMENSAJE_PIE2: TWideMemoField
      FieldName = 'MENSAJE_PIE2'
      BlobType = ftWideMemo
    end
    object ConfiguracionIMPRESION_RAPIDA: TWideStringField
      FieldName = 'IMPRESION_RAPIDA'
      Size = 10
    end
    object ConfiguracionIMPRESIONDEFECTO: TWideStringField
      FieldName = 'IMPRESIONDEFECTO'
    end
    object ConfiguracionTEXINICIAR: TWideStringField
      FieldName = 'TEXINICIAR'
      Size = 30
    end
    object ConfiguracionLONGTICKET: TIntegerField
      FieldName = 'LONGTICKET'
    end
    object ConfiguracionIMPRIMEOPCIONAL: TWideStringField
      FieldName = 'IMPRIMEOPCIONAL'
      Size = 2
    end
    object ConfiguracionENTRAREFECTIVOINICIAL: TWideStringField
      FieldName = 'ENTRAREFECTIVOINICIAL'
      Size = 2
    end
    object ConfiguracionCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object ConfiguracionUSARCASHDRAWER: TWideStringField
      FieldName = 'USARCASHDRAWER'
      Size = 2
    end
    object ConfiguracionITBS_DEDUCIBLE: TFloatField
      FieldName = 'ITBS_DEDUCIBLE'
    end
    object ConfiguracionIMPRIMECOTIZA: TWideStringField
      FieldName = 'IMPRIMECOTIZA'
      Size = 10
    end
    object ConfiguracionUSARRMA: TIntegerField
      FieldName = 'USARRMA'
    end
    object ConfiguracionALMACENRMA: TIntegerField
      FieldName = 'ALMACENRMA'
    end
    object ConfiguracionALMACENNOMBRE: TWideStringField
      FieldName = 'ALMACENNOMBRE'
      Size = 15
    end
    object ConfiguracionHABILITARMORA: TWideStringField
      FieldName = 'HABILITARMORA'
      Size = 2
    end
    object ConfiguracionTIPOINVENTARIO: TWideStringField
      FieldName = 'TIPOINVENTARIO'
      Size = 15
    end
    object ConfiguracionACTIVARSOLIDARIDAD: TWideStringField
      FieldName = 'ACTIVARSOLIDARIDAD'
      Size = 2
    end
    object ConfiguracionDSBDIASVENTAS: TIntegerField
      FieldName = 'DSBDIASVENTAS'
    end
    object ConfiguracionPERMISOSALIR: TWideStringField
      FieldName = 'PERMISOSALIR'
      Size = 2
    end
    object ConfiguracionARTICULOREPETIDO: TWideStringField
      FieldName = 'ARTICULOREPETIDO'
      Size = 2
    end
    object ConfiguracionEMUSUARIO: TWideStringField
      FieldName = 'EMUSUARIO'
      Size = 50
    end
    object ConfiguracionEMCONTRASENA: TWideStringField
      FieldName = 'EMCONTRASENA'
      Size = 50
    end
    object ConfiguracionEMASUNTO: TWideStringField
      FieldName = 'EMASUNTO'
      Size = 50
    end
    object ConfiguracionEMDESTINATARIOS: TWideStringField
      FieldName = 'EMDESTINATARIOS'
      Size = 100
    end
    object ConfiguracionEMADJUNTO: TWideStringField
      FieldName = 'EMADJUNTO'
      Size = 75
    end
    object ConfiguracionENVIAREMAILCUADRE: TWideStringField
      FieldName = 'ENVIAREMAILCUADRE'
      Size = 2
    end
    object ConfiguracionCALLE: TWideStringField
      FieldName = 'CALLE'
      Size = 30
    end
    object ConfiguracionSECTOR: TWideStringField
      FieldName = 'SECTOR'
      Size = 30
    end
    object ConfiguracionCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      Size = 30
    end
    object ConfiguracionTIMPRESIONPRE: TIntegerField
      FieldName = 'TIMPRESIONPRE'
    end
    object ConfiguracionVERSION: TIntegerField
      FieldName = 'VERSION'
    end
    object ConfiguracionCONTROLCONTADOR: TWideStringField
      FieldName = 'CONTROLCONTADOR'
      Size = 2
    end
    object ConfiguracionCONTROLCONTADORTOTAL: TIntegerField
      FieldName = 'CONTROLCONTADORTOTAL'
    end
    object ConfiguracionCLAVEAUTORIZACION: TWideStringField
      FieldName = 'CLAVEAUTORIZACION'
      Size = 200
    end
    object ConfiguracionLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object ConfiguracionTIPOSALIDALOTE: TWideStringField
      FieldName = 'TIPOSALIDALOTE'
      Size = 2
    end
    object ConfiguracionTIPOPRECIO: TWideStringField
      FieldName = 'TIPOPRECIO'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Configuracion
    Left = 848
    Top = 248
  end
  object ZuConduce: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM detalleconduce'
      'WHERE'
      '  detalleconduce.DCONDUCEID = :OLD_DCONDUCEID')
    InsertSQL.Strings = (
      'INSERT INTO detalleconduce'
      '  (DCONDUCEID, MCONDUCEID, COD_ART, CANDIDAD, ESTADO)'
      'VALUES'
      '  (:DCONDUCEID, :MCONDUCEID, :COD_ART, :CANDIDAD, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE detalleconduce SET'
      '  DCONDUCEID = :DCONDUCEID,'
      '  MCONDUCEID = :MCONDUCEID,'
      '  COD_ART = :COD_ART,'
      '  CANDIDAD = :CANDIDAD,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  detalleconduce.DCONDUCEID = :OLD_DCONDUCEID')
    RefreshSQL.Strings = (
      'select * from mantcombo')
    UseSequenceFieldForRefreshSQL = False
    Left = 472
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DCONDUCEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MCONDUCEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANDIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_DCONDUCEID'
        ParamType = ptUnknown
      end>
  end
  object ZDconduce: TZQuery
    Connection = Data
    UpdateObject = ZuConduce
    SQL.Strings = (
      'select a.*,b.articulo from detalleconduce a'
      'left join mtartuculos b On a.cod_art = b.cod_art')
    Params = <>
    MasterFields = 'MCONDUCEID'
    MasterSource = DsMconduce
    LinkedFields = 'MCONDUCEID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 440
    Top = 288
    object ZDconduceDCONDUCEID: TIntegerField
      FieldName = 'DCONDUCEID'
      Required = True
    end
    object ZDconduceMCONDUCEID: TIntegerField
      FieldName = 'MCONDUCEID'
    end
    object ZDconduceCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZDconduceCANDIDAD: TFloatField
      FieldName = 'CANDIDAD'
    end
    object ZDconduceESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZDconduceARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = ZDconduce
    Left = 520
    Top = 280
  end
  object ZAjusteM: TZQuery
    Connection = Data
    UpdateObject = zUAsjusteM
    SQL.Strings = (
      
        'select a.*, c.nombres_emp, e.nombre_pro, f.descripcion almacen f' +
        'rom master_ajuste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join man_provedores e On a.provid = e.cod_prov'
      'left join almacenes f On a.cod_alm = f.id'
      '')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 224
    Top = 16
    object ZAjusteMNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object ZAjusteMFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZAjusteMUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZAjusteMTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZAjusteMCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object ZAjusteMPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object ZAjusteMNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object ZAjusteMFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object ZAjusteMPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object ZAjusteMMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
      currency = True
    end
    object ZAjusteMMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object ZAjusteMMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
      currency = True
    end
    object ZAjusteMESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZAjusteMNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZAjusteMFECHA_V: TDateField
      FieldName = 'FECHA_V'
    end
    object ZAjusteMMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object ZAjusteMCAMBIOMONEDA: TFloatField
      FieldName = 'CAMBIOMONEDA'
      currency = True
    end
    object ZAjusteMFLETE: TFloatField
      FieldName = 'FLETE'
      currency = True
    end
    object ZAjusteMOTROSGASTOS: TFloatField
      FieldName = 'OTROSGASTOS'
      currency = True
    end
    object ZAjusteMDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      currency = True
    end
    object ZAjusteMABONO: TFloatField
      FieldName = 'ABONO'
      currency = True
    end
    object ZAjusteMPAGADO: TFloatField
      FieldName = 'PAGADO'
      currency = True
    end
    object ZAjusteMCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZAjusteMNOMBREALMACEN: TWideStringField
      FieldName = 'NOMBREALMACEN'
      Size = 30
    end
    object ZAjusteMALMACEN: TWideStringField
      FieldName = 'ALMACEN'
      Size = 30
    end
    object ZAjusteMNCF: TWideStringField
      FieldName = 'NCF'
    end
    object ZAjusteMNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 50
    end
  end
  object AjusteD: TZQuery
    Connection = Data
    UpdateObject = SUAjusteD
    SQL.Strings = (
      'select * from detalle_ajuste')
    Params = <>
    MasterFields = 'NOID'
    MasterSource = DsMAjuste
    LinkedFields = 'MASTERID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 344
    Top = 24
    object AjusteDDETALLEID: TIntegerField
      FieldName = 'DETALLEID'
      Required = True
    end
    object AjusteDMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object AjusteDCANT: TFloatField
      FieldName = 'CANT'
    end
    object AjusteDESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object AjusteDCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object AjusteDMONTOCOSTO: TFloatField
      FieldName = 'MONTOCOSTO'
      currency = True
    end
    object AjusteDTOTALIMP: TFloatField
      FieldName = 'TOTALIMP'
      currency = True
    end
    object AjusteDTOTALCOSTO: TFloatField
      FieldName = 'TOTALCOSTO'
      currency = True
    end
    object AjusteDMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object AjusteDPRECIOUNIT: TFloatField
      FieldName = 'PRECIOUNIT'
      currency = True
    end
    object AjusteDARTICULOSNOM: TWideStringField
      FieldName = 'ARTICULOSNOM'
      Size = 100
    end
    object AjusteDOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object AjusteDLIN: TIntegerField
      FieldName = 'LIN'
    end
    object AjusteDFV: TDateField
      FieldName = 'FV'
    end
    object AjusteDLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
  end
  object zUAsjusteM: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM master_ajuste'
      'WHERE'
      '  master_ajuste.NOID = :OLD_NOID')
    InsertSQL.Strings = (
      'INSERT INTO master_ajuste'
      
        '  (NOID, FECHA, USUARIOID, TIENDAID, CONDICION, PROVID, NOFACT, ' +
        'FECHA_COMPRA, '
      
        '   PLAZO, MONTOFACT, MONTOPAGO, MONTOPEND, ESTADO, FECHA_V, MONE' +
        'DA, CAMBIOMONEDA, '
      
        '   FLETE, OTROSGASTOS, DESCUENTO, ABONO, PAGADO, COD_ALM, NOMBRE' +
        'ALMACEN, '
      '   NCF)'
      'VALUES'
      
        '  (:NOID, :FECHA, :USUARIOID, :TIENDAID, :CONDICION, :PROVID, :N' +
        'OFACT, '
      
        '   :FECHA_COMPRA, :PLAZO, :MONTOFACT, :MONTOPAGO, :MONTOPEND, :E' +
        'STADO, '
      
        '   :FECHA_V, :MONEDA, :CAMBIOMONEDA, :FLETE, :OTROSGASTOS, :DESC' +
        'UENTO, '
      '   :ABONO, :PAGADO, :COD_ALM, :NOMBREALMACEN, :NCF)')
    ModifySQL.Strings = (
      'UPDATE master_ajuste SET'
      '  NOID = :NOID,'
      '  FECHA = :FECHA,'
      '  USUARIOID = :USUARIOID,'
      '  TIENDAID = :TIENDAID,'
      '  CONDICION = :CONDICION,'
      '  PROVID = :PROVID,'
      '  NOFACT = :NOFACT,'
      '  FECHA_COMPRA = :FECHA_COMPRA,'
      '  PLAZO = :PLAZO,'
      '  MONTOFACT = :MONTOFACT,'
      '  MONTOPAGO = :MONTOPAGO,'
      '  MONTOPEND = :MONTOPEND,'
      '  ESTADO = :ESTADO,'
      '  FECHA_V = :FECHA_V,'
      '  MONEDA = :MONEDA,'
      '  CAMBIOMONEDA = :CAMBIOMONEDA,'
      '  FLETE = :FLETE,'
      '  OTROSGASTOS = :OTROSGASTOS,'
      '  DESCUENTO = :DESCUENTO,'
      '  ABONO = :ABONO,'
      '  PAGADO = :PAGADO,'
      '  COD_ALM = :COD_ALM,'
      '  NOMBREALMACEN = :NOMBREALMACEN,'
      '  NCF = :NCF'
      'WHERE'
      '  master_ajuste.NOID = :OLD_NOID')
    UseSequenceFieldForRefreshSQL = False
    Left = 280
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PLAZO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOPEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_V'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAMBIOMONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FLETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTROSGASTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NOID'
        ParamType = ptUnknown
      end>
  end
  object SUAjusteD: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM detalle_ajuste'
      'WHERE'
      '  detalle_ajuste.DETALLEID = :OLD_DETALLEID')
    InsertSQL.Strings = (
      'INSERT INTO detalle_ajuste'
      
        '  (DETALLEID, MASTERID, COD_ART, CANT, ESTADO, MONTOCOSTO, TOTAL' +
        'IMP, TOTALCOSTO, '
      '   ARTICULOSNOM, MONEDA, PRECIOUNIT, OBS, LIN, FV, LOTE)'
      'VALUES'
      
        '  (:DETALLEID, :MASTERID, :COD_ART, :CANT, :ESTADO, :MONTOCOSTO,' +
        ' :TOTALIMP, '
      
        '   :TOTALCOSTO, :ARTICULOSNOM, :MONEDA, :PRECIOUNIT, :OBS, :LIN,' +
        ' :FV, :LOTE)')
    ModifySQL.Strings = (
      'UPDATE detalle_ajuste SET'
      '  DETALLEID = :DETALLEID,'
      '  MASTERID = :MASTERID,'
      '  COD_ART = :COD_ART,'
      '  CANT = :CANT,'
      '  ESTADO = :ESTADO,'
      '  MONTOCOSTO = :MONTOCOSTO,'
      '  TOTALIMP = :TOTALIMP,'
      '  TOTALCOSTO = :TOTALCOSTO,'
      '  ARTICULOSNOM = :ARTICULOSNOM,'
      '  MONEDA = :MONEDA,'
      '  PRECIOUNIT = :PRECIOUNIT,'
      '  OBS = :OBS,'
      '  LIN = :LIN,'
      '  FV = :FV,'
      '  LOTE = :LOTE'
      'WHERE'
      '  detalle_ajuste.DETALLEID = :OLD_DETALLEID')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DETALLEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOCOSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALIMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALCOSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOSNOM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIOUNIT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_DETALLEID'
        ParamType = ptUnknown
      end>
  end
  object DsMAjuste: TDataSource
    DataSet = ZAjusteM
    Left = 160
    Top = 16
  end
  object ZProveedor: TZQuery
    Connection = Data
    UpdateObject = ZUproveedor
    SQL.Strings = (
      'select * from MAN_PROVEDORES')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 608
    Top = 440
    object ZProveedorCOD_PROV: TIntegerField
      FieldName = 'COD_PROV'
      Required = True
    end
    object ZProveedorNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 30
    end
    object ZProveedorNOM_CONTACTO: TWideStringField
      FieldName = 'NOM_CONTACTO'
      Size = 35
    end
    object ZProveedorDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 45
    end
    object ZProveedorTELF1: TWideStringField
      FieldName = 'TELF1'
      Size = 13
    end
    object ZProveedorTELF2: TWideStringField
      FieldName = 'TELF2'
      Size = 13
    end
    object ZProveedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 45
    end
    object ZProveedorWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 100
    end
  end
  object ZUproveedor: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MAN_PROVEDORES'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    InsertSQL.Strings = (
      'INSERT INTO MAN_PROVEDORES'
      
        '  (COD_PROV, NOMBRE_PRO, NOM_CONTACTO, DIRECCION, TELF1, TELF2, ' +
        'EMAIL, '
      '   WEBSITE)'
      'VALUES'
      
        '  (:COD_PROV, :NOMBRE_PRO, :NOM_CONTACTO, :DIRECCION, :TELF1, :T' +
        'ELF2, :EMAIL, '
      '   :WEBSITE)')
    ModifySQL.Strings = (
      'UPDATE MAN_PROVEDORES SET'
      '  COD_PROV = :COD_PROV,'
      '  NOMBRE_PRO = :NOMBRE_PRO,'
      '  NOM_CONTACTO = :NOM_CONTACTO,'
      '  DIRECCION = :DIRECCION,'
      '  TELF1 = :TELF1,'
      '  TELF2 = :TELF2,'
      '  EMAIL = :EMAIL,'
      '  WEBSITE = :WEBSITE'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    UseSequenceFieldForRefreshSQL = False
    Left = 640
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CONTACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WEBSITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_PROV'
        ParamType = ptUnknown
      end>
  end
  object ZTurno: TZQuery
    Connection = Data
    UpdateObject = ZUTurno
    SQL.Strings = (
      'select a.*,c.nombres_emp, d.descricpcion from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join mant_turnos d On a.idturno = d.id_turnos')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 488
    Top = 352
    object ZTurnoTURNOID: TIntegerField
      FieldName = 'TURNOID'
      Required = True
    end
    object ZTurnoUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZTurnoEFECTIVO_INICIAL: TFloatField
      FieldName = 'EFECTIVO_INICIAL'
      currency = True
    end
    object ZTurnoESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZTurnoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZTurnoNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZTurnoIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object ZTurnoCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object ZTurnoDESCRICPCION: TWideStringField
      FieldName = 'DESCRICPCION'
      Size = 40
    end
    object ZTurnoHORA: TTimeField
      FieldName = 'HORA'
    end
    object ZTurnoEFECTIVOCAJA: TFloatField
      FieldName = 'EFECTIVOCAJA'
      currency = True
    end
    object ZTurnoCOBRANZA: TFloatField
      FieldName = 'COBRANZA'
      currency = True
    end
    object ZTurnoTC: TFloatField
      FieldName = 'TC'
      currency = True
    end
    object ZTurnoCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      currency = True
    end
    object ZTurnoVALE: TFloatField
      FieldName = 'VALE'
      currency = True
    end
    object ZTurnoGASTOS: TFloatField
      FieldName = 'GASTOS'
      currency = True
    end
    object ZTurnoTOTALGASTOS: TFloatField
      FieldName = 'TOTALGASTOS'
      currency = True
    end
    object ZTurnoNC: TFloatField
      FieldName = 'NC'
      currency = True
    end
    object ZTurnoTOTALEINGRESO: TFloatField
      FieldName = 'TOTALEINGRESO'
      currency = True
    end
    object ZTurnoTOTALCUADRE: TFloatField
      FieldName = 'TOTALCUADRE'
      currency = True
    end
    object ZTurnoDESCUADRE: TFloatField
      FieldName = 'DESCUADRE'
      currency = True
    end
    object ZTurnoTOTALVENTAS: TFloatField
      FieldName = 'TOTALVENTAS'
      currency = True
    end
    object ZTurnoTOTALEGRESOS: TFloatField
      FieldName = 'TOTALEGRESOS'
      currency = True
    end
    object ZTurnoSOBRANTES: TFloatField
      FieldName = 'SOBRANTES'
      currency = True
    end
    object ZTurnoCOBOSNUEVOS: TFloatField
      FieldName = 'COBOSNUEVOS'
    end
    object ZTurnoCUBOSUSADOS: TFloatField
      FieldName = 'CUBOSUSADOS'
    end
  end
  object ZUTurno: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM turnos'
      'WHERE'
      '  turnos.TURNOID = :OLD_TURNOID')
    InsertSQL.Strings = (
      'INSERT INTO turnos'
      
        '  (TURNOID, USUARIOID, EFECTIVO_INICIAL, ESTADO, FECHA, IDTURNO,' +
        ' CAJA, '
      
        '   HORA, EFECTIVOCAJA, COBRANZA, TC, CHEQUE, VALE, GASTOS, NC, T' +
        'OTALGASTOS, '
      
        '   TOTALEINGRESO, TOTALCUADRE, DESCUADRE, TOTALVENTAS, TOTALEGRE' +
        'SOS, SOBRANTES, '
      '   COBOSNUEVOS, CUBOSUSADOS)'
      'VALUES'
      
        '  (:TURNOID, :USUARIOID, :EFECTIVO_INICIAL, :ESTADO, :FECHA, :ID' +
        'TURNO, '
      
        '   :CAJA, :HORA, :EFECTIVOCAJA, :COBRANZA, :TC, :CHEQUE, :VALE, ' +
        ':GASTOS, '
      
        '   :NC, :TOTALGASTOS, :TOTALEINGRESO, :TOTALCUADRE, :DESCUADRE, ' +
        ':TOTALVENTAS, '
      '   :TOTALEGRESOS, :SOBRANTES, :COBOSNUEVOS, :CUBOSUSADOS)')
    ModifySQL.Strings = (
      'UPDATE turnos SET'
      '  TURNOID = :TURNOID,'
      '  USUARIOID = :USUARIOID,'
      '  EFECTIVO_INICIAL = :EFECTIVO_INICIAL,'
      '  ESTADO = :ESTADO,'
      '  FECHA = :FECHA,'
      '  IDTURNO = :IDTURNO,'
      '  CAJA = :CAJA,'
      '  HORA = :HORA,'
      '  EFECTIVOCAJA = :EFECTIVOCAJA,'
      '  COBRANZA = :COBRANZA,'
      '  TC = :TC,'
      '  CHEQUE = :CHEQUE,'
      '  VALE = :VALE,'
      '  GASTOS = :GASTOS,'
      '  NC = :NC,'
      '  TOTALGASTOS = :TOTALGASTOS,'
      '  TOTALEINGRESO = :TOTALEINGRESO,'
      '  TOTALCUADRE = :TOTALCUADRE,'
      '  DESCUADRE = :DESCUADRE,'
      '  TOTALVENTAS = :TOTALVENTAS,'
      '  TOTALEGRESOS = :TOTALEGRESOS,'
      '  SOBRANTES = :SOBRANTES,'
      '  COBOSNUEVOS = :COBOSNUEVOS,'
      '  CUBOSUSADOS = :CUBOSUSADOS'
      'WHERE'
      '  turnos.TURNOID = :OLD_TURNOID')
    UseSequenceFieldForRefreshSQL = False
    Left = 528
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TURNOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EFECTIVO_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EFECTIVOCAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRANZA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GASTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALGASTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALEINGRESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALCUADRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUADRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALVENTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALEGRESOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SOBRANTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBOSNUEVOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUBOSUSADOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_TURNOID'
        ParamType = ptUnknown
      end>
  end
  object ZMDescarga: TZQuery
    Connection = Data
    UpdateObject = ZUMdescarga
    SQL.Strings = (
      '  select a.*,c.nombres_emp, d.descripcion from mdescargar a'
      ' left join musuario b On a.usuarioid = b.usuarioid'
      ' left join mtempleado C on b.empleadoid = c.cod_emp1'
      ' Left join desca_inventario d on a.descid = d.descargaid')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 744
    Top = 368
    object ZMDescargaMDESCARGARID: TIntegerField
      FieldName = 'MDESCARGARID'
      Required = True
    end
    object ZMDescargaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZMDescargaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZMDescargaDESCID: TIntegerField
      FieldName = 'DESCID'
    end
    object ZMDescargaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZMDescargaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZMDescargaNOTA: TWideMemoField
      FieldName = 'NOTA'
      BlobType = ftWideMemo
    end
    object ZMDescargaCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZMDescargaNOMBREALMACEN: TWideStringField
      FieldName = 'NOMBREALMACEN'
      Size = 30
    end
  end
  object ZUMdescarga: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM mdescargar'
      'WHERE'
      '  mdescargar.MDESCARGARID = :OLD_MDESCARGARID')
    InsertSQL.Strings = (
      'INSERT INTO mdescargar'
      
        '  (MDESCARGARID, FECHA, USUARIOID, DESCID, NOTA, COD_ALM, NOMBRE' +
        'ALMACEN)'
      'VALUES'
      
        '  (:MDESCARGARID, :FECHA, :USUARIOID, :DESCID, :NOTA, :COD_ALM, ' +
        ':NOMBREALMACEN)')
    ModifySQL.Strings = (
      'UPDATE mdescargar SET'
      '  MDESCARGARID = :MDESCARGARID,'
      '  FECHA = :FECHA,'
      '  USUARIOID = :USUARIOID,'
      '  DESCID = :DESCID,'
      '  NOTA = :NOTA,'
      '  COD_ALM = :COD_ALM,'
      '  NOMBREALMACEN = :NOMBREALMACEN'
      'WHERE'
      '  mdescargar.MDESCARGARID = :OLD_MDESCARGARID')
    UseSequenceFieldForRefreshSQL = False
    Left = 776
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MDESCARGARID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_MDESCARGARID'
        ParamType = ptUnknown
      end>
  end
  object ZDdescarga: TZQuery
    Connection = Data
    UpdateObject = ZUDdescarga
    SQL.Strings = (
      ' select a.*,b.articulo from  ddescargar a'
      ' left join mtartuculos b On a.cod_art = b.cod_art')
    Params = <>
    MasterFields = 'MDESCARGARID'
    MasterSource = DsMDescarga
    LinkedFields = 'MDESCARGARID'
    Left = 744
    Top = 424
    object ZDdescargaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZDdescargaCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
    end
    object ZDdescargaDDESCARGARID: TIntegerField
      FieldName = 'DDESCARGARID'
      Required = True
    end
    object ZDdescargaMDESCARGARID: TIntegerField
      FieldName = 'MDESCARGARID'
    end
    object ZDdescargaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZDdescargaCANTIDAD: TFloatField
      DisplayLabel = 'Cant'
      FieldName = 'CANTIDAD'
    end
    object ZDdescargaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZDdescargaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object ZDdescargaSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object ZDdescargaLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object ZDdescargaFV: TDateField
      FieldName = 'FV'
    end
    object ZDdescargaPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object ZDdescargaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object ZDdescargaCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object ZDdescargaIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object ZDdescargaEXX: TFloatField
      FieldName = 'EXX'
    end
    object ZDdescargaLIN: TIntegerField
      FieldName = 'LIN'
    end
  end
  object ZUDdescarga: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ddescargar'
      'WHERE'
      '  ddescargar.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO ddescargar'
      
        '  (ID, DDESCARGARID, MDESCARGARID, COD_ART, CANTIDAD, ESTADO, PR' +
        'ECIO, SERIE, '
      '   FV, LOTE, EXX, IMPUESTO, TOTAL, CODIGOBARRA, COSTO, LIN)'
      'VALUES'
      
        '  (:ID, :DDESCARGARID, :MDESCARGARID, :COD_ART, :CANTIDAD, :ESTA' +
        'DO, :PRECIO, '
      
        '   :SERIE, :FV, :LOTE, :EXX, :IMPUESTO, :TOTAL, :CODIGOBARRA, :C' +
        'OSTO, :LIN)')
    ModifySQL.Strings = (
      'UPDATE ddescargar SET'
      '  ID = :ID,'
      '  DDESCARGARID = :DDESCARGARID,'
      '  MDESCARGARID = :MDESCARGARID,'
      '  COD_ART = :COD_ART,'
      '  CANTIDAD = :CANTIDAD,'
      '  ESTADO = :ESTADO,'
      '  PRECIO = :PRECIO,'
      '  SERIE = :SERIE,'
      '  FV = :FV,'
      '  LOTE = :LOTE,'
      '  EXX = :EXX,'
      '  IMPUESTO = :IMPUESTO,'
      '  TOTAL = :TOTAL,'
      '  CODIGOBARRA = :CODIGOBARRA,'
      '  COSTO = :COSTO,'
      '  LIN = :LIN'
      'WHERE'
      '  ddescargar.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 784
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDESCARGARID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MDESCARGARID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOBARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsMDescarga: TDataSource
    DataSet = ZMDescarga
    Left = 808
    Top = 368
  end
  object ZConceptos_Gastos: TZQuery
    Connection = Data
    UpdateObject = ZuConceptos_Gastos
    SQL.Strings = (
      'select * from CONCEPTOS_GASTOS')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 40
    Top = 344
    object ZConceptos_GastosCONCEPTOSID: TIntegerField
      FieldName = 'CONCEPTOSID'
      Required = True
    end
    object ZConceptos_GastosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZConceptos_GastosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZConceptos_GastosC1: TIntegerField
      FieldName = 'C1'
    end
    object ZConceptos_GastosC2: TIntegerField
      FieldName = 'C2'
    end
    object ZConceptos_GastosC3: TIntegerField
      FieldName = 'C3'
    end
  end
  object ZuConceptos_Gastos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CONCEPTOS_GASTOS'
      'WHERE'
      '  CONCEPTOS_GASTOS.CONCEPTOSID = :OLD_CONCEPTOSID')
    InsertSQL.Strings = (
      'INSERT INTO CONCEPTOS_GASTOS'
      '  (CONCEPTOSID, DESCRIPCION, ESTADO, C1, C2, C3)'
      'VALUES'
      '  (:CONCEPTOSID, :DESCRIPCION, :ESTADO, :C1, :C2, :C3)')
    ModifySQL.Strings = (
      'UPDATE CONCEPTOS_GASTOS SET'
      '  CONCEPTOSID = :CONCEPTOSID,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  ESTADO = :ESTADO,'
      '  C1 = :C1,'
      '  C2 = :C2,'
      '  C3 = :C3'
      'WHERE'
      '  CONCEPTOS_GASTOS.CONCEPTOSID = :OLD_CONCEPTOSID')
    UseSequenceFieldForRefreshSQL = False
    Left = 80
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONCEPTOSID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CONCEPTOSID'
        ParamType = ptUnknown
      end>
  end
  object ZGastos: TZQuery
    Connection = Data
    UpdateObject = zUgastos
    SQL.Strings = (
      'select a.*, b.descripcion, d.nombres_emp from control_gastos a'
      'left Join conceptos_gastos b On a.conceptosid = b.conceptosid'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp1')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 40
    Top = 400
    object ZGastosGASTOSID: TIntegerField
      FieldName = 'GASTOSID'
      Required = True
    end
    object ZGastosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZGastosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZGastosCONCEPTOSID: TIntegerField
      FieldName = 'CONCEPTOSID'
    end
    object ZGastosNOTA: TWideMemoField
      FieldName = 'NOTA'
      BlobType = ftWideMemo
    end
    object ZGastosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZGastosBENEFICIADO: TWideStringField
      FieldName = 'BENEFICIADO'
      Size = 45
    end
    object ZGastosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZGastosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZGastosTURNOID: TIntegerField
      FieldName = 'TURNOID'
    end
    object ZGastosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object zUgastos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM control_gastos'
      'WHERE'
      '  control_gastos.GASTOSID = :OLD_GASTOSID')
    InsertSQL.Strings = (
      'INSERT INTO control_gastos'
      
        '  (GASTOSID, FECHA, USUARIOID, CONCEPTOSID, NOTA, IMPORTE, BENEF' +
        'ICIADO, '
      '   ESTADO, TURNOID)'
      'VALUES'
      
        '  (:GASTOSID, :FECHA, :USUARIOID, :CONCEPTOSID, :NOTA, :IMPORTE,' +
        ' :BENEFICIADO, '
      '   :ESTADO, :TURNOID)')
    ModifySQL.Strings = (
      'UPDATE control_gastos SET'
      '  GASTOSID = :GASTOSID,'
      '  FECHA = :FECHA,'
      '  USUARIOID = :USUARIOID,'
      '  CONCEPTOSID = :CONCEPTOSID,'
      '  NOTA = :NOTA,'
      '  IMPORTE = :IMPORTE,'
      '  BENEFICIADO = :BENEFICIADO,'
      '  ESTADO = :ESTADO,'
      '  TURNOID = :TURNOID'
      'WHERE'
      '  control_gastos.GASTOSID = :OLD_GASTOSID')
    UseSequenceFieldForRefreshSQL = False
    Left = 64
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GASTOSID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONCEPTOSID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEFICIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_GASTOSID'
        ParamType = ptUnknown
      end>
  end
  object zcaja: TZQuery
    Connection = Data
    UpdateObject = ZUcaja
    SQL.Strings = (
      'select a.*,c.nombres_emp from cuadre_caja a'
      'left join musuario b On a.usaurioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 552
    Top = 456
    object zcajaCUADRE1: TIntegerField
      FieldName = 'CUADRE1'
      Required = True
    end
    object zcajaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object zcajaUSAURIOID: TIntegerField
      FieldName = 'USAURIOID'
    end
    object zcajaMONTOINICIAL: TFloatField
      FieldName = 'MONTOINICIAL'
      currency = True
    end
    object zcajaTOTAL_EFECTIVO: TFloatField
      FieldName = 'TOTAL_EFECTIVO'
      currency = True
    end
    object zcajaVENTAS: TFloatField
      FieldName = 'VENTAS'
      currency = True
    end
    object zcajaGASTOS: TFloatField
      FieldName = 'GASTOS'
      currency = True
    end
    object zcajaCOBRANZAS: TFloatField
      FieldName = 'COBRANZAS'
      currency = True
    end
    object zcajaNOTACREDITO: TFloatField
      FieldName = 'NOTACREDITO'
      currency = True
    end
    object zcajaFECTIVO: TFloatField
      FieldName = 'FECTIVO'
      currency = True
    end
    object zcajaTARJETA: TFloatField
      FieldName = 'TARJETA'
      currency = True
    end
    object zcajaCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      currency = True
    end
    object zcajaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object zcajaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object zcajaTOTAL_GASTOS: TFloatField
      FieldName = 'TOTAL_GASTOS'
      currency = True
    end
    object zcajaESTADO_1: TWideStringField
      FieldName = 'ESTADO_1'
      Size = 10
    end
    object zcajaBONOS: TFloatField
      FieldName = 'BONOS'
      currency = True
    end
    object zcajaCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
  end
  object ZUcaja: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cuadre_caja'
      'WHERE'
      '  cuadre_caja.CUADRE1 = :OLD_CUADRE1')
    InsertSQL.Strings = (
      'INSERT INTO cuadre_caja'
      
        '  (CUADRE1, FECHA, USAURIOID, MONTOINICIAL, TOTAL_EFECTIVO, VENT' +
        'AS, GASTOS, '
      
        '   COBRANZAS, NOTACREDITO, FECTIVO, TARJETA, CHEQUE, ESTADO, TOT' +
        'AL_GASTOS, '
      '   ESTADO_1, BONOS, CAJA)'
      'VALUES'
      
        '  (:CUADRE1, :FECHA, :USAURIOID, :MONTOINICIAL, :TOTAL_EFECTIVO,' +
        ' :VENTAS, '
      
        '   :GASTOS, :COBRANZAS, :NOTACREDITO, :FECTIVO, :TARJETA, :CHEQU' +
        'E, :ESTADO, '
      '   :TOTAL_GASTOS, :ESTADO_1, :BONOS, :CAJA)')
    ModifySQL.Strings = (
      'UPDATE cuadre_caja SET'
      '  CUADRE1 = :CUADRE1,'
      '  FECHA = :FECHA,'
      '  USAURIOID = :USAURIOID,'
      '  MONTOINICIAL = :MONTOINICIAL,'
      '  TOTAL_EFECTIVO = :TOTAL_EFECTIVO,'
      '  VENTAS = :VENTAS,'
      '  GASTOS = :GASTOS,'
      '  COBRANZAS = :COBRANZAS,'
      '  NOTACREDITO = :NOTACREDITO,'
      '  FECTIVO = :FECTIVO,'
      '  TARJETA = :TARJETA,'
      '  CHEQUE = :CHEQUE,'
      '  ESTADO = :ESTADO,'
      '  TOTAL_GASTOS = :TOTAL_GASTOS,'
      '  ESTADO_1 = :ESTADO_1,'
      '  BONOS = :BONOS,'
      '  CAJA = :CAJA'
      'WHERE'
      '  cuadre_caja.CUADRE1 = :OLD_CUADRE1')
    UseSequenceFieldForRefreshSQL = False
    Left = 584
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CUADRE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAURIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_EFECTIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GASTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRANZAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOTACREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECTIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TARJETA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_GASTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BONOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CUADRE1'
        ParamType = ptUnknown
      end>
  end
  object MNc: TZQuery
    Connection = Data
    UpdateObject = ZUMNC
    SQL.Strings = (
      'select a.*, c.nombres_emp, d.nombres from mnoc a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join cliente d On a.clienteid = d.codigo')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 152
    Top = 336
    object MNcMNCID: TIntegerField
      FieldName = 'MNCID'
      Required = True
    end
    object MNcFECHA: TDateField
      FieldName = 'FECHA'
    end
    object MNcUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object MNcCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object MNcNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object MNcESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object MNcNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object MNcNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object MNcAFECTA_INV: TIntegerField
      FieldName = 'AFECTA_INV'
    end
    object MNcAFECTA_CAJA: TIntegerField
      FieldName = 'AFECTA_CAJA'
    end
    object MNcMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object MNcOBSERVACION: TWideMemoField
      FieldName = 'OBSERVACION'
      BlobType = ftWideMemo
    end
    object MNcCONIDICIONFACT: TWideStringField
      FieldName = 'CONIDICIONFACT'
      Size = 10
    end
    object MNcIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object MNcNCF: TWideStringField
      FieldName = 'NCF'
    end
    object MNcTIPO_NCF: TWideStringField
      FieldName = 'TIPO_NCF'
      Size = 50
    end
    object MNcNFC_AFECTADA: TWideStringField
      FieldName = 'NFC_AFECTADA'
    end
  end
  object ZUMNC: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM mnoc'
      'WHERE'
      '  mnoc.MNCID = :OLD_MNCID')
    InsertSQL.Strings = (
      'INSERT INTO mnoc'
      
        '  (MNCID, FECHA, USUARIOID, NO_FACT, CLIENTEID, ESTADO, AFECTA_I' +
        'NV, AFECTA_CAJA, '
      
        '   MONTO, OBSERVACION, CONIDICIONFACT, IDTURNO, NOTA, NCF, TIPO_' +
        'NCF, NFC_AFECTADA)'
      'VALUES'
      
        '  (:MNCID, :FECHA, :USUARIOID, :NO_FACT, :CLIENTEID, :ESTADO, :A' +
        'FECTA_INV, '
      
        '   :AFECTA_CAJA, :MONTO, :OBSERVACION, :CONIDICIONFACT, :IDTURNO' +
        ', :NOTA, '
      '   :NCF, :TIPO_NCF, :NFC_AFECTADA)')
    ModifySQL.Strings = (
      'UPDATE mnoc SET'
      '  MNCID = :MNCID,'
      '  FECHA = :FECHA,'
      '  USUARIOID = :USUARIOID,'
      '  NO_FACT = :NO_FACT,'
      '  CLIENTEID = :CLIENTEID,'
      '  ESTADO = :ESTADO,'
      '  AFECTA_INV = :AFECTA_INV,'
      '  AFECTA_CAJA = :AFECTA_CAJA,'
      '  MONTO = :MONTO,'
      '  OBSERVACION = :OBSERVACION,'
      '  CONIDICIONFACT = :CONIDICIONFACT,'
      '  IDTURNO = :IDTURNO,'
      '  NOTA = :NOTA,'
      '  NCF = :NCF,'
      '  TIPO_NCF = :TIPO_NCF,'
      '  NFC_AFECTADA = :NFC_AFECTADA'
      'WHERE'
      '  mnoc.MNCID = :OLD_MNCID')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MNCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AFECTA_INV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AFECTA_CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONIDICIONFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFC_AFECTADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_MNCID'
        ParamType = ptUnknown
      end>
  end
  object DNC: TZQuery
    Connection = Data
    UpdateObject = ZUDNC
    SQL.Strings = (
      'select a.*, b.articulo from dnc a'
      'left join mtarticulo B On a.cod_art = b.articulo')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    MasterFields = 'MNCID'
    MasterSource = DsMNC
    LinkedFields = 'MNCID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 152
    Top = 384
    object DNCDNCID: TIntegerField
      FieldName = 'DNCID'
      Required = True
    end
    object DNCMNCID: TIntegerField
      FieldName = 'MNCID'
    end
    object DNCCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object DNCCANT: TFloatField
      FieldName = 'CANT'
    end
    object DNCPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DNCTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object DNCESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object DNCCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 15
    end
    object DNCIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object DNCFECHA: TDateField
      FieldName = 'FECHA'
    end
    object DNCARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
  end
  object ZUDNC: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dnc'
      'WHERE'
      '  dnc.DNCID = :OLD_DNCID')
    InsertSQL.Strings = (
      'INSERT INTO dnc'
      
        '  (DNCID, MNCID, COD_ART, CANT, PRECIO, TOTAL, ESTADO, CONDICION' +
        ', IDRUTA, '
      '   FECHA)'
      'VALUES'
      
        '  (:DNCID, :MNCID, :COD_ART, :CANT, :PRECIO, :TOTAL, :ESTADO, :C' +
        'ONDICION, '
      '   :IDRUTA, :FECHA)')
    ModifySQL.Strings = (
      'UPDATE dnc SET'
      '  DNCID = :DNCID,'
      '  MNCID = :MNCID,'
      '  COD_ART = :COD_ART,'
      '  CANT = :CANT,'
      '  PRECIO = :PRECIO,'
      '  TOTAL = :TOTAL,'
      '  ESTADO = :ESTADO,'
      '  CONDICION = :CONDICION,'
      '  IDRUTA = :IDRUTA,'
      '  FECHA = :FECHA'
      'WHERE'
      '  dnc.DNCID = :OLD_DNCID')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DNCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MNCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDRUTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_DNCID'
        ParamType = ptUnknown
      end>
  end
  object DsMNC: TDataSource
    DataSet = MNc
    Left = 232
    Top = 352
  end
  object NCF: TZQuery
    Connection = Data
    UpdateObject = zuNcf
    SQL.Strings = (
      'select * from ncf')
    Params = <>
    Properties.Strings = (
      'select * from ncf')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 152
    Top = 432
    object NCFNCFID: TIntegerField
      FieldName = 'NCFID'
      Required = True
    end
    object NCFNUNTEXT: TWideStringField
      FieldName = 'NUNTEXT'
      Size = 14
    end
    object NCFDESDE: TIntegerField
      FieldName = 'DESDE'
    end
    object NCFHASTA: TIntegerField
      FieldName = 'HASTA'
    end
    object NCFUSO: TIntegerField
      FieldName = 'USO'
    end
    object NCFTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object NCFIDCONFIG: TIntegerField
      FieldName = 'IDCONFIG'
    end
    object NCFSIGUIENTE: TWideStringField
      FieldName = 'SIGUIENTE'
    end
    object NCFTITULO: TWideStringField
      FieldName = 'TITULO'
      Size = 100
    end
    object NCFFECHA_VENC: TDateField
      FieldName = 'FECHA_VENC'
    end
  end
  object zuNcf: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ncf'
      'WHERE'
      '  ncf.NCFID = :OLD_NCFID')
    InsertSQL.Strings = (
      'INSERT INTO ncf'
      
        '  (NCFID, NUNTEXT, DESDE, HASTA, USO, TIPO, IDCONFIG, SIGUIENTE,' +
        ' TITULO, '
      '   FECHA_VENC)'
      'VALUES'
      
        '  (:NCFID, :NUNTEXT, :DESDE, :HASTA, :USO, :TIPO, :IDCONFIG, :SI' +
        'GUIENTE, '
      '   :TITULO, :FECHA_VENC)')
    ModifySQL.Strings = (
      'UPDATE ncf SET'
      '  NCFID = :NCFID,'
      '  NUNTEXT = :NUNTEXT,'
      '  DESDE = :DESDE,'
      '  HASTA = :HASTA,'
      '  USO = :USO,'
      '  TIPO = :TIPO,'
      '  IDCONFIG = :IDCONFIG,'
      '  SIGUIENTE = :SIGUIENTE,'
      '  TITULO = :TITULO,'
      '  FECHA_VENC = :FECHA_VENC'
      'WHERE'
      '  ncf.NCFID = :OLD_NCFID')
    UseSequenceFieldForRefreshSQL = False
    Left = 186
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCFID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUNTEXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESDE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HASTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCONFIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGUIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_VENC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NCFID'
        ParamType = ptUnknown
      end>
  end
  object Zunidad: TZQuery
    Connection = Data
    UpdateObject = ZU_Unidad
    SQL.Strings = (
      'select * from unidad_m')
    Params = <>
    Properties.Strings = (
      'select a.*,c.nombres_emp from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1')
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 328
    Top = 152
    object ZunidadCOD_UNIDAD_M: TIntegerField
      FieldName = 'COD_UNIDAD_M'
      Required = True
    end
    object ZunidadUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object ZunidadDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object ZunidadPOS: TIntegerField
      FieldName = 'POS'
      ReadOnly = True
    end
    object ZunidadVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
  end
  object ZU_Unidad: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM unidad_m'
      'WHERE'
      '  unidad_m.COD_UNIDAD_M = :OLD_COD_UNIDAD_M')
    InsertSQL.Strings = (
      'INSERT INTO unidad_m'
      '  (COD_UNIDAD_M, UNIDAD, DESCRIPCION, POS, VALOR)'
      'VALUES'
      '  (:COD_UNIDAD_M, :UNIDAD, :DESCRIPCION, :POS, :VALOR)')
    ModifySQL.Strings = (
      'UPDATE unidad_m SET'
      '  COD_UNIDAD_M = :COD_UNIDAD_M,'
      '  UNIDAD = :UNIDAD,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  POS = :POS,'
      '  VALOR = :VALOR'
      'WHERE'
      '  unidad_m.COD_UNIDAD_M = :OLD_COD_UNIDAD_M')
    UseSequenceFieldForRefreshSQL = False
    Left = 360
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_UNIDAD_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_UNIDAD_M'
        ParamType = ptUnknown
      end>
  end
  object Control_Precio: TZQuery
    Connection = Data
    UpdateObject = ZuCP
    SQL.Strings = (
      'select a.*, b.unidad from CONTROL_PRECIOS a'
      'left join unidad_m b On a.unidad_m = b.cod_unidad_m')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsArt
    LinkedFields = 'NO_ART'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 272
    Top = 216
    object Control_PrecioCPID: TIntegerField
      FieldName = 'CPID'
      Required = True
    end
    object Control_PrecioNO_ART: TIntegerField
      FieldName = 'NO_ART'
    end
    object Control_PrecioUNIDAD_M: TIntegerField
      FieldName = 'UNIDAD_M'
    end
    object Control_PrecioPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object Control_PrecioPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object Control_PrecioUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object Control_PrecioPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
  end
  object ZuCP: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CONTROL_PRECIOS'
      'WHERE'
      '  CONTROL_PRECIOS.CPID = :OLD_CPID')
    InsertSQL.Strings = (
      'INSERT INTO CONTROL_PRECIOS'
      '  (CPID, NO_ART, UNIDAD_M, PRECIO1, PRECIO2, PRECIO3)'
      'VALUES'
      '  (:CPID, :NO_ART, :UNIDAD_M, :PRECIO1, :PRECIO2, :PRECIO3)')
    ModifySQL.Strings = (
      'UPDATE CONTROL_PRECIOS SET'
      '  CPID = :CPID,'
      '  NO_ART = :NO_ART,'
      '  UNIDAD_M = :UNIDAD_M,'
      '  PRECIO1 = :PRECIO1,'
      '  PRECIO2 = :PRECIO2,'
      '  PRECIO3 = :PRECIO3'
      'WHERE'
      '  CONTROL_PRECIOS.CPID = :OLD_CPID')
    UseSequenceFieldForRefreshSQL = False
    Left = 312
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CPID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CPID'
        ParamType = ptUnknown
      end>
  end
  object ZqProv_Arti: TZQuery
    Connection = Data
    UpdateObject = ZuProv_arti
    SQL.Strings = (
      
        'select a.*, b.descripcion, b.direccion, b.telefono, b.email, b.c' +
        'ontacto from prob_arti a'
      'left join fabricantes b On a.proveid = b.cod')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsArt
    LinkedFields = 'COD_ART'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 304
    Top = 272
    object ZqProv_ArtiPROBEID: TIntegerField
      FieldName = 'PROBEID'
      Required = True
    end
    object ZqProv_ArtiCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZqProv_ArtiREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object ZqProv_ArtiPROVEID: TIntegerField
      FieldName = 'PROVEID'
    end
    object ZqProv_ArtiDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object ZqProv_ArtiDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
    object ZqProv_ArtiTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 12
    end
    object ZqProv_ArtiEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ZqProv_ArtiCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
  end
  object ZuProv_arti: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM prob_arti'
      'WHERE'
      '  prob_arti.PROBEID = :OLD_PROBEID')
    InsertSQL.Strings = (
      'INSERT INTO prob_arti'
      '  (PROBEID, COD_ART, REFERENCIA, PROVEID)'
      'VALUES'
      '  (:PROBEID, :COD_ART, :REFERENCIA, :PROVEID)')
    ModifySQL.Strings = (
      'UPDATE prob_arti SET'
      '  PROBEID = :PROBEID,'
      '  COD_ART = :COD_ART,'
      '  REFERENCIA = :REFERENCIA,'
      '  PROVEID = :PROVEID'
      'WHERE'
      '  prob_arti.PROBEID = :OLD_PROBEID')
    UseSequenceFieldForRefreshSQL = False
    Left = 344
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROBEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_PROBEID'
        ParamType = ptUnknown
      end>
  end
  object ZqGustos: TZQuery
    Connection = Data
    UpdateObject = ZUgustos
    SQL.Strings = (
      'select a.*, c.cat from db_sabores a'
      'left join mtcategoria c On a.cod_cat = c.codcat')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 344
    Top = 368
    object ZqGustosID_SABOR: TIntegerField
      FieldName = 'ID_SABOR'
      Required = True
    end
    object ZqGustosIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object ZqGustosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object ZqGustosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZqGustosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqGustosCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object ZqGustosSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object ZqGustosSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
    object ZqGustosSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object ZqGustosOP: TIntegerField
      FieldName = 'OP'
    end
    object ZqGustosCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object ZqGustosPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object ZqGustosCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
    object ZqGustosCOSTO_PROMEDIO: TFloatField
      FieldName = 'COSTO_PROMEDIO'
      currency = True
    end
  end
  object ZUgustos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM db_sabores'
      'WHERE'
      '  db_sabores.ID_SABOR = :OLD_ID_SABOR')
    InsertSQL.Strings = (
      'INSERT INTO db_sabores'
      
        '  (ID_SABOR, IDARTICULO, DESCRIPCION, IMAGEN, ESTADO, COD_CAT, S' +
        'TOCK, STOCK_MIN, '
      '   STOCK_MAX, OP, COSTOS, PRECIO, COSTO_PROMEDIO)'
      'VALUES'
      
        '  (:ID_SABOR, :IDARTICULO, :DESCRIPCION, :IMAGEN, :ESTADO, :COD_' +
        'CAT, :STOCK, '
      
        '   :STOCK_MIN, :STOCK_MAX, :OP, :COSTOS, :PRECIO, :COSTO_PROMEDI' +
        'O)')
    ModifySQL.Strings = (
      'UPDATE db_sabores SET'
      '  ID_SABOR = :ID_SABOR,'
      '  IDARTICULO = :IDARTICULO,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  IMAGEN = :IMAGEN,'
      '  ESTADO = :ESTADO,'
      '  COD_CAT = :COD_CAT,'
      '  STOCK = :STOCK,'
      '  STOCK_MIN = :STOCK_MIN,'
      '  STOCK_MAX = :STOCK_MAX,'
      '  OP = :OP,'
      '  COSTOS = :COSTOS,'
      '  PRECIO = :PRECIO,'
      '  COSTO_PROMEDIO = :COSTO_PROMEDIO'
      'WHERE'
      '  db_sabores.ID_SABOR = :OLD_ID_SABOR')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PROMEDIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_SABOR'
        ParamType = ptUnknown
      end>
  end
  object ZqSaborFact: TZQuery
    Connection = Data
    UpdateObject = ZUSaborFC
    SQL.Strings = (
      'select a.*, b.articulo from SABORESFAC a'
      'left join mtartuculos b On a.idsabor = b.cod_art'
      ''
      '')
    Params = <>
    MasterFields = 'NO_FACT'
    MasterSource = DsDetalleMaster
    LinkedFields = 'ID_FACT'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 368
    Top = 432
    object ZqSaborFactARTICULO: TWideStringField
      DisplayLabel = 'Sabor'
      DisplayWidth = 23
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ZqSaborFactPRECIO_VENTA: TFloatField
      DisplayLabel = 'Precio'
      DisplayWidth = 10
      FieldName = 'PRECIO_VENTA'
      currency = True
    end
    object ZqSaborFactPRODUCTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRODUCTO'
      Visible = False
    end
    object ZqSaborFactID_SF: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_SF'
      Required = True
      Visible = False
    end
    object ZqSaborFactID_FACT: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FACT'
      Visible = False
    end
    object ZqSaborFactFECHA: TDateField
      DisplayWidth = 10
      FieldName = 'FECHA'
      Visible = False
    end
    object ZqSaborFactIDSABOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSABOR'
      Visible = False
    end
    object ZqSaborFactCOSTO: TFloatField
      DisplayWidth = 10
      FieldName = 'COSTO'
      Visible = False
    end
    object ZqSaborFactCANTIDAD: TFloatField
      DisplayWidth = 10
      FieldName = 'CANTIDAD'
      Visible = False
    end
    object ZqSaborFactOP: TIntegerField
      DisplayWidth = 10
      FieldName = 'OP'
      Visible = False
    end
    object ZqSaborFactLINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINE'
      Visible = False
    end
  end
  object ZUSaborFC: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM SABORESFAC'
      'WHERE'
      '  SABORESFAC.ID_SF = :OLD_ID_SF')
    InsertSQL.Strings = (
      'INSERT INTO SABORESFAC'
      
        '  (ID_SF, ID_FACT, FECHA, IDSABOR, COSTO, CANTIDAD, PRECIO_VENTA' +
        ', OP, LINE)'
      'VALUES'
      
        '  (:ID_SF, :ID_FACT, :FECHA, :IDSABOR, :COSTO, :CANTIDAD, :PRECI' +
        'O_VENTA, '
      '   :OP, :LINE)')
    ModifySQL.Strings = (
      'UPDATE SABORESFAC SET'
      '  ID_SF = :ID_SF,'
      '  ID_FACT = :ID_FACT,'
      '  FECHA = :FECHA,'
      '  IDSABOR = :IDSABOR,'
      '  COSTO = :COSTO,'
      '  CANTIDAD = :CANTIDAD,'
      '  PRECIO_VENTA = :PRECIO_VENTA,'
      '  OP = :OP,'
      '  LINE = :LINE'
      'WHERE'
      '  SABORESFAC.ID_SF = :OLD_ID_SF')
    UseSequenceFieldForRefreshSQL = False
    Left = 400
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDSABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LINE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_SF'
        ParamType = ptUnknown
      end>
  end
  object ZManTurnos: TZQuery
    Connection = Data
    UpdateObject = ZUMturnos
    SQL.Strings = (
      'select * from MANT_TURNOS')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 888
    Top = 336
    object ZManTurnosID_TURNOS: TIntegerField
      FieldName = 'ID_TURNOS'
      Required = True
    end
    object ZManTurnosDESCRICPCION: TWideStringField
      FieldName = 'DESCRICPCION'
      Size = 40
    end
    object ZManTurnosINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object ZManTurnosFINAL: TTimeField
      FieldName = 'FINAL'
    end
  end
  object ZUMturnos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MANT_TURNOS'
      'WHERE'
      '  MANT_TURNOS.ID_TURNOS = :OLD_ID_TURNOS')
    InsertSQL.Strings = (
      'INSERT INTO MANT_TURNOS'
      '  (ID_TURNOS, DESCRICPCION, INICIO, FINAL)'
      'VALUES'
      '  (:ID_TURNOS, :DESCRICPCION, :INICIO, :FINAL)')
    ModifySQL.Strings = (
      'UPDATE MANT_TURNOS SET'
      '  ID_TURNOS = :ID_TURNOS,'
      '  DESCRICPCION = :DESCRICPCION,'
      '  INICIO = :INICIO,'
      '  FINAL = :FINAL'
      'WHERE'
      '  MANT_TURNOS.ID_TURNOS = :OLD_ID_TURNOS')
    UseSequenceFieldForRefreshSQL = False
    Left = 936
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_TURNOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_TURNOS'
        ParamType = ptUnknown
      end>
  end
  object ZqParticion: TZQuery
    Connection = Data
    UpdateObject = ZqUPArticionado
    SQL.Strings = (
      'select a.*, b.descripcion from particionado a'
      'left join unidad_m b On a.id_unidad = b.cod_unidad_m')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsArt
    LinkedFields = 'COD_ARTI'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 256
    Top = 80
    object ZqParticionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZqParticionCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object ZqParticionCANTI: TFloatField
      FieldName = 'CANTI'
    end
    object ZqParticionUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object ZqParticionCOD_PART: TFloatField
      FieldName = 'COD_PART'
    end
    object ZqParticionID_UNIDAD: TIntegerField
      FieldName = 'ID_UNIDAD'
    end
    object ZqParticionDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object ZqParticionPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZqParticionPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
  end
  object ZqUPArticionado: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM particionado'
      'WHERE'
      '  particionado.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO particionado'
      
        '  (ID, COD_ARTI, CANTI, UNIDAD, COD_PART, ID_UNIDAD, PRECIO1, PR' +
        'ECIO2)'
      'VALUES'
      
        '  (:ID, :COD_ARTI, :CANTI, :UNIDAD, :COD_PART, :ID_UNIDAD, :PREC' +
        'IO1, :PRECIO2)')
    ModifySQL.Strings = (
      'UPDATE particionado SET'
      '  ID = :ID,'
      '  COD_ARTI = :COD_ARTI,'
      '  CANTI = :CANTI,'
      '  UNIDAD = :UNIDAD,'
      '  COD_PART = :COD_PART,'
      '  ID_UNIDAD = :ID_UNIDAD,'
      '  PRECIO1 = :PRECIO1,'
      '  PRECIO2 = :PRECIO2'
      'WHERE'
      '  particionado.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 320
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ARTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ZMantArt1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MTARTUCULOS'
      'WHERE'
      '  MTARTUCULOS.COD_ART = :OLD_COD_ART')
    InsertSQL.Strings = (
      'INSERT INTO MTARTUCULOS'
      
        '  (COD_ART, CODIGOTXT, ARTICULO, MODELO, MARCA, COLOR, COD_CAT, ' +
        'COD_SERIE, '
      
        '   COD_ALM, COSTO, COD_PROV1, EXISTENCIA1, ITBIS, ABREVIADO, COD' +
        '_BARRA, '
      
        '   COD_UV, USUARIOMOD, FECHA_MOD, POLITICA, COSTO_PR, IMAGEN, CL' +
        'A_COSTO, '
      
        '   CLA_PRECIO, PRECIO_A, PRECIO_B, PRECIO_D, ESTADO, EXTFOTO, DE' +
        'SCRIPCIONWEB, '
      
        '   PUBLICARWEB, CODIGOBARRA, EMPAQUE, CANT_EMPA, COD_PROV2, COD_' +
        'PROV3, '
      
        '   REFERENCIA, CONDICION, OPCION_SABOR, STOCK_MA, STOCK_M, FACTO' +
        'R, TIPO_PRODUCTOS, '
      
        '   FACTURABLE, STOCK, OPCIONES_BOLA, PARTICIONADO, COMPUESTO, BE' +
        'NEFICIOS, '
      '   MONEDA, UNIDAD, TAZA_COMPRA)'
      'VALUES'
      
        '  (:COD_ART, :CODIGOTXT, :ARTICULO, :MODELO, :MARCA, :COLOR, :CO' +
        'D_CAT, '
      
        '   :COD_SERIE, :COD_ALM, :COSTO, :COD_PROV1, :EXISTENCIA1, :ITBI' +
        'S, :ABREVIADO, '
      
        '   :COD_BARRA, :COD_UV, :USUARIOMOD, :FECHA_MOD, :POLITICA, :COS' +
        'TO_PR, '
      
        '   :IMAGEN, :CLA_COSTO, :CLA_PRECIO, :PRECIO_A, :PRECIO_B, :PREC' +
        'IO_D, :ESTADO, '
      
        '   :EXTFOTO, :DESCRIPCIONWEB, :PUBLICARWEB, :CODIGOBARRA, :EMPAQ' +
        'UE, :CANT_EMPA, '
      
        '   :COD_PROV2, :COD_PROV3, :REFERENCIA, :CONDICION, :OPCION_SABO' +
        'R, :STOCK_MA, '
      
        '   :STOCK_M, :FACTOR, :TIPO_PRODUCTOS, :FACTURABLE, :STOCK, :OPC' +
        'IONES_BOLA, '
      
        '   :PARTICIONADO, :COMPUESTO, :BENEFICIOS, :MONEDA, :UNIDAD, :TA' +
        'ZA_COMPRA)')
    ModifySQL.Strings = (
      'UPDATE MTARTUCULOS SET'
      '  COD_ART = :COD_ART,'
      '  CODIGOTXT = :CODIGOTXT,'
      '  ARTICULO = :ARTICULO,'
      '  MODELO = :MODELO,'
      '  MARCA = :MARCA,'
      '  COLOR = :COLOR,'
      '  COD_CAT = :COD_CAT,'
      '  COD_SERIE = :COD_SERIE,'
      '  COD_ALM = :COD_ALM,'
      '  COSTO = :COSTO,'
      '  COD_PROV1 = :COD_PROV1,'
      '  EXISTENCIA1 = :EXISTENCIA1,'
      '  ITBIS = :ITBIS,'
      '  ABREVIADO = :ABREVIADO,'
      '  COD_BARRA = :COD_BARRA,'
      '  COD_UV = :COD_UV,'
      '  USUARIOMOD = :USUARIOMOD,'
      '  FECHA_MOD = :FECHA_MOD,'
      '  POLITICA = :POLITICA,'
      '  COSTO_PR = :COSTO_PR,'
      '  IMAGEN = :IMAGEN,'
      '  CLA_COSTO = :CLA_COSTO,'
      '  CLA_PRECIO = :CLA_PRECIO,'
      '  PRECIO_A = :PRECIO_A,'
      '  PRECIO_B = :PRECIO_B,'
      '  PRECIO_D = :PRECIO_D,'
      '  ESTADO = :ESTADO,'
      '  EXTFOTO = :EXTFOTO,'
      '  DESCRIPCIONWEB = :DESCRIPCIONWEB,'
      '  PUBLICARWEB = :PUBLICARWEB,'
      '  CODIGOBARRA = :CODIGOBARRA,'
      '  EMPAQUE = :EMPAQUE,'
      '  CANT_EMPA = :CANT_EMPA,'
      '  COD_PROV2 = :COD_PROV2,'
      '  COD_PROV3 = :COD_PROV3,'
      '  REFERENCIA = :REFERENCIA,'
      '  CONDICION = :CONDICION,'
      '  OPCION_SABOR = :OPCION_SABOR,'
      '  STOCK_MA = :STOCK_MA,'
      '  STOCK_M = :STOCK_M,'
      '  FACTOR = :FACTOR,'
      '  TIPO_PRODUCTOS = :TIPO_PRODUCTOS,'
      '  FACTURABLE = :FACTURABLE,'
      '  STOCK = :STOCK,'
      '  OPCIONES_BOLA = :OPCIONES_BOLA,'
      '  PARTICIONADO = :PARTICIONADO,'
      '  COMPUESTO = :COMPUESTO,'
      '  BENEFICIOS = :BENEFICIOS,'
      '  MONEDA = :MONEDA,'
      '  UNIDAD = :UNIDAD,'
      '  TAZA_COMPRA = :TAZA_COMPRA'
      'WHERE'
      '  MTARTUCULOS.COD_ART = :OLD_COD_ART')
    RefreshSQL.Strings = (
      'select * from MTARTUCULOS')
    UseSequenceFieldForRefreshSQL = False
    Left = 696
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOTXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_UV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOMOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_MOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POLITICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_A'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_B'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXTFOTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCIONWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PUBLICARWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOBARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPAQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_EMPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION_SABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PRODUCTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTURABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCIONES_BOLA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARTICIONADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEFICIOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_ART'
        ParamType = ptUnknown
      end>
  end
  object MantArt1: TZQuery
    Connection = Data
    UpdateObject = ZMantArt1
    SQL.Strings = (
      'select * from MTARTUCULOS')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 576
    Top = 64
    object MantArt1COD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object MantArt1CODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object MantArt1ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object MantArt1MODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object MantArt1MARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object MantArt1COLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object MantArt1COD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object MantArt1COD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object MantArt1COD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object MantArt1COSTO: TFloatField
      FieldName = 'COSTO'
    end
    object MantArt1COD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object MantArt1EXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object MantArt1ABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object MantArt1COD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object MantArt1COD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object MantArt1USUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object MantArt1FECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object MantArt1POLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object MantArt1COSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object MantArt1IMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object MantArt1CLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object MantArt1CLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object MantArt1PRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object MantArt1PRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object MantArt1PRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object MantArt1ESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object MantArt1EXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object MantArt1DESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object MantArt1PUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object MantArt1CODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object MantArt1EMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object MantArt1CANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object MantArt1COD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object MantArt1COD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object MantArt1REFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object MantArt1CONDICION: TIntegerField
      FieldName = 'CONDICION'
    end
    object MantArt1OPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object MantArt1STOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object MantArt1STOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object MantArt1FACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object MantArt1TIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object MantArt1FACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object MantArt1STOCK: TFloatField
      FieldName = 'STOCK'
    end
    object MantArt1OPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object MantArt1PARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object MantArt1COMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object MantArt1BENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object MantArt1MONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object MantArt1UNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object MantArt1TAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object MantArt1ITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
  end
  object zmedicos: TZQuery
    Connection = Data
    UpdateObject = ZUmedicos
    SQL.Strings = (
      'select * from medicos')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 176
    Top = 216
    object zmedicosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zmedicosNOMBREMENDICO: TWideStringField
      FieldName = 'NOMBREMENDICO'
      Size = 50
    end
    object zmedicosTOTALXINTERNAMIENTO: TFloatField
      FieldName = 'TOTALXINTERNAMIENTO'
    end
    object zmedicosPORCIENTOANALISIS: TIntegerField
      FieldName = 'PORCIENTOANALISIS'
    end
    object zmedicosTOTALPAPA: TFloatField
      FieldName = 'TOTALPAPA'
    end
    object zmedicosTOTALRX: TFloatField
      FieldName = 'TOTALRX'
    end
  end
  object ZUmedicos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM medicos'
      'WHERE'
      '  medicos.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO medicos'
      
        '  (ID, NOMBREMENDICO, TOTALXINTERNAMIENTO, PORCIENTOANALISIS, TO' +
        'TALPAPA, '
      '   TOTALRX)'
      'VALUES'
      
        '  (:ID, :NOMBREMENDICO, :TOTALXINTERNAMIENTO, :PORCIENTOANALISIS' +
        ', :TOTALPAPA, '
      '   :TOTALRX)')
    ModifySQL.Strings = (
      'UPDATE medicos SET'
      '  ID = :ID,'
      '  NOMBREMENDICO = :NOMBREMENDICO,'
      '  TOTALXINTERNAMIENTO = :TOTALXINTERNAMIENTO,'
      '  PORCIENTOANALISIS = :PORCIENTOANALISIS,'
      '  TOTALPAPA = :TOTALPAPA,'
      '  TOTALRX = :TOTALRX'
      'WHERE'
      '  medicos.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 200
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREMENDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALXINTERNAMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORCIENTOANALISIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALPAPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTALRX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Control_caja: TZQuery
    Connection = Data
    UpdateObject = ZUControl_Caja
    SQL.Strings = (
      'select * from man_Caja')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 888
    Top = 392
    object Control_cajaIDCAJA: TIntegerField
      FieldName = 'IDCAJA'
      Required = True
    end
    object Control_cajaCAJA_NOMBRE: TWideStringField
      FieldName = 'CAJA_NOMBRE'
      Size = 10
    end
    object Control_cajaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object Control_cajaSECUENCIAFACT: TIntegerField
      FieldName = 'SECUENCIAFACT'
    end
    object Control_cajaNCFID: TIntegerField
      FieldName = 'NCFID'
    end
    object Control_cajaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object Control_cajaTABLAARTICULOS: TWideStringField
      FieldName = 'TABLAARTICULOS'
      Size = 15
    end
    object Control_cajaTABLAMASTERFACT: TWideStringField
      FieldName = 'TABLAMASTERFACT'
      Size = 15
    end
    object Control_cajaTABLADETALLEFACT: TWideStringField
      FieldName = 'TABLADETALLEFACT'
      Size = 15
    end
    object Control_cajaMONTOINICIAL: TFloatField
      FieldName = 'MONTOINICIAL'
    end
    object Control_cajaIDCOMPAñIA: TIntegerField
      FieldName = 'IDCOMPA'#241'IA'
      ReadOnly = True
    end
  end
  object ZUControl_Caja: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM man_Caja'
      'WHERE'
      '  man_Caja.IDCAJA = :OLD_IDCAJA')
    InsertSQL.Strings = (
      'INSERT INTO man_Caja'
      
        '  (IDCAJA, CAJA_NOMBRE, ESTADO, SECUENCIAFACT, NCFID, CONDICION,' +
        ' TABLAARTICULOS, '
      '   TABLAMASTERFACT, TABLADETALLEFACT, MONTOINICIAL, IDCOMPA'#241'IA)'
      'VALUES'
      
        '  (:IDCAJA, :CAJA_NOMBRE, :ESTADO, :SECUENCIAFACT, :NCFID, :COND' +
        'ICION, '
      
        '   :TABLAARTICULOS, :TABLAMASTERFACT, :TABLADETALLEFACT, :MONTOI' +
        'NICIAL, '
      '   :IDCOMPA'#241'IA)')
    ModifySQL.Strings = (
      'UPDATE man_Caja SET'
      '  IDCAJA = :IDCAJA,'
      '  CAJA_NOMBRE = :CAJA_NOMBRE,'
      '  ESTADO = :ESTADO,'
      '  SECUENCIAFACT = :SECUENCIAFACT,'
      '  NCFID = :NCFID,'
      '  CONDICION = :CONDICION,'
      '  TABLAARTICULOS = :TABLAARTICULOS,'
      '  TABLAMASTERFACT = :TABLAMASTERFACT,'
      '  TABLADETALLEFACT = :TABLADETALLEFACT,'
      '  MONTOINICIAL = :MONTOINICIAL,'
      '  IDCOMPA'#241'IA = :IDCOMPA'#241'IA'
      'WHERE'
      '  man_Caja.IDCAJA = :OLD_IDCAJA')
    UseSequenceFieldForRefreshSQL = False
    Left = 944
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDCAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJA_NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECUENCIAFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCFID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABLAARTICULOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABLAMASTERFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABLADETALLEFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCOMPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IDCAJA'
        ParamType = ptUnknown
      end>
  end
  object ConsultaCaja: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from man_caja')
    Params = <>
    Left = 992
    Top = 376
    object ConsultaCajaIDCAJA: TIntegerField
      FieldName = 'IDCAJA'
      Required = True
    end
    object ConsultaCajaCAJA_NOMBRE: TWideStringField
      FieldName = 'CAJA_NOMBRE'
      Size = 10
    end
    object ConsultaCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ConsultaCajaSECUENCIAFACT: TIntegerField
      FieldName = 'SECUENCIAFACT'
    end
    object ConsultaCajaNCFID: TIntegerField
      FieldName = 'NCFID'
    end
    object ConsultaCajaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object ConsultaCajaTABLAARTICULOS: TWideStringField
      FieldName = 'TABLAARTICULOS'
      Size = 15
    end
    object ConsultaCajaTABLAMASTERFACT: TWideStringField
      FieldName = 'TABLAMASTERFACT'
      Size = 15
    end
    object ConsultaCajaTABLADETALLEFACT: TWideStringField
      FieldName = 'TABLADETALLEFACT'
      Size = 15
    end
    object ConsultaCajaMONTOINICIAL: TFloatField
      FieldName = 'MONTOINICIAL'
    end
    object ConsultaCajaIDCOMPAñIA: TIntegerField
      FieldName = 'IDCOMPA'#241'IA'
      ReadOnly = True
    end
  end
  object zUCOPIA_ART: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MTARTUCULOS_COPIA'
      'WHERE'
      '  MTARTUCULOS_COPIA.COD_ART = :OLD_COD_ART')
    InsertSQL.Strings = (
      'INSERT INTO MTARTUCULOS_COPIA'
      
        '  (COD_ART, CODIGOTXT, ARTICULO, MODELO, MARCA, COLOR, COD_CAT, ' +
        'COD_SERIE, '
      
        '   COD_ALM, COSTO, COD_PROV1, EXISTENCIA1, ITBIS, ABREVIADO, COD' +
        '_BARRA, '
      
        '   COD_UV, USUARIOMOD, FECHA_MOD, POLITICA, COSTO_PR, IMAGEN, CL' +
        'A_COSTO, '
      
        '   CLA_PRECIO, PRECIO_A, PRECIO_B, PRECIO_D, ESTADO, EXTFOTO, DE' +
        'SCRIPCIONWEB, '
      
        '   PUBLICARWEB, CODIGOBARRA, EMPAQUE, CANT_EMPA, COD_PROV2, COD_' +
        'PROV3, '
      
        '   REFERENCIA, CONDICION, OPCION_SABOR, STOCK_MA, STOCK_M, FACTO' +
        'R, TIPO_PRODUCTOS, '
      
        '   FACTURABLE, STOCK, OPCIONES_BOLA, PARTICIONADO, COMPUESTO, BE' +
        'NEFICIOS, '
      
        '   MONEDA, UNIDAD, TAZA_COMPRA, FECHA_COMPRA, INTERES_ACUMULADO,' +
        ' ALMACEN)'
      'VALUES'
      
        '  (:COD_ART, :CODIGOTXT, :ARTICULO, :MODELO, :MARCA, :COLOR, :CO' +
        'D_CAT, '
      
        '   :COD_SERIE, :COD_ALM, :COSTO, :COD_PROV1, :EXISTENCIA1, :ITBI' +
        'S, :ABREVIADO, '
      
        '   :COD_BARRA, :COD_UV, :USUARIOMOD, :FECHA_MOD, :POLITICA, :COS' +
        'TO_PR, '
      
        '   :IMAGEN, :CLA_COSTO, :CLA_PRECIO, :PRECIO_A, :PRECIO_B, :PREC' +
        'IO_D, :ESTADO, '
      
        '   :EXTFOTO, :DESCRIPCIONWEB, :PUBLICARWEB, :CODIGOBARRA, :EMPAQ' +
        'UE, :CANT_EMPA, '
      
        '   :COD_PROV2, :COD_PROV3, :REFERENCIA, :CONDICION, :OPCION_SABO' +
        'R, :STOCK_MA, '
      
        '   :STOCK_M, :FACTOR, :TIPO_PRODUCTOS, :FACTURABLE, :STOCK, :OPC' +
        'IONES_BOLA, '
      
        '   :PARTICIONADO, :COMPUESTO, :BENEFICIOS, :MONEDA, :UNIDAD, :TA' +
        'ZA_COMPRA, '
      '   :FECHA_COMPRA, :INTERES_ACUMULADO, :ALMACEN)')
    ModifySQL.Strings = (
      'UPDATE MTARTUCULOS_COPIA SET'
      '  COD_ART = :COD_ART,'
      '  CODIGOTXT = :CODIGOTXT,'
      '  ARTICULO = :ARTICULO,'
      '  MODELO = :MODELO,'
      '  MARCA = :MARCA,'
      '  COLOR = :COLOR,'
      '  COD_CAT = :COD_CAT,'
      '  COD_SERIE = :COD_SERIE,'
      '  COD_ALM = :COD_ALM,'
      '  COSTO = :COSTO,'
      '  COD_PROV1 = :COD_PROV1,'
      '  EXISTENCIA1 = :EXISTENCIA1,'
      '  ITBIS = :ITBIS,'
      '  ABREVIADO = :ABREVIADO,'
      '  COD_BARRA = :COD_BARRA,'
      '  COD_UV = :COD_UV,'
      '  USUARIOMOD = :USUARIOMOD,'
      '  FECHA_MOD = :FECHA_MOD,'
      '  POLITICA = :POLITICA,'
      '  COSTO_PR = :COSTO_PR,'
      '  IMAGEN = :IMAGEN,'
      '  CLA_COSTO = :CLA_COSTO,'
      '  CLA_PRECIO = :CLA_PRECIO,'
      '  PRECIO_A = :PRECIO_A,'
      '  PRECIO_B = :PRECIO_B,'
      '  PRECIO_D = :PRECIO_D,'
      '  ESTADO = :ESTADO,'
      '  EXTFOTO = :EXTFOTO,'
      '  DESCRIPCIONWEB = :DESCRIPCIONWEB,'
      '  PUBLICARWEB = :PUBLICARWEB,'
      '  CODIGOBARRA = :CODIGOBARRA,'
      '  EMPAQUE = :EMPAQUE,'
      '  CANT_EMPA = :CANT_EMPA,'
      '  COD_PROV2 = :COD_PROV2,'
      '  COD_PROV3 = :COD_PROV3,'
      '  REFERENCIA = :REFERENCIA,'
      '  CONDICION = :CONDICION,'
      '  OPCION_SABOR = :OPCION_SABOR,'
      '  STOCK_MA = :STOCK_MA,'
      '  STOCK_M = :STOCK_M,'
      '  FACTOR = :FACTOR,'
      '  TIPO_PRODUCTOS = :TIPO_PRODUCTOS,'
      '  FACTURABLE = :FACTURABLE,'
      '  STOCK = :STOCK,'
      '  OPCIONES_BOLA = :OPCIONES_BOLA,'
      '  PARTICIONADO = :PARTICIONADO,'
      '  COMPUESTO = :COMPUESTO,'
      '  BENEFICIOS = :BENEFICIOS,'
      '  MONEDA = :MONEDA,'
      '  UNIDAD = :UNIDAD,'
      '  TAZA_COMPRA = :TAZA_COMPRA,'
      '  FECHA_COMPRA = :FECHA_COMPRA,'
      '  INTERES_ACUMULADO = :INTERES_ACUMULADO,'
      '  ALMACEN = :ALMACEN'
      'WHERE'
      '  MTARTUCULOS_COPIA.COD_ART = :OLD_COD_ART')
    RefreshSQL.Strings = (
      'select * from MTARTUCULOS')
    UseSequenceFieldForRefreshSQL = False
    Left = 64
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOTXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ALM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_UV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOMOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_MOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POLITICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLA_PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_A'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_B'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXTFOTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCIONWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PUBLICARWEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOBARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPAQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_EMPA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PROV3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION_SABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PRODUCTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTURABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCIONES_BOLA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARTICIONADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BENEFICIOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAZA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_ACUMULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_ART'
        ParamType = ptUnknown
      end>
  end
  object COPIA_ART: TZQuery
    Connection = Data
    UpdateObject = zUCOPIA_ART
    SQL.Strings = (
      'select * from MTARTUCULOS_COPIA')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 24
    Top = 576
    object COPIA_ARTCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object COPIA_ARTCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object COPIA_ARTARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object COPIA_ARTMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object COPIA_ARTMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object COPIA_ARTCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object COPIA_ARTCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object COPIA_ARTCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object COPIA_ARTCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object COPIA_ARTCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object COPIA_ARTCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object COPIA_ARTEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object COPIA_ARTITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object COPIA_ARTABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object COPIA_ARTCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object COPIA_ARTCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object COPIA_ARTUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object COPIA_ARTFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object COPIA_ARTPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object COPIA_ARTCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object COPIA_ARTIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object COPIA_ARTCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object COPIA_ARTCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object COPIA_ARTPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object COPIA_ARTPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object COPIA_ARTPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object COPIA_ARTESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object COPIA_ARTEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object COPIA_ARTDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object COPIA_ARTPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object COPIA_ARTCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object COPIA_ARTEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object COPIA_ARTCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object COPIA_ARTCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object COPIA_ARTCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object COPIA_ARTREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object COPIA_ARTCONDICION: TIntegerField
      FieldName = 'CONDICION'
    end
    object COPIA_ARTOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object COPIA_ARTSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object COPIA_ARTSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object COPIA_ARTFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object COPIA_ARTTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object COPIA_ARTFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object COPIA_ARTSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object COPIA_ARTOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object COPIA_ARTPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object COPIA_ARTCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object COPIA_ARTBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object COPIA_ARTMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object COPIA_ARTUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object COPIA_ARTTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object COPIA_ARTFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object COPIA_ARTINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object COPIA_ARTALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
  end
  object DataSource3: TDataSource
    DataSet = COPIA_ART
    Left = 96
    Top = 576
  end
  object TbVendedor: TZQuery
    Connection = Data
    UpdateObject = ZuVEndedores
    SQL.Strings = (
      'select * from vendedores')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 472
    Top = 456
    object TbVendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TbVendedorNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object TbVendedorCEDULA: TWideStringField
      FieldName = 'CEDULA'
      EditMask = '000\-0000000\-0;1;_'
      Size = 13
    end
    object TbVendedorTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 13
    end
    object TbVendedorESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object ZuVEndedores: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM vendedores'
      'WHERE'
      '  vendedores.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO vendedores'
      '  (ID, NOMBRE, CEDULA, TELEFONO, ESTADO)'
      'VALUES'
      '  (:ID, :NOMBRE, :CEDULA, :TELEFONO, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE vendedores SET'
      '  ID = :ID,'
      '  NOMBRE = :NOMBRE,'
      '  CEDULA = :CEDULA,'
      '  TELEFONO = :TELEFONO,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  vendedores.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 496
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEDULA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Zsession: TZQuery
    Connection = Data
    UpdateObject = ZUsession
    SQL.Strings = (
      'select * from TB_SESION')
    Params = <>
    Left = 48
    Top = 504
    object ZsessionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZsessionNOMBRE_SESSION: TWideStringField
      FieldName = 'NOMBRE_SESSION'
      Size = 50
    end
    object ZsessionESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object ZsessionFACTURACION: TWideStringField
      FieldName = 'FACTURACION'
      Size = 2
    end
    object ZsessionCOBRAR: TWideStringField
      FieldName = 'COBRAR'
      Size = 2
    end
    object ZsessionREPORTES: TWideStringField
      FieldName = 'REPORTES'
      Size = 2
    end
    object ZsessionCONSULTAS: TWideStringField
      FieldName = 'CONSULTAS'
      Size = 2
    end
  end
  object ZUsession: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_SESION'
      'WHERE'
      '  TB_SESION.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_SESION'
      
        '  (ID, NOMBRE_SESSION, ESTADO, FACTURACION, COBRAR, REPORTES, CO' +
        'NSULTAS)'
      'VALUES'
      
        '  (:ID, :NOMBRE_SESSION, :ESTADO, :FACTURACION, :COBRAR, :REPORT' +
        'ES, :CONSULTAS)')
    ModifySQL.Strings = (
      'UPDATE TB_SESION SET'
      '  ID = :ID,'
      '  NOMBRE_SESSION = :NOMBRE_SESSION,'
      '  ESTADO = :ESTADO,'
      '  FACTURACION = :FACTURACION,'
      '  COBRAR = :COBRAR,'
      '  REPORTES = :REPORTES,'
      '  CONSULTAS = :CONSULTAS'
      'WHERE'
      '  TB_SESION.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 80
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_SESSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTURACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSULTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object TbRutas: TZQuery
    Connection = Data
    UpdateObject = ZURutas
    SQL.Strings = (
      'select a.*, b.nombre from ruta a'
      'INNER Join vendedores b On a.idvendedor = b.id')
    Params = <>
    WhereMode = wmWhereAll
    Left = 152
    Top = 504
    object TbRutasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TbRutasNOMBRE_RUTA: TWideStringField
      FieldName = 'NOMBRE_RUTA'
      Size = 35
    end
    object TbRutasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
    end
    object TbRutasNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object ZURutas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ruta'
      'WHERE'
      '  ruta.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO ruta'
      '  (ID, NOMBRE_RUTA, IDVENDEDOR)'
      'VALUES'
      '  (:ID, :NOMBRE_RUTA, :IDVENDEDOR)')
    ModifySQL.Strings = (
      'UPDATE ruta SET'
      '  ID = :ID,'
      '  NOMBRE_RUTA = :NOMBRE_RUTA,'
      '  IDVENDEDOR = :IDVENDEDOR'
      'WHERE'
      '  ruta.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_RUTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDVENDEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ZDetalleEfectivo: TZQuery
    Connection = Data
    OnCalcFields = ZDetalleEfectivoCalcFields
    UpdateObject = ZuDetalleEfectivo
    SQL.Strings = (
      'select * from DETALLE_EFECTIVO')
    Params = <>
    MasterFields = 'IDTURNO'
    MasterSource = DsTurno
    LinkedFields = 'IDTURNO'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 472
    Top = 400
    object ZDetalleEfectivoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZDetalleEfectivoIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object ZDetalleEfectivoIDNOMINACION: TIntegerField
      FieldName = 'IDNOMINACION'
    end
    object ZDetalleEfectivoCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object ZDetalleEfectivoTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ZDetalleEfectivoNOMINACION: TIntegerField
      FieldName = 'NOMINACION'
    end
  end
  object DsTurno: TDataSource
    DataSet = ZTurno
    Left = 456
    Top = 352
  end
  object ZuDetalleEfectivo: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM DETALLE_EFECTIVO'
      'WHERE'
      '  DETALLE_EFECTIVO.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO DETALLE_EFECTIVO'
      '  (ID, IDTURNO, IDNOMINACION, NOMINACION, CANTIDAD)'
      'VALUES'
      '  (:ID, :IDTURNO, :IDNOMINACION, :NOMINACION, :CANTIDAD)')
    ModifySQL.Strings = (
      'UPDATE DETALLE_EFECTIVO SET'
      '  ID = :ID,'
      '  IDTURNO = :IDTURNO,'
      '  IDNOMINACION = :IDNOMINACION,'
      '  NOMINACION = :NOMINACION,'
      '  CANTIDAD = :CANTIDAD'
      'WHERE'
      '  DETALLE_EFECTIVO.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 520
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDNOMINACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMINACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QPagoTarjeta: TZQuery
    Connection = Data
    UpdateObject = ZUpagoxtarjeta
    SQL.Strings = (
      'select * from PAGOXTARJETA')
    Params = <>
    MasterFields = 'NO_FACT'
    MasterSource = DsMaster_Fact
    LinkedFields = 'MASTERID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 712
    Top = 528
    object QPagoTarjetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QPagoTarjetaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object QPagoTarjetaMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object QPagoTarjetaNO_REFERENCIA: TWideStringField
      FieldName = 'NO_REFERENCIA'
    end
    object QPagoTarjetaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object QPagoTarjetaCARACTERISTICA: TWideStringField
      FieldName = 'CARACTERISTICA'
      Size = 15
    end
    object QPagoTarjetaIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object QPagoTarjetaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QPagoTarjetaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object ZUpagoxtarjeta: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PAGOXTARJETA'
      'WHERE'
      '  PAGOXTARJETA.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PAGOXTARJETA'
      
        '  (ID, IDUSUARIO, MASTERID, NO_REFERENCIA, TIPO, CARACTERISTICA,' +
        ' IDTURNO, '
      '   FECHA, ESTADO)'
      'VALUES'
      
        '  (:ID, :IDUSUARIO, :MASTERID, :NO_REFERENCIA, :TIPO, :CARACTERI' +
        'STICA, '
      '   :IDTURNO, :FECHA, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE PAGOXTARJETA SET'
      '  ID = :ID,'
      '  IDUSUARIO = :IDUSUARIO,'
      '  MASTERID = :MASTERID,'
      '  NO_REFERENCIA = :NO_REFERENCIA,'
      '  TIPO = :TIPO,'
      '  CARACTERISTICA = :CARACTERISTICA,'
      '  IDTURNO = :IDTURNO,'
      '  FECHA = :FECHA,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  PAGOXTARJETA.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 744
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_REFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARACTERISTICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QPagoCK: TZQuery
    Connection = Data
    UpdateObject = ZUPagoCK
    SQL.Strings = (
      'select * from PAGOSXCHEQUE')
    Params = <>
    Left = 720
    Top = 592
    object QPagoCKID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QPagoCKIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object QPagoCKIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object QPagoCKMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object QPagoCKBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object QPagoCKNOCK: TIntegerField
      FieldName = 'NOCK'
    end
    object QPagoCKFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QPagoCKESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QPagoCKIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
  end
  object ZUPagoCK: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PAGOSXCHEQUE'
      'WHERE'
      '  PAGOSXCHEQUE.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PAGOSXCHEQUE'
      
        '  (ID, IDMASTER, IDTURNO, MONTO, BANCO, NOCK, FECHA, ESTADO, IDU' +
        'SUARIO)'
      'VALUES'
      
        '  (:ID, :IDMASTER, :IDTURNO, :MONTO, :BANCO, :NOCK, :FECHA, :EST' +
        'ADO, :IDUSUARIO)')
    ModifySQL.Strings = (
      'UPDATE PAGOSXCHEQUE SET'
      '  ID = :ID,'
      '  IDMASTER = :IDMASTER,'
      '  IDTURNO = :IDTURNO,'
      '  MONTO = :MONTO,'
      '  BANCO = :BANCO,'
      '  NOCK = :NOCK,'
      '  FECHA = :FECHA,'
      '  ESTADO = :ESTADO,'
      '  IDUSUARIO = :IDUSUARIO'
      'WHERE'
      '  PAGOSXCHEQUE.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 760
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QAlmacen: TZQuery
    Connection = Data
    UpdateObject = ZuAlmacen1
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 576
    Top = 520
    object QAlmacenID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QAlmacenDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object ZuAlmacen1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM almacenes'
      'WHERE'
      '  almacenes.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO almacenes'
      '  (ID, DESCRIPCION)'
      'VALUES'
      '  (:ID, :DESCRIPCION)')
    ModifySQL.Strings = (
      'UPDATE almacenes SET'
      '  ID = :ID,'
      '  DESCRIPCION = :DESCRIPCION'
      'WHERE'
      '  almacenes.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 608
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
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
      
        '   TOTAL, COD_ART, UNID, COMBO, ARTICULOID, ANCHO, ALTO, TITULOP' +
        'RN, UNIDADID, '
      
        '   ITBS_ART, EX, IDALMACEN, BARRA, IDTECNICO, DESC, OP, EXIST1, ' +
        'LEY, ADICIONAL, '
      
        '   FRACCION, LINEA, ITB3, LIN, PORCENTDESC, IBSAPLICADO, PORCDES' +
        'CUENTO)'
      'VALUES'
      
        '  (:NO_FACT, :NO_FACT1, :MASTERID, :CANTIDAD, :PRECIO, :IMPUESTO' +
        ', :ITBS, '
      
        '   :ITBIS2, :TOTAL, :COD_ART, :UNID, :COMBO, :ARTICULOID, :ANCHO' +
        ', :ALTO, '
      
        '   :TITULOPRN, :UNIDADID, :ITBS_ART, :EX, :IDALMACEN, :BARRA, :I' +
        'DTECNICO, '
      
        '   :DESC, :OP, :EXIST1, :LEY, :ADICIONAL, :FRACCION, :LINEA, :IT' +
        'B3, :LIN, '
      '   :PORCENTDESC, :IBSAPLICADO, :PORCDESCUENTO)')
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
      '  DESC = :DESC,'
      '  OP = :OP,'
      '  EXIST1 = :EXIST1,'
      '  LEY = :LEY,'
      '  ADICIONAL = :ADICIONAL,'
      '  FRACCION = :FRACCION,'
      '  LINEA = :LINEA,'
      '  ITB3 = :ITB3,'
      '  LIN = :LIN,'
      '  PORCENTDESC = :PORCENTDESC,'
      '  IBSAPLICADO = :IBSAPLICADO,'
      '  PORCDESCUENTO = :PORCDESCUENTO'
      'WHERE'
      '  detailfact.NO_FACT = :OLD_NO_FACT')
    UseSequenceFieldForRefreshSQL = False
    Left = 792
    Top = 112
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
        Name = 'DESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXIST1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADICIONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FRACCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LINEA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITB3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORCENTDESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IBSAPLICADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORCDESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object ZMoneda: TZQuery
    Connection = Data
    UpdateObject = ZuMoneda
    SQL.Strings = (
      'select * from Tb_moneda')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 752
    Top = 472
    object ZMonedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZMonedaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object ZMonedaSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
  end
  object ZuMoneda: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Tb_moneda'
      'WHERE'
      '  Tb_moneda.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO Tb_moneda'
      '  (ID, MONEDA, SIGNO)'
      'VALUES'
      '  (:ID, :MONEDA, :SIGNO)')
    ModifySQL.Strings = (
      'UPDATE Tb_moneda SET'
      '  ID = :ID,'
      '  MONEDA = :MONEDA,'
      '  SIGNO = :SIGNO'
      'WHERE'
      '  Tb_moneda.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 800
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Zbancos: TZQuery
    Connection = Data
    UpdateObject = ZuBancos
    SQL.Strings = (
      'select a.*, b.signo from tb_bancos a'
      'left join tb_moneda b on a.moneda = b.id')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 864
    Top = 128
    object ZbancosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZbancosBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object ZbancosMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object ZbancosSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
    object ZbancosNO_CTA: TWideStringField
      FieldName = 'NO_CTA'
      Size = 15
    end
  end
  object ZuBancos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tb_bancos'
      'WHERE'
      '  tb_bancos.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO tb_bancos'
      '  (ID, BANCO, MONEDA, NO_CTA)'
      'VALUES'
      '  (:ID, :BANCO, :MONEDA, :NO_CTA)')
    ModifySQL.Strings = (
      'UPDATE tb_bancos SET'
      '  ID = :ID,'
      '  BANCO = :BANCO,'
      '  MONEDA = :MONEDA,'
      '  NO_CTA = :NO_CTA'
      'WHERE'
      '  tb_bancos.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 936
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_CTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ztIPOtRANS: TZQuery
    Connection = Data
    UpdateObject = ZuTTrans
    SQL.Strings = (
      'select * from TB_TIPOTRANS')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 904
    Top = 176
    object ztIPOtRANSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ztIPOtRANSTRANSACION: TWideStringField
      FieldName = 'TRANSACION'
      Size = 40
    end
  end
  object ZuTTrans: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_TIPOTRANS'
      'WHERE'
      '  TB_TIPOTRANS.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_TIPOTRANS'
      '  (ID, TRANSACION)'
      'VALUES'
      '  (:ID, :TRANSACION)')
    ModifySQL.Strings = (
      'UPDATE TB_TIPOTRANS SET'
      '  ID = :ID,'
      '  TRANSACION = :TRANSACION'
      'WHERE'
      '  TB_TIPOTRANS.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 936
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TRANSACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ZTBanco: TZQuery
    Connection = Data
    UpdateObject = ZuTBanco
    SQL.Strings = (
      'select a.*, b.transacion, c.banco, c.no_cta from TB_TBANCO a'
      'inner join tb_tipotrans b On a.id_tipotrans = b.id'
      'inner join tb_bancos c On a.idbanco = c.id')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 904
    Top = 224
    object ZTBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZTBancoID_TIPOTRANS: TIntegerField
      FieldName = 'ID_TIPOTRANS'
    end
    object ZTBancoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ZTBancoIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
    end
    object ZTBancoMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object ZTBancoOBSERVACION: TWideMemoField
      FieldName = 'OBSERVACION'
      BlobType = ftWideMemo
    end
    object ZTBancoCTA_CONTABLE: TWideStringField
      FieldName = 'CTA_CONTABLE'
      Size = 15
    end
    object ZTBancoTRANSACION: TWideStringField
      FieldName = 'TRANSACION'
      Size = 40
    end
    object ZTBancoBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object ZTBancoNO_CTA: TWideStringField
      FieldName = 'NO_CTA'
      Size = 15
    end
    object ZTBancoFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object ZuTBanco: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_TBANCO'
      'WHERE'
      '  TB_TBANCO.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_TBANCO'
      
        '  (ID, FECHA, ID_TIPOTRANS, TIPO, IDBANCO, MONTO, OBSERVACION, C' +
        'TA_CONTABLE)'
      'VALUES'
      
        '  (:ID, :FECHA, :ID_TIPOTRANS, :TIPO, :IDBANCO, :MONTO, :OBSERVA' +
        'CION, :CTA_CONTABLE)')
    ModifySQL.Strings = (
      'UPDATE TB_TBANCO SET'
      '  ID = :ID,'
      '  FECHA = :FECHA,'
      '  ID_TIPOTRANS = :ID_TIPOTRANS,'
      '  TIPO = :TIPO,'
      '  IDBANCO = :IDBANCO,'
      '  MONTO = :MONTO,'
      '  OBSERVACION = :OBSERVACION,'
      '  CTA_CONTABLE = :CTA_CONTABLE'
      'WHERE'
      '  TB_TBANCO.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 936
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TIPOTRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CTA_CONTABLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object MRma: TZQuery
    Connection = Data
    UpdateObject = ZuMRma
    SQL.Strings = (
      
        'select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d' +
        '.tipoequipo  from rmam a'
      'left join cliente b on a.idcliente = b.codigo'
      
        'left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo='#39 +
        'INSTALADOR'#39
      'left join tipoequipo d on a.idtipoequipo = d.id')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 264
    Top = 472
    object MRmaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object MRmaNOORDEN: TIntegerField
      FieldName = 'NOORDEN'
    end
    object MRmaFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object MRmaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object MRmaIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object MRmaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object MRmaNO_SERIAL: TWideStringField
      FieldName = 'NO_SERIAL'
    end
    object MRmaIDTIPOEQUIPO: TIntegerField
      FieldName = 'IDTIPOEQUIPO'
    end
    object MRmaIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object MRmaFALLAEQUIPO: TWideMemoField
      FieldName = 'FALLAEQUIPO'
      BlobType = ftWideMemo
    end
    object MRmaOBSERVACIONTECNICA: TWideMemoField
      FieldName = 'OBSERVACIONTECNICA'
      BlobType = ftWideMemo
    end
    object MRmaOBSERVACIONEQUIPO: TWideMemoField
      FieldName = 'OBSERVACIONEQUIPO'
      BlobType = ftWideMemo
    end
    object MRmaFECHA_PROMETIDA: TDateField
      FieldName = 'FECHA_PROMETIDA'
    end
    object MRmaESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 15
    end
    object MRmaMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object MRmaNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 100
    end
    object MRmaDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object MRmaTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object MRmaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object MRmaTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object ZuMRma: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM rmam'
      'WHERE'
      '  rmam.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO rmam'
      
        '  (ID, NOORDEN, FECHA_ENTRADA, IDCLIENTE, IDTECNICO, HORAENTRADA' +
        ', NO_SERIAL, '
      
        '   IDTIPOEQUIPO, IDMARCA, FALLAEQUIPO, OBSERVACIONEQUIPO, OBSERV' +
        'ACIONTECNICA, '
      '   FECHA_PROMETIDA, ESTADO, MONTO)'
      'VALUES'
      
        '  (:ID, :NOORDEN, :FECHA_ENTRADA, :IDCLIENTE, :IDTECNICO, :HORAE' +
        'NTRADA, '
      
        '   :NO_SERIAL, :IDTIPOEQUIPO, :IDMARCA, :FALLAEQUIPO, :OBSERVACI' +
        'ONEQUIPO, '
      '   :OBSERVACIONTECNICA, :FECHA_PROMETIDA, :ESTADO, :MONTO)')
    ModifySQL.Strings = (
      'UPDATE rmam SET'
      '  ID = :ID,'
      '  NOORDEN = :NOORDEN,'
      '  FECHA_ENTRADA = :FECHA_ENTRADA,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  IDTECNICO = :IDTECNICO,'
      '  HORAENTRADA = :HORAENTRADA,'
      '  NO_SERIAL = :NO_SERIAL,'
      '  IDTIPOEQUIPO = :IDTIPOEQUIPO,'
      '  IDMARCA = :IDMARCA,'
      '  FALLAEQUIPO = :FALLAEQUIPO,'
      '  OBSERVACIONEQUIPO = :OBSERVACIONEQUIPO,'
      '  OBSERVACIONTECNICA = :OBSERVACIONTECNICA,'
      '  FECHA_PROMETIDA = :FECHA_PROMETIDA,'
      '  ESTADO = :ESTADO,'
      '  MONTO = :MONTO'
      'WHERE'
      '  rmam.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 296
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_ENTRADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTECNICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORAENTRADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_SERIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIPOEQUIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FALLAEQUIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONEQUIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONTECNICA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_PROMETIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object zTipoEquipos: TZQuery
    Connection = Data
    UpdateObject = ZuTipoEquipos
    SQL.Strings = (
      'select * from TIPOEQUIPO')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 264
    Top = 440
    object zTipoEquiposID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zTipoEquiposTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object ZuTipoEquipos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TIPOEQUIPO'
      'WHERE'
      '  TIPOEQUIPO.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TIPOEQUIPO'
      '  (ID, TIPOEQUIPO)'
      'VALUES'
      '  (:ID, :TIPOEQUIPO)')
    ModifySQL.Strings = (
      'UPDATE TIPOEQUIPO SET'
      '  ID = :ID,'
      '  TIPOEQUIPO = :TIPOEQUIPO'
      'WHERE'
      '  TIPOEQUIPO.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 288
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOEQUIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object RMAD: TZQuery
    Connection = Data
    OnCalcFields = RMADCalcFields
    UpdateObject = ZuRMaD
    SQL.Strings = (
      'select a.*, b.articulo from rmad a'
      'left join mtartuculos b on a.idarticulo = b.cod_art')
    Params = <>
    MasterFields = 'ID'
    MasterSource = DsRma
    LinkedFields = 'IDMASTER'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 368
    Top = 488
    object RMADID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object RMADIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object RMADIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object RMADCANT: TFloatField
      FieldName = 'CANT'
    end
    object RMADPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object RMADITB: TFloatField
      FieldName = 'ITB'
      currency = True
    end
    object RMADTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      currency = True
      Calculated = True
    end
    object RMADESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object RMADARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object RMADARTICULOTXT: TWideStringField
      FieldName = 'ARTICULOTXT'
      Size = 100
    end
  end
  object ZuRMaD: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM rmad'
      'WHERE'
      '  rmad.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO rmad'
      
        '  (ID, IDMASTER, IDARTICULO, CANT, PRECIO, ITB, TOTAL, ESTADOS, ' +
        'ARTICULOTXT)'
      'VALUES'
      
        '  (:ID, :IDMASTER, :IDARTICULO, :CANT, :PRECIO, :ITB, :TOTAL, :E' +
        'STADOS, '
      '   :ARTICULOTXT)')
    ModifySQL.Strings = (
      'UPDATE rmad SET'
      '  ID = :ID,'
      '  IDMASTER = :IDMASTER,'
      '  IDARTICULO = :IDARTICULO,'
      '  CANT = :CANT,'
      '  PRECIO = :PRECIO,'
      '  ITB = :ITB,'
      '  TOTAL = :TOTAL,'
      '  ESTADOS = :ESTADOS,'
      '  ARTICULOTXT = :ARTICULOTXT'
      'WHERE'
      '  rmad.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 400
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOTXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsRma: TDataSource
    DataSet = MRma
    Left = 232
    Top = 528
  end
  object ConduceM: TZQuery
    Connection = Data
    UpdateObject = ZUConduceM
    SQL.Strings = (
      'select * from ConduceM')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 864
    Top = 496
    object ConduceMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ConduceMIDCONDUCE: TIntegerField
      FieldName = 'IDCONDUCE'
    end
    object ConduceMHORA: TTimeField
      FieldName = 'HORA'
    end
    object ConduceMFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ConduceMCLIENTES: TWideStringField
      FieldName = 'CLIENTES'
      Size = 100
    end
    object ConduceMNOFACT: TIntegerField
      FieldName = 'NOFACT'
    end
    object ConduceMESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object ZUConduceM: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ConduceM'
      'WHERE'
      '  ConduceM.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO ConduceM'
      '  (ID, IDCONDUCE, FECHA, HORA, CLIENTES, NOFACT, ESTADO)'
      'VALUES'
      '  (:ID, :IDCONDUCE, :FECHA, :HORA, :CLIENTES, :NOFACT, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE ConduceM SET'
      '  ID = :ID,'
      '  IDCONDUCE = :IDCONDUCE,'
      '  FECHA = :FECHA,'
      '  HORA = :HORA,'
      '  CLIENTES = :CLIENTES,'
      '  NOFACT = :NOFACT,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  ConduceM.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 904
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCONDUCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsConduceM: TDataSource
    DataSet = ConduceM
    Left = 952
    Top = 504
  end
  object ConduceD: TZQuery
    Connection = Data
    OnCalcFields = ConduceDCalcFields
    UpdateObject = ZUConduceD
    SQL.Strings = (
      'select a.*, b.articulo from CONDEM a'
      'left join mtartuculos b on A.cod_art = b.articulo')
    Params = <>
    MasterFields = 'ID'
    MasterSource = DsConduceM
    LinkedFields = 'MASTERID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 864
    Top = 552
    object ConduceDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ConduceDMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object ConduceDCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ConduceDCANTI: TFloatField
      FieldName = 'CANTI'
    end
    object ConduceDCANT_REST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CANT_REST'
      Calculated = True
    end
    object ConduceDCANT_SAL: TFloatField
      FieldName = 'CANT_SAL'
    end
    object ConduceDPRECIO_ST: TFloatField
      FieldName = 'PRECIO_ST'
    end
    object ConduceDITB: TFloatField
      FieldName = 'ITB'
    end
    object ConduceDTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object ConduceDESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ConduceDARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
  end
  object ZUConduceD: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CONDEM'
      'WHERE'
      '  CONDEM.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO CONDEM'
      
        '  (ID, MASTERID, COD_ART, CANTI, CANT_REST, CANT_SAL, PRECIO_ST,' +
        ' ITB, TOTAL, '
      '   ESTADO)'
      'VALUES'
      
        '  (:ID, :MASTERID, :COD_ART, :CANTI, :CANT_REST, :CANT_SAL, :PRE' +
        'CIO_ST, '
      '   :ITB, :TOTAL, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE CONDEM SET'
      '  ID = :ID,'
      '  MASTERID = :MASTERID,'
      '  COD_ART = :COD_ART,'
      '  CANTI = :CANTI,'
      '  CANT_REST = :CANT_REST,'
      '  CANT_SAL = :CANT_SAL,'
      '  PRECIO_ST = :PRECIO_ST,'
      '  ITB = :ITB,'
      '  TOTAL = :TOTAL,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  CONDEM.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 904
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_REST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT_SAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ComisionInstalador: TZQuery
    Connection = Data
    UpdateObject = ZuComision
    SQL.Strings = (
      'select * from COMISIONINSTALADOR')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 280
    Top = 528
    object ComisionInstaladorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ComisionInstaladorID_EMP: TIntegerField
      FieldName = 'ID_EMP'
    end
    object ComisionInstaladorID_FACT: TIntegerField
      FieldName = 'ID_FACT'
    end
    object ComisionInstaladorMONTOSERVICIO: TFloatField
      FieldName = 'MONTOSERVICIO'
      currency = True
    end
    object ComisionInstaladorMONTOCOMISION: TFloatField
      FieldName = 'MONTOCOMISION'
      currency = True
    end
    object ComisionInstaladorESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ComisionInstaladorFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object ZuComision: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM COMISIONINSTALADOR'
      'WHERE'
      '  COMISIONINSTALADOR.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO COMISIONINSTALADOR'
      
        '  (ID, ID_EMP, ID_FACT, MONTOSERVICIO, MONTOCOMISION, ESTADO, FE' +
        'CHA)'
      'VALUES'
      
        '  (:ID, :ID_EMP, :ID_FACT, :MONTOSERVICIO, :MONTOCOMISION, :ESTA' +
        'DO, :FECHA)')
    ModifySQL.Strings = (
      'UPDATE COMISIONINSTALADOR SET'
      '  ID = :ID,'
      '  ID_EMP = :ID_EMP,'
      '  ID_FACT = :ID_FACT,'
      '  MONTOSERVICIO = :MONTOSERVICIO,'
      '  MONTOCOMISION = :MONTOCOMISION,'
      '  ESTADO = :ESTADO,'
      '  FECHA = :FECHA'
      'WHERE'
      '  COMISIONINSTALADOR.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 312
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOSERVICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOCOMISION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QNotarios: TZQuery
    Connection = Data
    UpdateObject = ZUNotarios
    SQL.Strings = (
      'select * from MAN_PROVEDORES')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 912
    Top = 24
    object QNotariosCOD_PROV: TIntegerField
      FieldName = 'COD_PROV'
      Required = True
    end
    object QNotariosNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 30
    end
    object QNotariosNOM_CONTACTO: TWideStringField
      FieldName = 'NOM_CONTACTO'
      Size = 35
    end
    object QNotariosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 45
    end
    object QNotariosTELF1: TWideStringField
      FieldName = 'TELF1'
      Size = 13
    end
    object QNotariosTELF2: TWideStringField
      FieldName = 'TELF2'
      Size = 13
    end
    object QNotariosEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 45
    end
    object QNotariosWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 100
    end
  end
  object ZUNotarios: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MAN_PROVEDORES'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    InsertSQL.Strings = (
      'INSERT INTO MAN_PROVEDORES'
      
        '  (COD_PROV, NOMBRE_PRO, NOM_CONTACTO, DIRECCION, TELF1, TELF2, ' +
        'EMAIL, '
      '   WEBSITE)'
      'VALUES'
      
        '  (:COD_PROV, :NOMBRE_PRO, :NOM_CONTACTO, :DIRECCION, :TELF1, :T' +
        'ELF2, :EMAIL, '
      '   :WEBSITE)')
    ModifySQL.Strings = (
      'UPDATE MAN_PROVEDORES SET'
      '  COD_PROV = :COD_PROV,'
      '  NOMBRE_PRO = :NOMBRE_PRO,'
      '  NOM_CONTACTO = :NOM_CONTACTO,'
      '  DIRECCION = :DIRECCION,'
      '  TELF1 = :TELF1,'
      '  TELF2 = :TELF2,'
      '  EMAIL = :EMAIL,'
      '  WEBSITE = :WEBSITE'
      'WHERE'
      '  MAN_PROVEDORES.COD_PROV = :OLD_COD_PROV')
    UseSequenceFieldForRefreshSQL = False
    Left = 944
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CONTACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELF2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WEBSITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_PROV'
        ParamType = ptUnknown
      end>
  end
  object QModulos: TZQuery
    Connection = Data
    UpdateObject = ZuModulos
    SQL.Strings = (
      'select * from TB_MODULOS')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 912
    Top = 280
    object QModulosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QModulosNOMBRE_PANTALLAS: TWideStringField
      FieldName = 'NOMBRE_PANTALLAS'
      Size = 50
    end
    object QModulosNOMBRE_FORM: TWideStringField
      FieldName = 'NOMBRE_FORM'
      Size = 30
    end
    object QModulosSECCION: TWideStringField
      FieldName = 'SECCION'
      Size = 15
    end
    object QModulosBOTON: TWideStringField
      FieldName = 'BOTON'
      Size = 15
    end
    object QModulosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object QModulosIDNIVEL: TIntegerField
      FieldName = 'IDNIVEL'
    end
  end
  object ZuModulos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_MODULOS'
      'WHERE'
      '  TB_MODULOS.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_MODULOS'
      
        '  (ID, NOMBRE_PANTALLAS, NOMBRE_FORM, SECCION, BOTON, ESTADO, ID' +
        'NIVEL)'
      'VALUES'
      
        '  (:ID, :NOMBRE_PANTALLAS, :NOMBRE_FORM, :SECCION, :BOTON, :ESTA' +
        'DO, :IDNIVEL)')
    ModifySQL.Strings = (
      'UPDATE TB_MODULOS SET'
      '  ID = :ID,'
      '  NOMBRE_PANTALLAS = :NOMBRE_PANTALLAS,'
      '  NOMBRE_FORM = :NOMBRE_FORM,'
      '  SECCION = :SECCION,'
      '  BOTON = :BOTON,'
      '  ESTADO = :ESTADO,'
      '  IDNIVEL = :IDNIVEL'
      'WHERE'
      '  TB_MODULOS.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 960
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PANTALLAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_FORM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BOTON'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDNIVEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Qperfil: TZQuery
    Connection = Data
    UpdateObject = ZuPerfil
    SQL.Strings = (
      'select a.*, b.seccion from TB_PERFIL a'
      'left join tb_modulos b On a.idmodulo = b.id')
    Params = <>
    MasterFields = 'USUARIOID'
    MasterSource = DsUsuario
    LinkedFields = 'IDNIVEL'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1096
    Top = 288
    object QperfilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QperfilNOMBRE_PANTALLAS: TWideStringField
      FieldName = 'NOMBRE_PANTALLAS'
      Size = 50
    end
    object QperfilNOMBRE_FORM: TWideStringField
      FieldName = 'NOMBRE_FORM'
      Size = 30
    end
    object QperfilSECCION: TWideStringField
      FieldName = 'SECCION'
      Size = 15
    end
    object QperfilBOTON: TWideStringField
      FieldName = 'BOTON'
      Size = 15
    end
    object QperfilESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object QperfilIDNIVEL: TIntegerField
      FieldName = 'IDNIVEL'
    end
    object QperfilIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
    end
    object QperfilSECCION_1: TWideStringField
      FieldName = 'SECCION_1'
      Size = 15
    end
  end
  object ZuPerfil: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_PERFIL'
      'WHERE'
      '  TB_PERFIL.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_PERFIL'
      
        '  (ID, NOMBRE_PANTALLAS, NOMBRE_FORM, SECCION, BOTON, ESTADO, ID' +
        'NIVEL, '
      '   IDMODULO)'
      'VALUES'
      
        '  (:ID, :NOMBRE_PANTALLAS, :NOMBRE_FORM, :SECCION, :BOTON, :ESTA' +
        'DO, :IDNIVEL, '
      '   :IDMODULO)')
    ModifySQL.Strings = (
      'UPDATE TB_PERFIL SET'
      '  ID = :ID,'
      '  NOMBRE_PANTALLAS = :NOMBRE_PANTALLAS,'
      '  NOMBRE_FORM = :NOMBRE_FORM,'
      '  SECCION = :SECCION,'
      '  BOTON = :BOTON,'
      '  ESTADO = :ESTADO,'
      '  IDNIVEL = :IDNIVEL,'
      '  IDMODULO = :IDMODULO'
      'WHERE'
      '  TB_PERFIL.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1056
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_PANTALLAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE_FORM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BOTON'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDNIVEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMODULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsUsuario: TDataSource
    DataSet = ZUsaurios
    Left = 1096
    Top = 240
  end
  object QCalificaciones: TZQuery
    Connection = Data
    UpdateObject = ZUCalificaciones
    SQL.Strings = (
      'select * from DB_SABORES')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1056
    Top = 48
    object QCalificacionesID_SABOR: TIntegerField
      FieldName = 'ID_SABOR'
      Required = True
    end
    object QCalificacionesIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object QCalificacionesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object QCalificacionesIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object QCalificacionesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QCalificacionesCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object QCalificacionesSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object QCalificacionesSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
    object QCalificacionesSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object QCalificacionesOP: TIntegerField
      FieldName = 'OP'
    end
    object QCalificacionesCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object QCalificacionesPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object QCalificacionesCOSTO_PROMEDIO: TFloatField
      FieldName = 'COSTO_PROMEDIO'
    end
  end
  object ZUCalificaciones: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM DB_SABORES'
      'WHERE'
      '  DB_SABORES.ID_SABOR = :OLD_ID_SABOR')
    InsertSQL.Strings = (
      'INSERT INTO DB_SABORES'
      
        '  (ID_SABOR, IDARTICULO, DESCRIPCION, IMAGEN, ESTADO, COD_CAT, S' +
        'TOCK, STOCK_MIN, '
      '   STOCK_MAX, OP, COSTOS, PRECIO, COSTO_PROMEDIO)'
      'VALUES'
      
        '  (:ID_SABOR, :IDARTICULO, :DESCRIPCION, :IMAGEN, :ESTADO, :COD_' +
        'CAT, :STOCK, '
      
        '   :STOCK_MIN, :STOCK_MAX, :OP, :COSTOS, :PRECIO, :COSTO_PROMEDI' +
        'O)')
    ModifySQL.Strings = (
      'UPDATE DB_SABORES SET'
      '  ID_SABOR = :ID_SABOR,'
      '  IDARTICULO = :IDARTICULO,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  IMAGEN = :IMAGEN,'
      '  ESTADO = :ESTADO,'
      '  COD_CAT = :COD_CAT,'
      '  STOCK = :STOCK,'
      '  STOCK_MIN = :STOCK_MIN,'
      '  STOCK_MAX = :STOCK_MAX,'
      '  OP = :OP,'
      '  COSTOS = :COSTOS,'
      '  PRECIO = :PRECIO,'
      '  COSTO_PROMEDIO = :COSTO_PROMEDIO'
      'WHERE'
      '  DB_SABORES.ID_SABOR = :OLD_ID_SABOR')
    UseSequenceFieldForRefreshSQL = False
    Left = 1104
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SABOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PROMEDIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_SABOR'
        ParamType = ptUnknown
      end>
  end
  object SQLCocina: TZQuery
    Connection = Data
    UpdateObject = ZUCocina
    SQL.Strings = (
      'select * from ENVIOCOCINA')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = DsMaster_Fact
    LinkedFields = 'NO_ORDEN'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 992
    Top = 152
    object SQLCocinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLCocinaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object SQLCocinaNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object SQLCocinaHORA: TTimeField
      FieldName = 'HORA'
    end
    object SQLCocinaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object SQLCocinaORDEN: TWideMemoField
      FieldName = 'ORDEN'
      BlobType = ftWideMemo
    end
    object SQLCocinaTIEMPO: TIntegerField
      FieldName = 'TIEMPO'
    end
    object SQLCocinaTIEMPO_RESTANTA: TTimeField
      FieldName = 'TIEMPO_RESTANTA'
    end
    object SQLCocinaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object SQLCocinaMESERO: TWideStringField
      FieldName = 'MESERO'
      Size = 50
    end
    object SQLCocinaMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
  end
  object ZUCocina: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ENVIOCOCINA'
      'WHERE'
      '  ENVIOCOCINA.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO ENVIOCOCINA'
      
        '  (ID, FECHA, NO_ORDEN, HORA, CLIENTE, ORDEN, TIEMPO, TIEMPO_RES' +
        'TANTA, '
      '   ESTADO, MESERO, MASTERID)'
      'VALUES'
      
        '  (:ID, :FECHA, :NO_ORDEN, :HORA, :CLIENTE, :ORDEN, :TIEMPO, :TI' +
        'EMPO_RESTANTA, '
      '   :ESTADO, :MESERO, :MASTERID)')
    ModifySQL.Strings = (
      'UPDATE ENVIOCOCINA SET'
      '  ID = :ID,'
      '  FECHA = :FECHA,'
      '  NO_ORDEN = :NO_ORDEN,'
      '  HORA = :HORA,'
      '  CLIENTE = :CLIENTE,'
      '  ORDEN = :ORDEN,'
      '  TIEMPO = :TIEMPO,'
      '  TIEMPO_RESTANTA = :TIEMPO_RESTANTA,'
      '  ESTADO = :ESTADO,'
      '  MESERO = :MESERO,'
      '  MASTERID = :MASTERID'
      'WHERE'
      '  ENVIOCOCINA.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1032
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIEMPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIEMPO_RESTANTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MESERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object SqlDCocina: TZQuery
    Connection = Data
    UpdateObject = ZUSqlUCocina
    SQL.Strings = (
      'select * from D_ENVIOCOCINA')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = DsMaster_Fact
    LinkedFields = 'NO_ORDEN'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1000
    Top = 208
    object SqlDCocinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SqlDCocinaNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object SqlDCocinaPRODUCTOS: TWideMemoField
      FieldName = 'PRODUCTOS'
      BlobType = ftWideMemo
    end
    object SqlDCocinaCANT: TIntegerField
      FieldName = 'CANT'
    end
    object SqlDCocinaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object SqlDCocinaIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
  end
  object ZUSqlUCocina: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM D_ENVIOCOCINA'
      'WHERE'
      '  D_ENVIOCOCINA.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO D_ENVIOCOCINA'
      '  (ID, NO_ORDEN, PRODUCTOS, CANT, ESTADO, IDMASTER)'
      'VALUES'
      '  (:ID, :NO_ORDEN, :PRODUCTOS, :CANT, :ESTADO, :IDMASTER)')
    ModifySQL.Strings = (
      'UPDATE D_ENVIOCOCINA SET'
      '  ID = :ID,'
      '  NO_ORDEN = :NO_ORDEN,'
      '  PRODUCTOS = :PRODUCTOS,'
      '  CANT = :CANT,'
      '  ESTADO = :ESTADO,'
      '  IDMASTER = :IDMASTER'
      'WHERE'
      '  D_ENVIOCOCINA.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1032
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUCTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsSqlCocina: TDataSource
    DataSet = SQLCocina
    Left = 1072
    Top = 160
  end
  object TPagoCXP: TZQuery
    Connection = Data
    UpdateObject = ZuPagoCXP
    SQL.Strings = (
      
        'select a.*,b.descripcion, b.telefono, c.banco, c.no_cta from PAG' +
        'OCXP a'
      'left join fabricantes b On A.idprov = b.cod'
      'left join tb_bancos c On a.idbanco = c.id')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 240
    Top = 584
    object TPagoCXPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TPagoCXPFECHA: TDateField
      FieldName = 'FECHA'
    end
    object TPagoCXPIDPROV: TIntegerField
      FieldName = 'IDPROV'
    end
    object TPagoCXPMONTOPAGADO: TFloatField
      FieldName = 'MONTOPAGADO'
      currency = True
    end
    object TPagoCXPLETRAS: TWideStringField
      FieldName = 'LETRAS'
      Size = 200
    end
    object TPagoCXPFORMAPAGO: TWideStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object TPagoCXPNOTRANS: TWideStringField
      FieldName = 'NOTRANS'
      Size = 30
    end
    object TPagoCXPPAGADOA: TWideStringField
      FieldName = 'PAGADOA'
      Size = 100
    end
    object TPagoCXPIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
    end
    object TPagoCXPIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
    end
    object TPagoCXPFACTURAAFECTADA: TWideStringField
      FieldName = 'FACTURAAFECTADA'
      Size = 25
    end
    object TPagoCXPIDFACT: TIntegerField
      FieldName = 'IDFACT'
    end
    object TPagoCXPDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object TPagoCXPTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 12
    end
    object TPagoCXPNORECIBO: TWideStringField
      FieldName = 'NORECIBO'
      Size = 15
    end
    object TPagoCXPBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object TPagoCXPNO_CTA: TWideStringField
      FieldName = 'NO_CTA'
      Size = 15
    end
    object TPagoCXPCONCEPTOS: TWideStringField
      FieldName = 'CONCEPTOS'
      Size = 100
    end
  end
  object ZuPagoCXP: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PAGOCXP'
      'WHERE'
      '  PAGOCXP.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PAGOCXP'
      
        '  (ID, FECHA, IDPROV, MONTOPAGADO, LETRAS, FORMAPAGO, NOTRANS, P' +
        'AGADOA, '
      
        '   IDBANCO, IDCUENTA, FACTURAAFECTADA, IDFACT, NORECIBO, CONCEPT' +
        'OS)'
      'VALUES'
      
        '  (:ID, :FECHA, :IDPROV, :MONTOPAGADO, :LETRAS, :FORMAPAGO, :NOT' +
        'RANS, :PAGADOA, '
      
        '   :IDBANCO, :IDCUENTA, :FACTURAAFECTADA, :IDFACT, :NORECIBO, :C' +
        'ONCEPTOS)')
    ModifySQL.Strings = (
      'UPDATE PAGOCXP SET'
      '  ID = :ID,'
      '  FECHA = :FECHA,'
      '  IDPROV = :IDPROV,'
      '  MONTOPAGADO = :MONTOPAGADO,'
      '  LETRAS = :LETRAS,'
      '  FORMAPAGO = :FORMAPAGO,'
      '  NOTRANS = :NOTRANS,'
      '  PAGADOA = :PAGADOA,'
      '  IDBANCO = :IDBANCO,'
      '  IDCUENTA = :IDCUENTA,'
      '  FACTURAAFECTADA = :FACTURAAFECTADA,'
      '  IDFACT = :IDFACT,'
      '  NORECIBO = :NORECIBO,'
      '  CONCEPTOS = :CONCEPTOS'
      'WHERE'
      '  PAGOCXP.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 264
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDPROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOPAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LETRAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORMAPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOTRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADOA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCUENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FACTURAAFECTADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NORECIBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONCEPTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object TDpagoCxc: TZQuery
    Connection = Data
    UpdateObject = ZuDPagoCxp
    SQL.Strings = (
      'select * from dpagocxp')
    Params = <>
    MasterFields = 'ID'
    MasterSource = DsPagoCXP
    LinkedFields = 'IDMASTER'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 352
    Top = 592
    object TDpagoCxcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TDpagoCxcIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object TDpagoCxcNO_FACT: TWideStringField
      FieldName = 'NO_FACT'
      Size = 15
    end
    object TDpagoCxcIDMONEDA: TIntegerField
      FieldName = 'IDMONEDA'
    end
    object TDpagoCxcMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object TDpagoCxcMONTOC: TFloatField
      FieldName = 'MONTOC'
      currency = True
    end
    object TDpagoCxcPAGADO: TFloatField
      FieldName = 'PAGADO'
      currency = True
    end
    object TDpagoCxcESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object TDpagoCxcMODENA: TWideStringField
      FieldName = 'MODENA'
      Size = 3
    end
  end
  object ZuDPagoCxp: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dpagocxp'
      'WHERE'
      '  dpagocxp.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO dpagocxp'
      
        '  (ID, IDMASTER, NO_FACT, IDMONEDA, MONTO, MONTOC, PAGADO, ESTAD' +
        'O, MODENA)'
      'VALUES'
      
        '  (:ID, :IDMASTER, :NO_FACT, :IDMONEDA, :MONTO, :MONTOC, :PAGADO' +
        ', :ESTADO, '
      '   :MODENA)')
    ModifySQL.Strings = (
      'UPDATE dpagocxp SET'
      '  ID = :ID,'
      '  IDMASTER = :IDMASTER,'
      '  NO_FACT = :NO_FACT,'
      '  IDMONEDA = :IDMONEDA,'
      '  MONTO = :MONTO,'
      '  MONTOC = :MONTOC,'
      '  PAGADO = :PAGADO,'
      '  ESTADO = :ESTADO,'
      '  MODENA = :MODENA'
      'WHERE'
      '  dpagocxp.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MODENA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsPagoCXP: TDataSource
    DataSet = TPagoCXP
    Left = 320
    Top = 584
  end
  object ZqAvatar: TZQuery
    Connection = Data
    UpdateObject = zUAvatar
    SQL.Strings = (
      'select * from avatar')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 472
    Top = 520
    object ZqAvatarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZqAvatarIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZqAvatarACTIVO: TWideStringField
      FieldName = 'ACTIVO'
      Size = 10
    end
  end
  object zUAvatar: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 512
    Top = 520
  end
  object QCubos: TZQuery
    Connection = Data
    UpdateObject = ZuCubos
    SQL.Strings = (
      'select a.*,  c.articulo from hl_cubos a'
      'left join mtartuculos c on a.idarticulo = c.cod_art')
    Params = <>
    LinkedFields = 'ID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1016
    Top = 456
    object QCubosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QCubosIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object QCubosIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object QCubosCANTIDADINICIAL: TFloatField
      FieldName = 'CANTIDADINICIAL'
    end
    object QCubosCANTIDADFINAL: TFloatField
      FieldName = 'CANTIDADFINAL'
    end
    object QCubosCANTIDADVENDIDO: TFloatField
      FieldName = 'CANTIDADVENDIDO'
    end
    object QCubosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QCubosCN_UN: TFloatField
      FieldName = 'CN_UN'
    end
    object QCubosCU_OZ: TFloatField
      FieldName = 'CU_OZ'
    end
    object QCubosCN_UN2: TFloatField
      FieldName = 'CN_UN2'
    end
    object QCubosCU_OZ2: TFloatField
      FieldName = 'CU_OZ2'
    end
    object QCubosFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object ZuCubos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM hl_cubos'
      'WHERE'
      '  hl_cubos.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO hl_cubos'
      
        '  (ID, IDTURNO, IDARTICULO, CANTIDADINICIAL, CN_UN, CU_OZ, CANTI' +
        'DADFINAL, '
      '   CANTIDADVENDIDO, CN_UN2, CU_OZ2, FECHA)'
      'VALUES'
      
        '  (:ID, :IDTURNO, :IDARTICULO, :CANTIDADINICIAL, :CN_UN, :CU_OZ,' +
        ' :CANTIDADFINAL, '
      '   :CANTIDADVENDIDO, :CN_UN2, :CU_OZ2, :FECHA)')
    ModifySQL.Strings = (
      'UPDATE hl_cubos SET'
      '  ID = :ID,'
      '  IDTURNO = :IDTURNO,'
      '  IDARTICULO = :IDARTICULO,'
      '  CANTIDADINICIAL = :CANTIDADINICIAL,'
      '  CN_UN = :CN_UN,'
      '  CU_OZ = :CU_OZ,'
      '  CANTIDADFINAL = :CANTIDADFINAL,'
      '  CANTIDADVENDIDO = :CANTIDADVENDIDO,'
      '  CN_UN2 = :CN_UN2,'
      '  CU_OZ2 = :CU_OZ2,'
      '  FECHA = :FECHA'
      'WHERE'
      '  hl_cubos.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1056
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CN_UN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CU_OZ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADVENDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CN_UN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CU_OZ2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object DsTurnos: TDataSource
    DataSet = ZTurno
    Left = 1048
    Top = 512
  end
  object qcubos2: TZQuery
    Connection = Data
    UpdateObject = zcubos2
    SQL.Strings = (
      'select a.*,  c.articulo from hl_cubostemp a'
      'left join mtartuculos c on a.idarticulo = c.cod_art')
    Params = <>
    LinkedFields = 'ID'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1040
    Top = 576
    object qcubos2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qcubos2IDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object qcubos2IDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object qcubos2CANTIDADINICIAL: TFloatField
      FieldName = 'CANTIDADINICIAL'
    end
    object qcubos2CN_UN: TFloatField
      FieldName = 'CN_UN'
    end
    object qcubos2CU_OZ: TFloatField
      FieldName = 'CU_OZ'
    end
    object qcubos2CANTIDADFINAL: TFloatField
      FieldName = 'CANTIDADFINAL'
    end
    object qcubos2CANTIDADVENDIDO: TFloatField
      FieldName = 'CANTIDADVENDIDO'
    end
    object qcubos2CN_UN2: TFloatField
      FieldName = 'CN_UN2'
    end
    object qcubos2CU_OZ2: TFloatField
      FieldName = 'CU_OZ2'
    end
    object qcubos2ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object qcubos2FECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object zcubos2: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM hl_cubostemp'
      'WHERE'
      '  hl_cubostemp.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO hl_cubostemp'
      
        '  (ID, IDTURNO, IDARTICULO, CANTIDADINICIAL, CN_UN, CU_OZ, CANTI' +
        'DADFINAL, '
      '   CANTIDADVENDIDO, CN_UN2, CU_OZ2, FECHA)'
      'VALUES'
      
        '  (:ID, :IDTURNO, :IDARTICULO, :CANTIDADINICIAL, :CN_UN, :CU_OZ,' +
        ' :CANTIDADFINAL, '
      '   :CANTIDADVENDIDO, :CN_UN2, :CU_OZ2, :FECHA)')
    ModifySQL.Strings = (
      'UPDATE hl_cubostemp SET'
      '  ID = :ID,'
      '  IDTURNO = :IDTURNO,'
      '  IDARTICULO = :IDARTICULO,'
      '  CANTIDADINICIAL = :CANTIDADINICIAL,'
      '  CN_UN = :CN_UN,'
      '  CU_OZ = :CU_OZ,'
      '  CANTIDADFINAL = :CANTIDADFINAL,'
      '  CANTIDADVENDIDO = :CANTIDADVENDIDO,'
      '  CN_UN2 = :CN_UN2,'
      '  CU_OZ2 = :CU_OZ2,'
      '  FECHA = :FECHA'
      'WHERE'
      '  hl_cubostemp.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1080
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CN_UN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CU_OZ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDADVENDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CN_UN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CU_OZ2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Zsolidaridad: TZQuery
    Connection = Data
    UpdateObject = ZuSolidaridaridad
    SQL.Strings = (
      'select * from MSOLIDARIDAD')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 528
    Top = 592
    object ZsolidaridadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZsolidaridadFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZsolidaridadIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object ZsolidaridadCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object ZsolidaridadNBAUCHE: TWideStringField
      FieldName = 'NBAUCHE'
    end
    object ZsolidaridadMFACTURA: TFloatField
      FieldName = 'MFACTURA'
      currency = True
    end
    object ZsolidaridadMITBS: TFloatField
      FieldName = 'MITBS'
      currency = True
    end
    object ZsolidaridadMTOTALFACTURA: TFloatField
      FieldName = 'MTOTALFACTURA'
      currency = True
    end
    object ZsolidaridadESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZsolidaridadTARJETA: TWideStringField
      FieldName = 'TARJETA'
    end
    object ZsolidaridadIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
  end
  object ZuSolidaridaridad: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MSOLIDARIDAD'
      'WHERE'
      '  MSOLIDARIDAD.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO MSOLIDARIDAD'
      
        '  (ID, FECHA, IDFACTURA, CEDULA, TARJETA, NBAUCHE, MFACTURA, MIT' +
        'BS, MTOTALFACTURA, '
      '   ESTADO, IDTURNO)'
      'VALUES'
      
        '  (:ID, :FECHA, :IDFACTURA, :CEDULA, :TARJETA, :NBAUCHE, :MFACTU' +
        'RA, :MITBS, '
      '   :MTOTALFACTURA, :ESTADO, :IDTURNO)')
    ModifySQL.Strings = (
      'UPDATE MSOLIDARIDAD SET'
      '  ID = :ID,'
      '  FECHA = :FECHA,'
      '  IDFACTURA = :IDFACTURA,'
      '  CEDULA = :CEDULA,'
      '  TARJETA = :TARJETA,'
      '  NBAUCHE = :NBAUCHE,'
      '  MFACTURA = :MFACTURA,'
      '  MITBS = :MITBS,'
      '  MTOTALFACTURA = :MTOTALFACTURA,'
      '  ESTADO = :ESTADO,'
      '  IDTURNO = :IDTURNO'
      'WHERE'
      '  MSOLIDARIDAD.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 560
    Top = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEDULA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TARJETA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NBAUCHE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MFACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MTOTALFACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object TbIngredientes: TZQuery
    Connection = Data
    UpdateObject = ZUingredientes
    SQL.Strings = (
      'select * from INGREDIENTES')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsArt
    LinkedFields = 'IDARTI'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 624
    Top = 56
    object TbIngredientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TbIngredientesIDARTI: TIntegerField
      FieldName = 'IDARTI'
    end
    object TbIngredientesINGREDIENTES: TWideStringField
      FieldName = 'INGREDIENTES'
      Size = 40
    end
    object TbIngredientesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object ZUingredientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM INGREDIENTES'
      'WHERE'
      '  INGREDIENTES.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO INGREDIENTES'
      '  (ID, IDARTI, INGREDIENTES, ESTADO)'
      'VALUES'
      '  (:ID, :IDARTI, :INGREDIENTES, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE INGREDIENTES SET'
      '  ID = :ID,'
      '  IDARTI = :IDARTI,'
      '  INGREDIENTES = :INGREDIENTES,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  INGREDIENTES.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 664
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INGREDIENTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ZuDingredientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM d_ingredientes'
      'WHERE'
      '  d_ingredientes.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO d_ingredientes'
      
        '  (ID, IDARTICULOS, IDDETALLE, IDMASTER, OP, SELECCION, NO_ORDEN' +
        ')'
      'VALUES'
      
        '  (:ID, :IDARTICULOS, :IDDETALLE, :IDMASTER, :OP, :SELECCION, :N' +
        'O_ORDEN)')
    ModifySQL.Strings = (
      'UPDATE d_ingredientes SET'
      '  ID = :ID,'
      '  IDARTICULOS = :IDARTICULOS,'
      '  IDDETALLE = :IDDETALLE,'
      '  IDMASTER = :IDMASTER,'
      '  OP = :OP,'
      '  SELECCION = :SELECCION,'
      '  NO_ORDEN = :NO_ORDEN'
      'WHERE'
      '  d_ingredientes.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 776
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDDETALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SELECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object rbDIngredientes: TZQuery
    Connection = Data
    UpdateObject = ZuDingredientes
    SQL.Strings = (
      'select a.*, b.ingredientes from d_ingredientes a'
      'left Join ingredientes b on a.idarticulos = b.id')
    Params = <>
    MasterFields = 'NO_FACT'
    MasterSource = DsDetalleMaster
    LinkedFields = 'IDMASTER'
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 744
    Top = 240
    object rbDIngredientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object rbDIngredientesIDARTICULOS: TIntegerField
      FieldName = 'IDARTICULOS'
    end
    object rbDIngredientesIDDETALLE: TIntegerField
      FieldName = 'IDDETALLE'
    end
    object rbDIngredientesIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object rbDIngredientesOP: TIntegerField
      FieldName = 'OP'
    end
    object rbDIngredientesINGREDIENTES: TWideStringField
      FieldName = 'INGREDIENTES'
      Size = 40
    end
    object rbDIngredientesSELECCION: TWideStringField
      FieldName = 'SELECCION'
      Size = 4
    end
    object rbDIngredientesNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
  end
  object QCorteInventario: TZQuery
    Connection = Data
    UpdateObject = ZuCorteInventario
    SQL.Strings = (
      'select a.*, b.articulo from TB_INVENTARIOCORTE a'
      'left join mtartuculos b On a.cod_art = b.cod_art')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 80
    Top = 656
    object QCorteInventarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QCorteInventarioFECHA_CORTE: TDateField
      FieldName = 'FECHA_CORTE'
    end
    object QCorteInventarioIDUSAURIO: TIntegerField
      FieldName = 'IDUSAURIO'
    end
    object QCorteInventarioMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QCorteInventarioCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object QCorteInventarioEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
    end
    object QCorteInventarioIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object QCorteInventarioARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QCorteInventarioRECONTEO: TFloatField
      FieldName = 'RECONTEO'
    end
  end
  object DsCorteInventario: TDataSource
    DataSet = QCorteInventario
    Left = 16
    Top = 656
  end
  object ZuCorteInventario: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_INVENTARIOCORTE'
      'WHERE'
      '  TB_INVENTARIOCORTE.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_INVENTARIOCORTE'
      
        '  (ID, FECHA_CORTE, IDUSAURIO, MONTO, COD_ART, EXISTENCIA, RECON' +
        'TEO, IDMASTER)'
      'VALUES'
      
        '  (:ID, :FECHA_CORTE, :IDUSAURIO, :MONTO, :COD_ART, :EXISTENCIA,' +
        ' :RECONTEO, '
      '   :IDMASTER)')
    ModifySQL.Strings = (
      'UPDATE TB_INVENTARIOCORTE SET'
      '  ID = :ID,'
      '  FECHA_CORTE = :FECHA_CORTE,'
      '  IDUSAURIO = :IDUSAURIO,'
      '  MONTO = :MONTO,'
      '  COD_ART = :COD_ART,'
      '  EXISTENCIA = :EXISTENCIA,'
      '  RECONTEO = :RECONTEO,'
      '  IDMASTER = :IDMASTER'
      'WHERE'
      '  TB_INVENTARIOCORTE.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 48
    Top = 656
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSAURIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXISTENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECONTEO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMASTER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QcopiaControl: TZQuery
    Connection = Data
    UpdateObject = ZUCopiaControl
    SQL.Strings = (
      'select * from master_fact1')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 616
    Top = 632
    object QcopiaControlNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object QcopiaControlFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object QcopiaControlTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QcopiaControlCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object QcopiaControlCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object QcopiaControlNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Required = True
      Size = 12
    end
    object QcopiaControlMONTO: TExtendedField
      FieldName = 'MONTO'
      Precision = 19
    end
    object QcopiaControlHORA: TTimeField
      FieldName = 'HORA'
    end
    object QcopiaControlPOGXITBS: TExtendedField
      FieldName = 'POGXITBS'
      Precision = 19
    end
    object QcopiaControlTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object QcopiaControlMONTOPAGO: TExtendedField
      FieldName = 'MONTOPAGO'
      Precision = 19
    end
    object QcopiaControlCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QcopiaControlRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object QcopiaControlCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QcopiaControlTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object QcopiaControlVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object QcopiaControlSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object QcopiaControlCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object QcopiaControlNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object QcopiaControlRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object QcopiaControlNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object QcopiaControlNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object QcopiaControlDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QcopiaControlROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object QcopiaControlNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object QcopiaControlMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object QcopiaControlCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object QcopiaControlINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object QcopiaControlDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object QcopiaControlPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object QcopiaControlLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object QcopiaControlCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object QcopiaControlTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object QcopiaControlEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object QcopiaControlDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object QcopiaControlRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object QcopiaControlABONO: TFloatField
      FieldName = 'ABONO'
    end
    object QcopiaControlCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object QcopiaControlNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object QcopiaControlPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object QcopiaControlMESES: TIntegerField
      FieldName = 'MESES'
    end
    object QcopiaControlDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object QcopiaControlPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object QcopiaControlESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object QcopiaControlDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object QcopiaControlCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object QcopiaControlFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object QcopiaControlCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object QcopiaControlCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object QcopiaControlQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
  end
  object ZUCopiaControl: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM master_fact1'
      'WHERE'
      '  master_fact1.NO_FACT = :OLD_NO_FACT')
    InsertSQL.Strings = (
      'INSERT INTO master_fact1'
      
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
        ' QUEES)'
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
      '   :FECHAVENCIMIENTO, :COMBO, :COBRADO, :QUEES)')
    ModifySQL.Strings = (
      'UPDATE master_fact1 SET'
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
      '  QUEES = :QUEES'
      'WHERE'
      '  master_fact1.NO_FACT = :OLD_NO_FACT')
    UseSequenceFieldForRefreshSQL = False
    Left = 656
    Top = 632
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
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object QVersion25: TZReadOnlyQuery
    Connection = Data
    Params = <>
    Left = 24
    Top = 736
  end
  object QInventarioEQ: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from sp_inventario(:no, :no2)')
    Params = <
      item
        DataType = ftString
        Name = 'no'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'no2'
        ParamType = ptUnknown
        Value = 0
      end>
    Left = 288
    Top = 712
    ParamData = <
      item
        DataType = ftString
        Name = 'no'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'no2'
        ParamType = ptUnknown
        Value = 0
      end>
    object QInventarioEQCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      ReadOnly = True
    end
    object QInventarioEQARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      ReadOnly = True
      Size = 100
    end
    object QInventarioEQCANTIDADEQUIVALENCIA: TExtendedField
      FieldName = 'CANTIDADEQUIVALENCIA'
      ReadOnly = True
      Precision = 19
    end
    object QInventarioEQEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object QInventarioEQEQ: TWideStringField
      FieldName = 'EQ'
      ReadOnly = True
      Size = 2
    end
    object QInventarioEQUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      ReadOnly = True
      Size = 10
    end
    object QInventarioEQALMACEN: TWideStringField
      FieldName = 'ALMACEN'
      ReadOnly = True
      Size = 30
    end
  end
  object qCodMin: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from SP_EQMINIMO(:no)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 720
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no'
        ParamType = ptUnknown
      end>
    object qCodMinCODIGOMINIMO: TIntegerField
      FieldName = 'CODIGOMINIMO'
      ReadOnly = True
    end
    object qCodMinCANTEQUIVALENCA: TExtendedField
      FieldName = 'CANTEQUIVALENCA'
      ReadOnly = True
      Precision = 19
    end
    object qCodMinCANTEMP: TExtendedField
      FieldName = 'CANTEMP'
      ReadOnly = True
      Precision = 19
    end
  end
  object QImpuestos: TZQuery
    Connection = Data
    UpdateObject = zUImpuestos
    SQL.Strings = (
      'select * from TB_IMPUESTO')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 352
    Top = 648
    object QImpuestosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QImpuestosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 150
    end
    object QImpuestosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 10
    end
    object QImpuestosIMP: TExtendedField
      FieldName = 'IMP'
      Precision = 19
    end
    object QImpuestosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
  end
  object zUImpuestos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM TB_IMPUESTO'
      'WHERE'
      '  TB_IMPUESTO.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO TB_IMPUESTO'
      '  (ID, DESCRIPCION, ABREVIADO, IMP, ESTADO)'
      'VALUES'
      '  (:ID, :DESCRIPCION, :ABREVIADO, :IMP, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE TB_IMPUESTO SET'
      '  ID = :ID,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  ABREVIADO = :ABREVIADO,'
      '  IMP = :IMP,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  TB_IMPUESTO.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qSubCategorias: TZQuery
    Connection = Data
    UpdateObject = zuSubCategorias
    SQL.Strings = (
      'select a.*, b.cat from producto_subcategoria a'
      'left join mtcategoria b on a.idcategoria = b.codcat')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 880
    Top = 640
    object qSubCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSubCategoriasSUBCATEGORIA: TWideStringField
      FieldName = 'SUBCATEGORIA'
      Size = 50
    end
    object qSubCategoriasIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
    end
    object qSubCategoriasCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
  end
  object zuSubCategorias: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM producto_subcategoria'
      'WHERE'
      '  producto_subcategoria.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO producto_subcategoria'
      '  (ID, SUBCATEGORIA, IDCATEGORIA)'
      'VALUES'
      '  (:ID, :SUBCATEGORIA, :IDCATEGORIA)')
    ModifySQL.Strings = (
      'UPDATE producto_subcategoria SET'
      '  ID = :ID,'
      '  SUBCATEGORIA = :SUBCATEGORIA,'
      '  IDCATEGORIA = :IDCATEGORIA'
      'WHERE'
      '  producto_subcategoria.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 928
    Top = 648
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBCATEGORIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCATEGORIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qSustancia: TZQuery
    Connection = Data
    UpdateObject = ZuSustancia
    SQL.Strings = (
      'select * from PRODUCTOS_SUSTANCIA')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 768
    Top = 696
    object qSustanciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSustanciaSUSTANCIA: TWideStringField
      FieldName = 'SUSTANCIA'
      Size = 100
    end
  end
  object ZuSustancia: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTOS_SUSTANCIA'
      'WHERE'
      '  PRODUCTOS_SUSTANCIA.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTOS_SUSTANCIA'
      '  (ID, SUSTANCIA)'
      'VALUES'
      '  (:ID, :SUSTANCIA)')
    ModifySQL.Strings = (
      'UPDATE PRODUCTOS_SUSTANCIA SET'
      '  ID = :ID,'
      '  SUSTANCIA = :SUSTANCIA'
      'WHERE'
      '  PRODUCTOS_SUSTANCIA.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 816
    Top = 704
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUSTANCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QMarca: TZQuery
    Connection = Data
    UpdateObject = zuMarca
    SQL.Strings = (
      'select * from PRODUCTOS_marca')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 904
    Top = 704
    object QMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QMarcaMARCAS: TWideStringField
      FieldName = 'MARCAS'
      Size = 50
    end
    object QMarcaIDPROV: TIntegerField
      FieldName = 'IDPROV'
    end
  end
  object zuMarca: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTOS_marca'
      'WHERE'
      '  PRODUCTOS_marca.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTOS_marca'
      '  (ID, MARCAS, IDPROV)'
      'VALUES'
      '  (:ID, :MARCAS, :IDPROV)')
    ModifySQL.Strings = (
      'UPDATE PRODUCTOS_marca SET'
      '  ID = :ID,'
      '  MARCAS = :MARCAS,'
      '  IDPROV = :IDPROV'
      'WHERE'
      '  PRODUCTOS_marca.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 952
    Top = 704
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDPROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qIndicaciones: TZQuery
    Connection = Data
    UpdateObject = zuIndicaciones
    SQL.Strings = (
      'select * from PRODUCTO_INDICACIONES')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 560
    Top = 696
    object qIndicacionesID: TIntegerField
      FieldName = 'ID'
    end
    object qIndicacionesNOM_INDICACION: TWideStringField
      FieldName = 'NOM_INDICACION'
      Size = 100
    end
  end
  object zuIndicaciones: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTO_INDICACIONES'
      'WHERE'
      
        '  ((PRODUCTO_INDICACIONES.ID IS NULL AND :OLD_ID IS NULL) OR (PR' +
        'ODUCTO_INDICACIONES.ID = :OLD_ID))')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTO_INDICACIONES'
      '  (ID, NOM_INDICACION)'
      'VALUES'
      '  (:ID, :NOM_INDICACION)')
    ModifySQL.Strings = (
      'UPDATE PRODUCTO_INDICACIONES SET'
      '  ID = :ID,'
      '  NOM_INDICACION = :NOM_INDICACION'
      'WHERE'
      
        '  ((PRODUCTO_INDICACIONES.ID IS NULL AND :OLD_ID IS NULL) OR (PR' +
        'ODUCTO_INDICACIONES.ID = :OLD_ID))')
    UseSequenceFieldForRefreshSQL = False
    Left = 656
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOM_INDICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qClasificación: TZQuery
    Connection = Data
    UpdateObject = zuClasificacion
    SQL.Strings = (
      'select * from PRODUCTOS_CLASIFICACION')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 1000
    Top = 696
    object qClasificaciónID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qClasificaciónCLASIFICACION: TWideStringField
      FieldName = 'CLASIFICACION'
      Size = 61
    end
  end
  object zuClasificacion: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTOS_CLASIFICACION'
      'WHERE'
      '  PRODUCTOS_CLASIFICACION.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTOS_CLASIFICACION'
      '  (ID, CLASIFICACION)'
      'VALUES'
      '  (:ID, :CLASIFICACION)')
    ModifySQL.Strings = (
      'UPDATE PRODUCTOS_CLASIFICACION SET'
      '  ID = :ID,'
      '  CLASIFICACION = :CLASIFICACION'
      'WHERE'
      '  PRODUCTOS_CLASIFICACION.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 1048
    Top = 704
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASIFICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QMlote: TZQuery
    Connection = Data
    UpdateObject = zuMelote
    SQL.Strings = (
      'select * from PRODUCTOS_LOTE')
    Params = <>
    Left = 408
    Top = 720
    object QMloteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QMloteIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object QMloteNO_LOTE: TWideStringField
      FieldName = 'NO_LOTE'
      Size = 15
    end
    object QMloteFV: TDateField
      FieldName = 'FV'
    end
    object QMloteEXIS_INI: TFloatField
      FieldName = 'EXIS_INI'
    end
    object QMloteCANT: TFloatField
      FieldName = 'CANT'
    end
    object QMloteESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QMloteLIN: TIntegerField
      FieldName = 'LIN'
    end
  end
  object zuMelote: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTOS_LOTE'
      'WHERE'
      '  PRODUCTOS_LOTE.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTOS_LOTE'
      '  (ID, IDARTICULO, NO_LOTE, FV, EXIS_INI, CANT, ESTADO, LIN)'
      'VALUES'
      
        '  (:ID, :IDARTICULO, :NO_LOTE, :FV, :EXIS_INI, :CANT, :ESTADO, :' +
        'LIN)')
    ModifySQL.Strings = (
      'UPDATE PRODUCTOS_LOTE SET'
      '  ID = :ID,'
      '  IDARTICULO = :IDARTICULO,'
      '  NO_LOTE = :NO_LOTE,'
      '  FV = :FV,'
      '  EXIS_INI = :EXIS_INI,'
      '  CANT = :CANT,'
      '  ESTADO = :ESTADO,'
      '  LIN = :LIN'
      'WHERE'
      '  PRODUCTOS_LOTE.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 432
    Top = 720
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXIS_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object QInventarioLote: TZQuery
    Connection = Data
    UpdateObject = zuInventarioLote
    SQL.Strings = (
      'select * from inventario_lote')
    Params = <>
    Left = 496
    Top = 736
    object QInventarioLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QInventarioLoteFECHA_INICIAL: TDateField
      FieldName = 'FECHA_INICIAL'
    end
    object QInventarioLoteFECHA_CIERRE: TDateField
      FieldName = 'FECHA_CIERRE'
    end
    object QInventarioLoteMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object QInventarioLoteESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
  end
  object zuInventarioLote: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM inventario_lote'
      'WHERE'
      '  inventario_lote.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO inventario_lote'
      '  (ID, FECHA_INICIAL, FECHA_CIERRE, MONTO, ESTADO)'
      'VALUES'
      '  (:ID, :FECHA_INICIAL, :FECHA_CIERRE, :MONTO, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE inventario_lote SET'
      '  ID = :ID,'
      '  FECHA_INICIAL = :FECHA_INICIAL,'
      '  FECHA_CIERRE = :FECHA_CIERRE,'
      '  MONTO = :MONTO,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  inventario_lote.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 536
    Top = 744
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_CIERRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qConsultarInvetarioLote: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from inventario_lote')
    Params = <>
    Left = 584
    Top = 760
    object qConsultarInvetarioLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConsultarInvetarioLoteFECHA_INICIAL: TDateField
      FieldName = 'FECHA_INICIAL'
    end
    object qConsultarInvetarioLoteFECHA_CIERRE: TDateField
      FieldName = 'FECHA_CIERRE'
    end
    object qConsultarInvetarioLoteMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object qConsultarInvetarioLoteESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
  end
  object zProductosFiltro: TZReadOnlyQuery
    Connection = Data
    SQL.Strings = (
      'select * from PRODUCTOS_CRITERIOSFILTRO where Estado ='#39'SI'#39)
    Params = <>
    Left = 784
    Top = 768
    object zProductosFiltroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object zProductosFiltroCRITERIO: TWideStringField
      FieldName = 'CRITERIO'
      Size = 30
    end
    object zProductosFiltroTEXTO: TWideStringField
      FieldName = 'TEXTO'
      Size = 30
    end
    object zProductosFiltroESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 2
    end
  end
end
