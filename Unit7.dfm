object FrmCodBar: TFrmCodBar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impresion Ticket Codigo de Barra'
  ClientHeight = 141
  ClientWidth = 600
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
  object Label2: TLabel
    Left = 13
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 112
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Articulo'
    FocusControl = DBEdit2
  end
  object PaintBox1: TPaintBox
    Left = 416
    Top = 8
    Width = 161
    Height = 125
  end
  object cxButton1: TcxButton
    Left = 235
    Top = 73
    Width = 134
    Height = 48
    Caption = 'Imprimir'
    LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object op2: TRadioGroup
    Left = 13
    Top = 63
    Width = 200
    Height = 58
    Caption = 'Criterio de Busqueda'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Label C/ Precio'
      'Label S/ Precio')
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 13
    Top = 24
    Width = 81
    Height = 21
    Color = 13034168
    DataField = 'CODIGOTXT'
    DataSource = DsARticulos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 24
    Width = 281
    Height = 21
    Color = 9626332
    DataField = 'ARTICULO'
    DataSource = DsARticulos
    ReadOnly = True
    TabOrder = 3
  end
  object FbRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtartuculos')
    Params = <>
    Left = 216
    Top = 8
    object FbRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object FbRArticulosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object FbRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object FbRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object FbRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object FbRArticulosCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object FbRArticulosCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object FbRArticulosCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object FbRArticulosCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object FbRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object FbRArticulosCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object FbRArticulosEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object FbRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 1
    end
    object FbRArticulosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object FbRArticulosCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object FbRArticulosCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object FbRArticulosUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object FbRArticulosFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object FbRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object FbRArticulosCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object FbRArticulosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object FbRArticulosCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object FbRArticulosCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object FbRArticulosPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object FbRArticulosPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object FbRArticulosPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object FbRArticulosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object FbRArticulosEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object FbRArticulosDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object FbRArticulosPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object FbRArticulosCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object FbRArticulosEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object FbRArticulosCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object FbRArticulosCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object FbRArticulosCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object FbRArticulosREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object FbRArticulosCONDICION: TIntegerField
      FieldName = 'CONDICION'
    end
    object FbRArticulosOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object FbRArticulosSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object FbRArticulosSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object FbRArticulosFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object FbRArticulosTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object FbRArticulosFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object FbRArticulosSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object FbRArticulosOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object FbRArticulosPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object FbRArticulosCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object FbRArticulosBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object FbRArticulosMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object FbRArticulosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object FbRArticulosTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object FbRArticulosFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object FbRArticulosINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object FbRArticulosALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
  end
  object DsARticulos: TDataSource
    DataSet = FbRArticulos
    Left = 256
    Top = 8
  end
  object Print_Precio: TfrxReport
    Version = '5.6.1'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 5.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40656.609671944400000000
    ReportOptions.LastChange = 40694.880159861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 31.750000000000000000
      PaperHeight = 25.400000000000000000
      PaperSize = 256
      object Memo1: TfrxMemoView
        Left = 2.600000000000000000
        Top = 2.600000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Talleres y Repuesto')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 4.600000000000000000
        Top = 13.200000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Mister OTTO')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 4.600000000000000000
        Top = 23.200000000000000000
        Width = 134.400000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Santome Esq. Independencia')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 38.400000000000000000
        Top = 75.200000000000000000
        Width = 76.800000000000000000
        Height = 9.600000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '809-521-2710')
        ParentFont = False
      end
      object frxDBDataset1CODIGO: TfrxMemoView
        Left = 4.000000000000000000
        Top = 65.200000000000000000
        Width = 48.000000000000000000
        Height = 19.200000000000000000
        DataField = 'COD_BARRA'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."COD_BARRA"]')
        ParentFont = False
      end
      object frxDBDataset1ABREVIADO1: TfrxMemoView
        Left = 14.338590000000000000
        Top = 85.400000000000000000
        Width = 124.800000000000000000
        Height = 9.600000000000000000
        DataField = 'ARTICULO'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
        Memo.UTF8W = (
          '[frxDBDataset1."ARTICULO"]')
        ParentFont = False
      end
      object frxDBDataset1PRECIO2: TfrxMemoView
        Left = 48.000000000000000000
        Top = 62.200000000000000000
        Width = 67.200000000000000000
        Height = 19.200000000000000000
        DataField = 'PRECIO_A'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."PRECIO_A"]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 34.400000000000000000
        Top = 37.400000000000000000
        Width = 92.800000000000000000
        Height = 35.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Codigo de barras CyT'
        Font.Style = []
        Memo.UTF8W = (
          '123456')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'CODIGOTXT=CODIGOTXT'
      'ARTICULO=ARTICULO'
      'MODELO=MODELO'
      'MARCA=MARCA'
      'COLOR=COLOR'
      'COD_CAT=COD_CAT'
      'COD_SERIE=COD_SERIE'
      'COD_ALM=COD_ALM'
      'COSTO=COSTO'
      'COD_PROV1=COD_PROV1'
      'EXISTENCIA1=EXISTENCIA1'
      'ITBIS=ITBIS'
      'ABREVIADO=ABREVIADO'
      'COD_BARRA=COD_BARRA'
      'COD_UV=COD_UV'
      'USUARIOMOD=USUARIOMOD'
      'FECHA_MOD=FECHA_MOD'
      'POLITICA=POLITICA'
      'COSTO_PR=COSTO_PR'
      'IMAGEN=IMAGEN'
      'CLA_COSTO=CLA_COSTO'
      'CLA_PRECIO=CLA_PRECIO'
      'PRECIO_A=PRECIO_A'
      'PRECIO_B=PRECIO_B'
      'PRECIO_D=PRECIO_D'
      'ESTADO=ESTADO'
      'EXTFOTO=EXTFOTO'
      'DESCRIPCIONWEB=DESCRIPCIONWEB'
      'PUBLICARWEB=PUBLICARWEB'
      'CODIGOBARRA=CODIGOBARRA'
      'EMPAQUE=EMPAQUE'
      'CANT_EMPA=CANT_EMPA'
      'COD_PROV2=COD_PROV2'
      'COD_PROV3=COD_PROV3'
      'REFERENCIA=REFERENCIA'
      'CONDICION=CONDICION'
      'OPCION_SABOR=OPCION_SABOR'
      'STOCK_MA=STOCK_MA'
      'STOCK_M=STOCK_M'
      'FACTOR=FACTOR'
      'TIPO_PRODUCTOS=TIPO_PRODUCTOS'
      'FACTURABLE=FACTURABLE'
      'STOCK=STOCK'
      'OPCIONES_BOLA=OPCIONES_BOLA'
      'PARTICIONADO=PARTICIONADO'
      'COMPUESTO=COMPUESTO'
      'BENEFICIOS=BENEFICIOS'
      'MONEDA=MONEDA'
      'UNIDAD=UNIDAD'
      'TAZA_COMPRA=TAZA_COMPRA'
      'FECHA_COMPRA=FECHA_COMPRA'
      'INTERES_ACUMULADO=INTERES_ACUMULADO'
      'ALMACEN=ALMACEN')
    OpenDataSource = False
    DataSet = FbRArticulos
    BCDToCurrency = False
    Left = 32
    Top = 96
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 200
    Top = 80
  end
  object Print_No: TfrxReport
    Version = '5.6.1'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 5.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40656.609671944400000000
    ReportOptions.LastChange = 40705.586814768510000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 31.750000000000000000
      PaperHeight = 25.400000000000000000
      PaperSize = 256
      object Memo1: TfrxMemoView
        Left = 2.600000000000000000
        Top = 2.600000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Talleres y Repuesto')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 4.600000000000000000
        Top = 13.200000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Mister OTTO')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 4.599999999999999000
        Top = 23.200000000000000000
        Width = 134.400000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Santome Esq. Independencia')
        ParentFont = False
      end
    end
  end
end
