object FrmCobrar: TFrmCobrar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cobro de Facturas'
  ClientHeight = 419
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 448
    Top = 357
    Width = 72
    Height = 13
    Caption = 'No. de Factura'
  end
  object Label1: TLabel
    Left = 167
    Top = 316
    Width = 60
    Height = 13
    Caption = 'Filtrados Por'
  end
  object Label2: TLabel
    Left = 481
    Top = 393
    Width = 208
    Height = 13
    Caption = 'Presione [F9] Para descartar Factura'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 161
    Height = 419
    Align = alLeft
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 1
      Top = 1
      Width = 159
      Height = 68
      Align = alTop
      Caption = 'Realizar Cobro [F2]'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 1
      Top = 147
      Width = 159
      Height = 68
      Align = alTop
      Caption = 'Anular Factura [F5]'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 1
      Top = 215
      Width = 159
      Height = 68
      Align = alTop
      Caption = 'Re Imprimir [F6]'
      TabOrder = 2
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 1
      Top = 351
      Width = 159
      Height = 68
      Align = alTop
      Caption = 'Consultar Balance[F11]'
      TabOrder = 3
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 1
      Top = 283
      Width = 159
      Height = 68
      Align = alTop
      Caption = 'Retornar  Facturas [F8]'
      TabOrder = 4
      OnClick = cxButton5Click
    end
    object cxButton6: TcxButton
      Left = 1
      Top = 69
      Width = 159
      Height = 78
      Align = alTop
      Caption = 'Devolucion de Mercancias [F4]'
      TabOrder = 5
      OnClick = cxButton6Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 162
    Top = 3
    Width = 541
    Height = 304
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyDown = cxGrid1DBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMaster_cobro
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '# Fact'
        DataBinding.FieldName = 'NO_FACT1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 60
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_FAC'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 55
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'NOM_CLIENTE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 135
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'SITUACION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Vendedor'
        DataBinding.FieldName = 'VENDEDOR'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Total Fact'
        DataBinding.FieldName = 'MONTOPAGO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'TIPO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object op1: TRadioGroup
    Left = 448
    Top = 315
    Width = 253
    Height = 36
    Caption = 'Criterio de Busqueda'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'No. de Factura'
      'Nombre del Cliente')
    TabOrder = 2
    OnClick = op1Click
  end
  object Edit1: TEdit
    Left = 552
    Top = 357
    Width = 149
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnChange = Edit1Change
  end
  object combo: TcxComboBox
    Left = 232
    Top = 313
    ParentFont = False
    Properties.Items.Strings = (
      'Todas'
      'Facturas a Creditos'
      'Facturas al Contado'
      'Facturas en HOLD'
      'Facturas Impresas'
      'Facturas Enviadas')
    Properties.OnChange = cxComboBox1PropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 4
    Text = 'Todas'
    Width = 135
  end
  object Panel2: TPanel
    Left = 169
    Top = 335
    Width = 274
    Height = 3
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 205
    Top = 66
    Width = 321
    Height = 184
    BevelInner = bvLowered
    BevelKind = bkSoft
    Color = 198
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 137
      Height = 19
      Caption = 'Monto Facturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 62
      Width = 88
      Height = 19
      Caption = 'Monto CxC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 118
      Width = 112
      Height = 19
      Caption = 'Total General'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TcxCurrencyEdit
      Left = 176
      Top = 21
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Color = 11515885
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = 11515885
      TabOrder = 0
      Width = 121
    end
    object Edit3: TcxCurrencyEdit
      Left = 176
      Top = 63
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Color = 11515885
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = 11515885
      TabOrder = 1
      Width = 121
    end
    object Edit4: TcxCurrencyEdit
      Left = 176
      Top = 117
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Color = 11515885
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsOffice11
      StyleHot.Color = 11515885
      TabOrder = 2
      Width = 121
    end
  end
  object Panel6: TPanel
    Left = 202
    Top = 162
    Width = 292
    Height = 102
    Color = 196
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object Panel7: TPanel
      Left = 3
      Top = 4
      Width = 285
      Height = 94
      Color = 10994931
      ParentBackground = False
      TabOrder = 0
      object Label20: TLabel
        Left = 64
        Top = 10
        Width = 155
        Height = 13
        Caption = 'Entre Clave de Autorizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 24
        Top = 25
        Width = 241
        Height = 31
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        OnKeyDown = Edit5KeyDown
      end
      object cxButton7: TcxButton
        Left = 87
        Top = 59
        Width = 106
        Height = 31
        Caption = '&Ok'
        TabOrder = 1
        OnClick = cxButton7Click
      end
      object Edit6: TEdit
        Left = 199
        Top = 62
        Width = 81
        Height = 21
        TabOrder = 2
        Visible = False
      end
    end
  end
  object Panel4: TPanel
    Left = 166
    Top = 29
    Width = 456
    Height = 258
    Color = 198
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object DBGrid1: TDBGrid
      Left = 6
      Top = 5
      Width = 445
      Height = 245
      DataSource = dSCOTIZA
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NO_FACT1'
          Title.Alignment = taCenter
          Title.Caption = '# Cot'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_FAC'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTOPAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Monto'
          Width = 69
          Visible = True
        end>
    end
  end
  object cxButton8: TcxButton
    Left = 167
    Top = 363
    Width = 225
    Height = 43
    Caption = 'Imprimir Cotizaciones'
    TabOrder = 9
    OnClick = cxButton8Click
  end
  object Panel5: TPanel
    Left = 141
    Top = 27
    Width = 548
    Height = 360
    BevelKind = bkTile
    BevelOuter = bvLowered
    Color = 11515885
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object Label11: TLabel
      Left = 12
      Top = 5
      Width = 44
      Height = 13
      Caption = 'No. Fact'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 12
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Fecha'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 12
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid2: TcxGrid
      Left = 4
      Top = 79
      Width = 541
      Height = 227
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsRebaja_articulos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'COD_ART'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 61
        end
        object cxGrid2DBTableView1Column2: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid2DBTableView1Column3: TcxGridDBColumn
          Caption = 'Cant'
          DataBinding.FieldName = 'CANTIDAD'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid2DBTableView1Column4: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 73
        end
        object cxGrid2DBTableView1Column5: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object DBEdit1: TDBEdit
      Left = 62
      Top = 6
      Width = 134
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 11515885
      DataField = 'NO_FACT'
      DataSource = dsMaster_cobro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 59
      Top = 28
      Width = 134
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 11515885
      DataField = 'FECHA_FAC'
      DataSource = dsMaster_cobro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 59
      Top = 57
      Width = 270
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 11515885
      DataField = 'NOM_CLIENTE'
      DataSource = dsMaster_cobro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object cxButton9: TcxButton
      Left = 194
      Top = 309
      Width = 156
      Height = 44
      Caption = 'Eliminar'
      TabOrder = 4
      OnClick = cxButton9Click
    end
  end
  object Master_cobro: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from master_fact'
      'where situacion ='#39'ENVIADA'#39
      'and fecha_fact =:op1'
      'and terminal ='#39'FACTURACION'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'op1'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'op1'
        ParamType = ptUnknown
      end>
    object Master_cobroNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object Master_cobroFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object Master_cobroTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Master_cobroCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object Master_cobroCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Master_cobroNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Master_cobroMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object Master_cobroHORA: TTimeField
      FieldName = 'HORA'
    end
    object Master_cobroPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object Master_cobroTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object Master_cobroMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object Master_cobroCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object Master_cobroRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object Master_cobroCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Master_cobroTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Master_cobroVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object Master_cobroSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object Master_cobroCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object Master_cobroNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object Master_cobroRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object Master_cobroNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object Master_cobroNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object Master_cobroDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Master_cobroROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object Master_cobroNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object Master_cobroMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object Master_cobroCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object Master_cobroINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object Master_cobroDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object Master_cobroPAGADO: TFloatField
      FieldName = 'PAGADO'
      currency = True
    end
    object Master_cobroLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object Master_cobroCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object Master_cobroTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object Master_cobroEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object Master_cobroDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object Master_cobroRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object Master_cobroABONO: TFloatField
      FieldName = 'ABONO'
      currency = True
    end
    object Master_cobroCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object Master_cobroNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object Master_cobroPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object Master_cobroMESES: TIntegerField
      FieldName = 'MESES'
    end
    object Master_cobroDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object Master_cobroPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object Master_cobroESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object Master_cobroDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object Master_cobroCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object Master_cobroFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
  end
  object dsMaster_cobro: TDataSource
    DataSet = Master_cobro
    Left = 360
    Top = 248
  end
  object balance: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select sum(montopago) TOTAL from master_fact'
      'where situacion ='#39'IMPRESA'#39' '
      'and tipo ='#39'AL CONTADO'#39
      'and fecha_fac=:fecha_fac')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    object balanceTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
  object Balance1: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select sum(montopago) TOTAL from master_fact'
      'where situacion ='#39'IMPRESA'#39' '
      'and tipo ='#39'CREDITO'#39
      'and fecha_fac=:fecha_fac')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    object Balance1TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
  object Anular: TZQuery
    Connection = datos.Data
    Params = <>
    Left = 552
    Top = 72
  end
  object descartar: TZQuery
    Connection = datos.Data
    Params = <>
    Left = 56
    Top = 8
  end
  object ANULAR_DETALLE: TZQuery
    Connection = datos.Data
    Params = <>
    Left = 464
    Top = 48
  end
  object Retornar: TZQuery
    Connection = datos.Data
    Params = <>
    Left = 320
    Top = 40
  end
  object COTIZA: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT * FROM MASTER_FACT'
      'WHERE TERMINAL ='#39'COTIZACION'#39
      'AND SITUACION ='#39'ENVIADA'#39)
    Params = <>
    Left = 504
    Top = 200
    object COTIZANO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object COTIZAFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object COTIZATIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object COTIZACOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object COTIZACOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object COTIZANO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object COTIZAMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object COTIZAHORA: TTimeField
      FieldName = 'HORA'
    end
    object COTIZAPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object COTIZATIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object COTIZAMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object COTIZACONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object COTIZARENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object COTIZACODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object COTIZATIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object COTIZAVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object COTIZASITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object COTIZACAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object COTIZANCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object COTIZARNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object COTIZANCF1: TFloatField
      FieldName = 'NCF1'
    end
    object COTIZANOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object COTIZADESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      currency = True
    end
    object COTIZAROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object COTIZANO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object COTIZAMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object COTIZACUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object COTIZAINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object COTIZADIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object COTIZAPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object COTIZALEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object COTIZACOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object COTIZATERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object COTIZAEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object COTIZADEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object COTIZARESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object COTIZAABONO: TFloatField
      FieldName = 'ABONO'
    end
    object COTIZACHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object COTIZANO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object COTIZAPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object COTIZAMESES: TIntegerField
      FieldName = 'MESES'
    end
    object COTIZADIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object COTIZAPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object COTIZAESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object COTIZADEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object COTIZACONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object COTIZAFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object COTIZACOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object COTIZACOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object COTIZAQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
  end
  object dSCOTIZA: TDataSource
    DataSet = COTIZA
    Left = 544
    Top = 208
  end
  object Rebajar_Articulos: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from detailfact')
    Params = <>
    Left = 248
    Top = 176
    object Rebajar_ArticulosNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object Rebajar_ArticulosNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Rebajar_ArticulosFECHA_FACT: TDateField
      FieldName = 'FECHA_FACT'
    end
    object Rebajar_ArticulosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Rebajar_ArticulosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Rebajar_ArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object Rebajar_ArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object Rebajar_ArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object Rebajar_ArticulosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object Rebajar_ArticulosPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object Rebajar_ArticulosIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object Rebajar_ArticulosITBS: TFloatField
      FieldName = 'ITBS'
    end
    object Rebajar_ArticulosITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object Rebajar_ArticulosTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object Rebajar_ArticulosDESC1: TFloatField
      FieldName = 'DESC1'
    end
    object Rebajar_ArticulosCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object Rebajar_ArticulosITB: TWideStringField
      FieldName = 'ITB'
      Size = 1
    end
    object Rebajar_ArticulosCOBROITB: TWideStringField
      FieldName = 'COBROITB'
      Size = 1
    end
    object Rebajar_ArticulosUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Rebajar_ArticulosCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object Rebajar_ArticulosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object Rebajar_ArticulosTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Rebajar_ArticulosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 13
    end
    object Rebajar_ArticulosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object Rebajar_ArticulosCOD_CLIENT: TIntegerField
      FieldName = 'COD_CLIENT'
    end
    object Rebajar_ArticulosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Rebajar_ArticulosCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object Rebajar_ArticulosCONDICION_ART: TWideStringField
      FieldName = 'CONDICION_ART'
      Size = 10
    end
    object Rebajar_ArticulosLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object Rebajar_ArticulosOPIT: TIntegerField
      FieldName = 'OPIT'
    end
    object Rebajar_ArticulosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object Rebajar_ArticulosEMPLEADO: TWideStringField
      FieldName = 'EMPLEADO'
      Size = 30
    end
    object Rebajar_ArticulosCANT: TFloatField
      FieldName = 'CANT'
    end
    object Rebajar_ArticulosTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object Rebajar_ArticulosCLAVE_COSTO: TWideStringField
      FieldName = 'CLAVE_COSTO'
      Size = 10
    end
  end
  object DsRebaja_articulos: TDataSource
    DataSet = Rebajar_Articulos
    Left = 320
    Top = 184
  end
  object Actualiza_Rebaja: TZQuery
    Connection = datos.Data
    Params = <>
    Left = 232
    Top = 248
  end
  object actualizamonto: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 64
    Top = 80
  end
  object Balance_credito: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select sum(monto) TOTAL from recibo_pago'
      'where fecha=:fecha_fac')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end>
    object Balance_creditoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
end
