object FrmRepInventario: TFrmRepInventario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Inventario'
  ClientHeight = 500
  ClientWidth = 1169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    Caption = 'Criterios de Busqueda'
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 89
    Width = 1012
    object Label1: TLabel
      Left = 19
      Top = 25
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object Label2: TLabel
      Left = 234
      Top = 25
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label3: TLabel
      Left = 446
      Top = 25
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object IncluirProveedor: TcxCheckBox
      Left = 16
      Top = 59
      Caption = 'Incluir Condici'#243'n'
      TabOrder = 0
    end
    object LCproveedor: TcxLookupComboBox
      Left = 16
      Top = 40
      Properties.KeyFieldNames = 'COD'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPCION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DsPRov
      TabOrder = 1
      Width = 209
    end
    object IncluirCategoria: TcxCheckBox
      Left = 231
      Top = 61
      Caption = 'Incluir Categoria'
      TabOrder = 2
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 231
      Top = 40
      Properties.KeyFieldNames = 'CODCAT'
      Properties.ListColumns = <
        item
          FieldName = 'CAT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DsCategoria
      TabOrder = 3
      Width = 209
    end
    object cxCheckBox1: TcxCheckBox
      Left = 446
      Top = 61
      Caption = 'Incluir Articulo Especifico'
      TabOrder = 4
    end
    object NombreArticulos: TEdit
      Left = 446
      Top = 40
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object cxButton1: TcxButton
      Left = 679
      Top = 34
      Width = 137
      Height = 34
      Caption = 'Procesar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 254
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 6
      OnClick = cxButton1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 103
    Width = 1153
    Height = 362
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        DataBinding.FieldName = 'COD_ART'
        Width = 43
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        DataBinding.FieldName = 'ARTICULO'
        Width = 326
      end
      object cxGrid1DBTableView1CAT: TcxGridDBColumn
        DataBinding.FieldName = 'CAT'
        Width = 154
      end
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPCION'
        Width = 151
      end
      object cxGrid1DBTableView1COSTO: TcxGridDBColumn
        DataBinding.FieldName = 'COSTO'
      end
      object cxGrid1DBTableView1PRECIO_A: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO_A'
      end
      object cxGrid1DBTableView1PRECIO_B: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO_B'
      end
      object cxGrid1DBTableView1PRECIO_D: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO_D'
      end
      object cxGrid1DBTableView1ENTRADA: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRADA'
      end
      object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
        DataBinding.FieldName = 'SALIDA'
      end
      object cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn
        DataBinding.FieldName = 'EXISTENCIA'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Qprov: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 32
    Top = 168
    object QprovCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object QprovCOD_FAB: TWideStringField
      FieldName = 'COD_FAB'
      Required = True
      Size = 10
    end
    object QprovDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object QprovCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QprovTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 12
    end
    object QprovFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object QprovEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QprovDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
  end
  object DsPRov: TDataSource
    DataSet = Qprov
    Left = 72
    Top = 176
  end
  object QCategoria: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MTCATEGORIA')
    Params = <>
    Left = 288
    Top = 160
    object QCategoriaCODCAT: TIntegerField
      FieldName = 'CODCAT'
      Required = True
    end
    object QCategoriaCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
    object QCategoriaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object QCategoriaEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 5
    end
    object QCategoriaOPCION: TWideStringField
      FieldName = 'OPCION'
      Size = 2
    end
  end
  object DsCategoria: TDataSource
    DataSet = QCategoria
    Left = 328
    Top = 168
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, c.articulo,d.cat,e.descripcion, c.costo, c.pre' +
        'cio_a, c.precio_b, c.precio_d, sum(a.entrada) entrada,  sum(a.sa' +
        'lida) salida, (Sum(a.entrada) - Sum(a.salida)) Existencia from m' +
        'inventario a'
      'left join mtartuculos c On a.cod_art = c.cod_art'
      'left Join mtcategoria D On c.cod_cat = d.codcat'
      'Left Join fabricantes E On c.cod_prov1 = e.cod'
      
        'group by a.cod_art,d.cat, c.articulo, e.descripcion, c.costo, c.' +
        'precio_a, c.precio_b, c.precio_d')
    Params = <>
    Left = 504
    Top = 224
    object QConsultaCOD_ART: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'COD_ART'
    end
    object QConsultaARTICULO: TWideStringField
      DisplayLabel = 'Nombre Articulo'
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QConsultaCAT: TWideStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CAT'
      Size = 40
    end
    object QConsultaDESCRIPCION: TWideStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object QConsultaCOSTO: TFloatField
      DisplayLabel = 'Costo $'
      FieldName = 'COSTO'
      currency = True
    end
    object QConsultaPRECIO_A: TFloatField
      DisplayLabel = '$$ Precio A'
      FieldName = 'PRECIO_A'
      currency = True
    end
    object QConsultaPRECIO_B: TFloatField
      DisplayLabel = '$$ Precio B'
      FieldName = 'PRECIO_B'
      currency = True
    end
    object QConsultaPRECIO_D: TFloatField
      DisplayLabel = '$$ Precio C'
      FieldName = 'PRECIO_D'
      currency = True
    end
    object QConsultaENTRADA: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object QConsultaSALIDA: TFloatField
      DisplayLabel = 'Salidas'
      FieldName = 'SALIDA'
      ReadOnly = True
    end
    object QConsultaEXISTENCIA: TFloatField
      DisplayLabel = 'Existencia'
      FieldName = 'EXISTENCIA'
      ReadOnly = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = QConsulta
    Left = 536
    Top = 224
  end
end
