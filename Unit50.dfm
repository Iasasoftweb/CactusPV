object FrmRxProveedor: TFrmRxProveedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Mercancias por Proveedor'
  ClientHeight = 514
  ClientWidth = 692
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 673
    Height = 81
    BevelInner = bvLowered
    BevelKind = bkFlat
    TabOrder = 0
    object op_prov: TcxGroupBox
      Left = 14
      Top = 11
      Caption = 'Nombre del Proveedor'
      TabOrder = 0
      Height = 54
      Width = 343
      object cxButton10: TcxButton
        Left = 303
        Top = 13
        Width = 37
        Height = 31
        OptionsImage.ImageIndex = 947
        OptionsImage.Images = inicio.RibbonImages16
        TabOrder = 0
        OnClick = cxButton10Click
      end
      object provTXT: TcxTextEdit
        Left = 3
        Top = 13
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 294
      end
    end
    object cxButton1: TcxButton
      Left = 381
      Top = 24
      Width = 132
      Height = 32
      Caption = 'Ejecutar'
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 1
    end
  end
  object cxGrid5: TcxGrid
    Left = 24
    Top = 64
    Width = 340
    Height = 265
    TabOrder = 1
    Visible = False
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
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
      DataController.DataSource = DsqProvee
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'COD'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Proveedor'
        DataBinding.FieldName = 'DESCRIPCION'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 240
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 240
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Edit1: TEdit
    Left = 529
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object Precios: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.unidad from CONTROL_PRECIOS a'
      'left join unidad_m b On a.unidad_m = b.cod_unidad_m')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsConsulta
    LinkedFields = 'NO_ART'
    Left = 648
    Top = 256
    object PreciosCPID: TIntegerField
      FieldName = 'CPID'
      Required = True
    end
    object PreciosNO_ART: TIntegerField
      FieldName = 'NO_ART'
    end
    object PreciosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object PreciosUNIDAD_M: TIntegerField
      FieldName = 'UNIDAD_M'
    end
    object PreciosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object PreciosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object PreciosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
    end
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, a.codigobarra,a.articulo,c.cat,b.descripcion,a' +
        '.COSTO_PR, A.COSTO from mtartuculos a'
      'left join fabricantes b On a.cod_prov1 = b.cod_fab'
      'left join mtcategoria c On a.cod_cat = c.codcat')
    Params = <>
    Left = 640
    Top = 144
    object consultaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object consultaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object consultaCAT: TWideStringField
      FieldName = 'CAT'
      Size = 15
    end
    object consultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object consultaCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object consultaCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object consultaCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 344
    Top = 176
  end
  object DSCP: TDataSource
    DataSet = datos.Control_Precio
    Left = 648
    Top = 192
  end
  object FbqFabricantes: TDataSource
    DataSet = datos.ZProveedor
    Left = 456
    Top = 176
  end
  object Qproveedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 408
    Top = 272
    object QproveedorCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object QproveedorCOD_FAB: TWideStringField
      FieldName = 'COD_FAB'
      Required = True
      Size = 10
    end
    object QproveedorDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object QproveedorCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QproveedorTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 12
    end
    object QproveedorFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object QproveedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QproveedorDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
  end
  object DsqProvee: TDataSource
    DataSet = datos.FbqFabricantes
    Left = 464
    Top = 256
  end
end
