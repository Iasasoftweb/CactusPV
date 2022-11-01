object FrmLabelgarantia: TFrmLabelgarantia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impresion Label Garantia'
  ClientHeight = 347
  ClientWidth = 558
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 425
    Height = 153
    Caption = 'Datos del Label'
    TabOrder = 0
    object Label10: TLabel
      Left = 43
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label11: TLabel
      Left = 91
      Top = 19
      Width = 91
      Height = 13
      Caption = 'Nombre del Articuo'
    end
    object Label7: TLabel
      Left = 382
      Top = 20
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object Label1: TLabel
      Left = 43
      Top = 61
      Width = 75
      Height = 13
      Caption = 'Fecha de Salida'
    end
    object Label2: TLabel
      Left = 184
      Top = 61
      Width = 70
      Height = 13
      Caption = 'Precio Vendido'
    end
    object Label4: TLabel
      Left = 42
      Top = 102
      Width = 90
      Height = 13
      Caption = 'Nombre del Cliente'
    end
    object cxButton10: TcxButton
      Left = 3
      Top = 27
      Width = 34
      Height = 27
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.ImageIndex = 189
      OptionsImage.Images = inicio.RibbonImages32
      TabOrder = 0
      OnClick = cxButton10Click
    end
    object t1: TcxTextEdit
      Left = 43
      Top = 32
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 48
    end
    object t2: TcxTextEdit
      Left = 91
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 237
    end
    object t4: TcxCurrencyEdit
      Left = 330
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 87
    end
    object cxDateEdit1: TcxDateEdit
      Left = 42
      Top = 75
      TabOrder = 4
      Width = 121
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 184
      Top = 75
      TabOrder = 5
      Width = 121
    end
    object Edit2: TEdit
      Left = 43
      Top = 120
      Width = 366
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 27
    Top = 224
    Width = 422
    Height = 105
    Caption = 'Etiqueta generada'
    TabOrder = 1
    object Grafico: TImage
      Left = 173
      Top = 16
      Width = 177
      Height = 73
      Center = True
    end
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 77
      Height = 13
      Caption = 'Codigo de Barra'
    end
    object Edit3: TEdit
      Left = 16
      Top = 48
      Width = 144
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object panelarti: TcxGroupBox
    Left = 66
    Top = 35
    Caption = 'Articulos'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Visible = False
    Height = 250
    Width = 466
    object cxGrid2: TcxGrid
      Left = 3
      Top = 16
      Width = 460
      Height = 180
      Align = alTop
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
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
        DataController.DataSource = DsArti
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
          Caption = 'Cod.'
          DataBinding.FieldName = 'COD_ART'
          MinWidth = 51
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 51
        end
        object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          MinWidth = 400
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 400
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 203
      Width = 460
      Height = 38
      Align = alBottom
      TabOrder = 1
      object Label3: TLabel
        Left = 30
        Top = 6
        Width = 76
        Height = 14
        Caption = 'Digite Articulo'
      end
      object Edit1: TEdit
        Left = 112
        Top = 3
        Width = 264
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Edit1Change
      end
    end
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 175
    Width = 177
    Height = 43
    Caption = 'Generar Etiqueta'
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object Zarti: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from mtartuculos a'
      ''
      '')
    Params = <>
    Left = 384
    Top = 192
    object ZartiCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object ZartiCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object ZartiARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ZartiMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object ZartiMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object ZartiCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object ZartiCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object ZartiCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object ZartiCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZartiCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object ZartiCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object ZartiEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object ZartiITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object ZartiABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object ZartiCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object ZartiCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object ZartiUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object ZartiFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object ZartiPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object ZartiCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object ZartiIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZartiCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object ZartiCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object ZartiPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object ZartiPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object ZartiPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object ZartiESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZartiEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object ZartiDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object ZartiPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object ZartiCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object ZartiEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object ZartiCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object ZartiCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object ZartiCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object ZartiREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object ZartiCONDICION: TIntegerField
      FieldName = 'CONDICION'
    end
    object ZartiOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object ZartiSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object ZartiSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object ZartiFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object ZartiTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object ZartiFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object ZartiSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object ZartiOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object ZartiPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object ZartiCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object ZartiBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object ZartiMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object ZartiUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object ZartiTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object ZartiFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object ZartiINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object ZartiALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object ZartiPERCIO_COPA: TFloatField
      FieldName = 'PERCIO_COPA'
    end
    object ZartiCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object ZartiARTICULOS_OMO: TWideStringField
      FieldName = 'ARTICULOS_OMO'
      Size = 10
    end
    object ZartiCODIGOUNICO: TWideStringField
      FieldName = 'CODIGOUNICO'
      Size = 5
    end
    object ZartiEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 25
    end
  end
  object DsArti: TDataSource
    DataSet = Zarti
    Left = 416
    Top = 192
  end
  object ZqLabel: TZQuery
    Connection = datos.Data
    UpdateObject = ZuLabel
    SQL.Strings = (
      'select * from LGARANTIA')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 320
    Top = 256
    object ZqLabelID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZqLabelIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object ZqLabelFECHA_SALIDA: TDateField
      FieldName = 'FECHA_SALIDA'
    end
    object ZqLabelCODIGOGENERADO: TWideStringField
      FieldName = 'CODIGOGENERADO'
      Size = 13
    end
    object ZqLabelPRECIOVENTA: TFloatField
      FieldName = 'PRECIOVENTA'
      currency = True
    end
    object ZqLabelCLIENTES: TWideStringField
      FieldName = 'CLIENTES'
      Size = 50
    end
  end
  object ZuLabel: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM LGARANTIA'
      'WHERE'
      '  LGARANTIA.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO LGARANTIA'
      
        '  (ID, IDARTICULO, FECHA_SALIDA, CODIGOGENERADO, PRECIOVENTA, CL' +
        'IENTES)'
      'VALUES'
      
        '  (:ID, :IDARTICULO, :FECHA_SALIDA, :CODIGOGENERADO, :PRECIOVENT' +
        'A, :CLIENTES)')
    ModifySQL.Strings = (
      'UPDATE LGARANTIA SET'
      '  ID = :ID,'
      '  IDARTICULO = :IDARTICULO,'
      '  FECHA_SALIDA = :FECHA_SALIDA,'
      '  CODIGOGENERADO = :CODIGOGENERADO,'
      '  PRECIOVENTA = :PRECIOVENTA,'
      '  CLIENTES = :CLIENTES'
      'WHERE'
      '  LGARANTIA.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 248
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
        Name = 'FECHA_SALIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOGENERADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIOVENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(ID) from LGARANTIA')
    Params = <>
    Left = 472
    Top = 152
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
