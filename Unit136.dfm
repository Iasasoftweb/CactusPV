object FrmImportarExcel: TFrmImportarExcel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Importar Datos desde Excel'
  ClientHeight = 388
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 376
    Top = 330
    Width = 209
    Height = 17
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 369
    Width = 751
    Height = 19
    Panels = <>
  end
  object Edit2: TEdit
    Left = 622
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 573
    Top = 288
    Width = 154
    Height = 21
    TabOrder = 3
  end
  object cxButton1: TcxButton
    Left = 176
    Top = 321
    Width = 177
    Height = 42
    Caption = 'Importar Data'
    LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 55
    Width = 713
    Height = 234
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 295
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object Op1: TcxRadioGroup
    Left = 16
    Top = 0
    Caption = 'Tablas '
    Properties.Columns = 4
    Properties.Items = <
      item
        Caption = 'Articulos'
      end
      item
        Caption = 'Fabricantes'
      end
      item
        Caption = 'Clientes'
      end
      item
        Caption = 'Inventario'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Height = 49
    Width = 713
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 321
    Width = 145
    Height = 42
    Caption = 'Cargar Archivo XLS'
    LookAndFeel.NativeStyle = True
    TabOrder = 8
    OnClick = cxButton2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel File|*.xls'
    Left = 376
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 216
    Top = 176
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 520
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 440
    Top = 80
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Pr' +
      'intSoft PV\data\Repuesto Canario\Supermercado\Inventario.xls;Mod' +
      'e=Share Deny None;Persist Security Info=False;Jet OLEDB:System d' +
      'atabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Passwor' +
      'd="";Jet OLEDB:Engine Type=35;Jet OLEDB:Database Locking Mode=0;' +
      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transa' +
      'ctions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Sys' +
      'tem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Do' +
      'n'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Repli' +
      'ca Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 160
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'INVE01'
    Left = 256
    Top = 128
    object ADOTable1codigobarra1: TWideStringField
      FieldName = 'codigobarra1'
      Size = 255
    end
    object ADOTable1producti: TWideStringField
      FieldName = 'producti'
      Size = 255
    end
    object ADOTable1PRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object ADOTable1PRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object ADOTable1PRECIO3: TFloatField
      FieldName = 'PRECIO3'
    end
    object ADOTable1EXIST: TFloatField
      FieldName = 'EXIST'
    end
    object ADOTable1COSTO_PROM: TFloatField
      FieldName = 'COSTO_PROM'
    end
    object ADOTable1ULT_COSTO: TFloatField
      FieldName = 'ULT_COSTO'
    end
    object ADOTable1CODIGO_FAB: TFloatField
      FieldName = 'CODIGO_FAB'
    end
    object ADOTable1REFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 255
    end
    object ADOTable1EQUIVALENTES: TWideStringField
      FieldName = 'EQUIVALENTES'
      Size = 255
    end
    object ADOTable1CLV_ART_EQUI: TWideStringField
      FieldName = 'CLV_ART_EQUI'
      Size = 255
    end
    object ADOTable1imp1: TWideStringField
      FieldName = 'imp1'
      Size = 255
    end
    object ADOTable1balanza02: TWideStringField
      FieldName = 'balanza02'
      Size = 255
    end
    object ADOTable1DESCR_EQUI: TWideStringField
      FieldName = 'DESCR_EQUI'
      Size = 255
    end
    object ADOTable1CANTIDAD_EQUI: TFloatField
      FieldName = 'CANTIDAD_EQUI'
    end
  end
  object TInventario: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'INVE01'
    Left = 128
    Top = 96
    object TInventariocod_art: TFloatField
      FieldName = 'cod_art'
    end
    object TInventarioEXIST: TFloatField
      FieldName = 'EXIST'
    end
  end
  object AdoClientes: TADOTable
    Connection = CCliente
    CursorType = ctStatic
    TableName = 'CLIE01'
    Left = 568
    Top = 136
    object AdoClientescodigo: TFloatField
      FieldName = 'codigo'
    end
    object AdoClientesNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object AdoClientescedula: TWideStringField
      FieldName = 'cedula'
      Size = 255
    end
    object AdoClientesdireccion: TWideStringField
      FieldName = 'direccion'
      Size = 255
    end
    object AdoClientesPOB: TWideStringField
      FieldName = 'POB'
      Size = 255
    end
    object AdoClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object AdoClientesdiascredito: TFloatField
      FieldName = 'dias credito'
    end
    object AdoClienteslimitecredito: TFloatField
      FieldName = 'limite credito'
    end
    object AdoClientescedula1: TWideStringField
      FieldName = 'cedula1'
      Size = 255
    end
  end
  object CCliente: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\PrintSoft PV\dat' +
      'a\Repuesto Canario\Supermercado\clientes.xls;Persist Security In' +
      'fo=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 496
    Top = 184
  end
  object DSClientes: TDataSource
    DataSet = AdoClientes
    Left = 568
    Top = 192
  end
  object DsInventario: TDataSource
    DataSet = TInventario
    Left = 344
    Top = 72
  end
  object QArti: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtartuculos')
    Params = <>
    Left = 632
    Top = 240
    object QArtiCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object QArtiCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object QArtiARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QArtiMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object QArtiMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object QArtiCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object QArtiCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object QArtiCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object QArtiCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object QArtiCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object QArtiCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object QArtiEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object QArtiITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object QArtiABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object QArtiCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object QArtiCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object QArtiUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object QArtiFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object QArtiPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object QArtiCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object QArtiIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object QArtiCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object QArtiCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object QArtiPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object QArtiPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object QArtiPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object QArtiESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QArtiEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object QArtiDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object QArtiPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object QArtiCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object QArtiEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object QArtiCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object QArtiCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object QArtiCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object QArtiREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object QArtiOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object QArtiSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object QArtiSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object QArtiFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object QArtiTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object QArtiFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object QArtiSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object QArtiOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object QArtiPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object QArtiCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object QArtiBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object QArtiMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object QArtiUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object QArtiTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object QArtiFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QArtiINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object QArtiALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object QArtiPERCIO_COPA: TFloatField
      FieldName = 'PERCIO_COPA'
    end
    object QArtiCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object QArtiARTICULOS_OMO: TWideStringField
      FieldName = 'ARTICULOS_OMO'
      Size = 10
    end
    object QArtiCODIGOUNICO: TWideStringField
      FieldName = 'CODIGOUNICO'
      Size = 5
    end
    object QArtiEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 25
    end
    object QArtiCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QArtiUTILIDAD2: TFloatField
      FieldName = 'UTILIDAD2'
    end
    object QArtiUTILIDAD3: TFloatField
      FieldName = 'UTILIDAD3'
    end
    object QArtiPRECIO_BRUTO1: TFloatField
      FieldName = 'PRECIO_BRUTO1'
    end
    object QArtiPRECIO_BRUTO2: TFloatField
      FieldName = 'PRECIO_BRUTO2'
    end
    object QArtiPRECIO_BRUTO3: TFloatField
      FieldName = 'PRECIO_BRUTO3'
    end
    object QArtiMAYOREO1: TFloatField
      FieldName = 'MAYOREO1'
    end
    object QArtiMAYOREO2: TFloatField
      FieldName = 'MAYOREO2'
    end
    object QArtiMAYOREO3: TFloatField
      FieldName = 'MAYOREO3'
    end
    object QArtiDESCRIPCION: TWideMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftWideMemo
    end
    object QArtiCOSTOPROMENO: TFloatField
      FieldName = 'COSTOPROMENO'
    end
    object QArtiTIENECOMPACTIBILIDAD: TWideStringField
      FieldName = 'TIENECOMPACTIBILIDAD'
      Size = 2
    end
    object QArtiCOMPACTIBLECON: TIntegerField
      FieldName = 'COMPACTIBLECON'
    end
    object QArtiUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object QArtiOBS: TIntegerField
      FieldName = 'OBS'
    end
    object QArtiTIPOB: TWideStringField
      FieldName = 'TIPOB'
      Size = 15
    end
    object QArtiESTADOCONDICION: TWideStringField
      FieldName = 'ESTADOCONDICION'
      Size = 10
    end
    object QArtiIDMONEDA: TIntegerField
      FieldName = 'IDMONEDA'
    end
    object QArtiCOSTO_DOLLARS: TFloatField
      FieldName = 'COSTO_DOLLARS'
    end
    object QArtiCODEQUIVALENCIA: TWideStringField
      FieldName = 'CODEQUIVALENCIA'
      Size = 30
    end
    object QArtiDESC_EQUIVALENCIA: TWideStringField
      FieldName = 'DESC_EQUIVALENCIA'
      Size = 100
    end
    object QArtiCANTEQUIVALENCA: TFloatField
      FieldName = 'CANTEQUIVALENCA'
    end
  end
end
