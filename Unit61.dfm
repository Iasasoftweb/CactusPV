object FrmConsultaSuplidores: TFrmConsultaSuplidores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Facturas x Suplidor'
  ClientHeight = 503
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 533
    Top = 450
    Width = 71
    Height = 13
    Caption = 'Moneda $RD'
    FocusControl = cxDBCalcEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 533
    Top = 469
    Width = 70
    Height = 13
    Caption = 'Moneda $US'
    FocusControl = cxDBCalcEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 69
    Width = 793
    Height = 375
    TabOrder = 2
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'MONTOPAGO'
          Column = cxGrid1DBTableView1MONTOPAGO
        end
        item
          Kind = skSum
          FieldName = 'MONTOPEND'
          Column = cxGrid1DBTableView1MONTOPEND
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 89
      end
      object cxGrid1DBTableView1NOFACT: TcxGridDBColumn
        Caption = '# Factura'
        DataBinding.FieldName = 'NOFACT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 81
      end
      object cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn
        Caption = 'Fecha Compra'
        DataBinding.FieldName = 'FECHA_COMPRA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 94
      end
      object cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn
        Caption = 'Monto Facturado'
        DataBinding.FieldName = 'MONTOFACT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 132
      end
      object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
        Caption = 'Monto Pagado'
        DataBinding.FieldName = 'MONTOPAGO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 144
      end
      object cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn
        Caption = 'Monto Pendiente'
        DataBinding.FieldName = 'MONTOPEND'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 139
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'MONEDA'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 53
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
        Width = 53
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 18
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = cxGrid1DBTableView1Column2PropertiesButtonClick
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 63
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 7
      Width = 36
      Height = 13
      Caption = 'ID Prov'
    end
    object Label6: TLabel
      Left = 69
      Top = 7
      Width = 107
      Height = 13
      Caption = 'Nombre del Proveedor'
    end
    object cxButton5: TcxButton
      Left = 312
      Top = 20
      Width = 26
      Height = 21
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 0
      OnClick = cxButton5Click
    end
    object Edit1: TEdit
      Left = 6
      Top = 21
      Width = 57
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 66
      Top = 21
      Width = 243
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object op1: TcxRadioGroup
      Left = 349
      Top = 7
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = 'Todas las Facturas'
        end
        item
          Caption = 'Facturas Pendientes'
        end>
      ItemIndex = 0
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 3
      OnClick = op1Click
      Height = 47
      Width = 145
    end
    object cxButton1: TcxButton
      Left = 651
      Top = 10
      Width = 104
      Height = 41
      Caption = 'Ejecutar'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object op2: TcxRadioGroup
      Left = 500
      Top = 3
      Alignment = alCenterCenter
      Enabled = False
      Properties.Items = <
        item
          Caption = 'Facturas Vencidas'
        end
        item
          Caption = 'Proxima a Vencer'
        end
        item
          Caption = 'Todas'
        end>
      ItemIndex = 2
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 5
      Height = 54
      Width = 145
    end
  end
  object cxGrid2: TcxGrid
    Left = 69
    Top = 44
    Width = 243
    Height = 264
    TabOrder = 1
    Visible = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsqProvee
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
        Caption = 'Proveedores'
        DataBinding.FieldName = 'DESCRIPCION'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 235
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
        Width = 235
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 453
    Width = 129
    Height = 35
    Caption = 'Realizar Pago'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 1000
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object Panel2: TPanel
    Left = 512
    Top = 445
    Width = 17
    Height = 20
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 512
    Top = 466
    Width = 17
    Height = 20
    Color = clMaroon
    ParentBackground = False
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 8
    Top = 124
    Width = 790
    Height = 249
    BorderStyle = bsSingle
    TabOrder = 7
    Visible = False
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 784
      Height = 243
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsDetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No existe data'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView1CANT: TcxGridDBColumn
          Caption = 'Cant'
          DataBinding.FieldName = 'CANT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 47
        end
        object cxGrid3DBTableView1ARTICULOSNOM: TcxGridDBColumn
          Caption = 'Articulos'
          DataBinding.FieldName = 'ARTICULOSNOM'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 250
        end
        object cxGrid3DBTableView1OBS: TcxGridDBColumn
          DataBinding.FieldName = 'OBS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 201
        end
        object cxGrid3DBTableView1PRECIOUNIT: TcxGridDBColumn
          Caption = 'Precio Unt'
          DataBinding.FieldName = 'PRECIOUNIT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid3DBTableView1MONTOCOSTO: TcxGridDBColumn
          Caption = 'Monto Costo'
          DataBinding.FieldName = 'MONTOCOSTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 74
        end
        object cxGrid3DBTableView1TOTALIMP: TcxGridDBColumn
          Caption = 'Total Imp'
          DataBinding.FieldName = 'TOTALIMP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid3DBTableView1TOTALCOSTO: TcxGridDBColumn
          Caption = 'Total Costo'
          DataBinding.FieldName = 'TOTALCOSTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
  end
  object PanelDesc: TcxGroupBox
    Left = 192
    Top = 97
    Caption = '-'
    PanelStyle.BorderWidth = 2
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 4
    Visible = False
    Height = 265
    Width = 393
    object Label1: TLabel
      Left = 138
      Top = 27
      Width = 55
      Height = 13
      Caption = '# Factura'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 265
      Top = 30
      Width = 97
      Height = 13
      Caption = 'Fecha de Compra'
      FocusControl = cxDBDateEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 259
      Top = 90
      Width = 75
      Height = 13
      Caption = 'Total Factura'
      FocusControl = cxDBCalcEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 18
      Top = 78
      Width = 93
      Height = 26
      Caption = 'Cambio Moneda Compra'
      FocusControl = cxDBCalcEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label10: TLabel
      Left = 138
      Top = 78
      Width = 81
      Height = 26
      Caption = 'Pago a la Taza Actual'
      FocusControl = cxDBCalcEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label11: TLabel
      Left = 20
      Top = 153
      Width = 36
      Height = 13
      Caption = 'Abono'
      FocusControl = cxDBCalcEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton7: TcxButton
      Left = 157
      Top = 222
      Width = 75
      Height = 25
      Caption = 'Ok'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 81
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
      OnClick = cxButton7Click
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 135
      Top = 43
      DataBinding.DataField = 'NOFACT'
      DataBinding.DataSource = DsConsulta
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 262
      Top = 43
      DataBinding.DataField = 'FECHA_COMPRA'
      DataBinding.DataSource = DsConsulta
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 105
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 259
      Top = 106
      DataBinding.DataField = 'MONTOPEND'
      DataBinding.DataSource = DsConsulta
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 105
    end
    object cxDBCalcEdit2: TcxDBCalcEdit
      Left = 18
      Top = 106
      DataBinding.DataField = 'MONTOFACT'
      DataBinding.DataSource = DsConsulta
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 114
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 138
      Top = 106
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 115
    end
    object op3: TcxRadioGroup
      Left = 16
      Top = 15
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = 'Pago Completo'
        end
        item
          Caption = 'Abono'
        end>
      ItemIndex = 0
      TabOrder = 6
      OnClick = op3Click
      Height = 58
      Width = 105
    end
    object abono1: TcxCurrencyEdit
      Left = 18
      Top = 169
      ParentFont = False
      Properties.DisplayFormat = '$,0.00;($,0.00)'
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -32
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 351
    end
  end
  object DsqProvee: TDataSource
    DataSet = Qproveedor
    Left = 408
    Top = 80
  end
  object Qproveedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 672
    Top = 168
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
  object Zqconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from master_ajuste a')
    Params = <>
    Left = 608
    Top = 112
    object ZqconsultaNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object ZqconsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZqconsultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZqconsultaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZqconsultaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object ZqconsultaPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object ZqconsultaNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object ZqconsultaFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object ZqconsultaPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object ZqconsultaMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
    object ZqconsultaMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
    object ZqconsultaMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
    object ZqconsultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqconsultaFECHA_V: TDateField
      FieldName = 'FECHA_V'
      ReadOnly = True
    end
    object ZqconsultaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object ZqconsultaCAMBIOMONEDA: TFloatField
      FieldName = 'CAMBIOMONEDA'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
    object ZqconsultaABONO: TFloatField
      FieldName = 'ABONO'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
    object ZqconsultaPAGADO: TFloatField
      FieldName = 'PAGADO'
      DisplayFormat = '$,0.00;($,0.00)'
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = Zqconsulta
    Left = 616
    Top = 200
  end
  object Detalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from detalle_ajuste')
    Params = <>
    Left = 416
    Top = 368
    object DetalleDETALLEID: TIntegerField
      FieldName = 'DETALLEID'
      Required = True
    end
    object DetalleMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object DetalleCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object DetalleCANT: TFloatField
      FieldName = 'CANT'
    end
    object DetalleESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object DetalleMONTOCOSTO: TFloatField
      FieldName = 'MONTOCOSTO'
      currency = True
    end
    object DetalleTOTALIMP: TFloatField
      FieldName = 'TOTALIMP'
    end
    object DetalleTOTALCOSTO: TFloatField
      FieldName = 'TOTALCOSTO'
      currency = True
    end
    object DetalleARTICULOSNOM: TWideStringField
      FieldName = 'ARTICULOSNOM'
      Size = 100
    end
    object DetalleMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object DetallePRECIOUNIT: TFloatField
      FieldName = 'PRECIOUNIT'
      currency = True
    end
    object DetalleOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
  end
  object DsDetalle: TDataSource
    DataSet = Detalle
    Left = 552
    Top = 160
  end
end
