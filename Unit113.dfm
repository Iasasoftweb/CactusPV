object FrmConduce: TFrmConduce
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Conduce'
  ClientHeight = 567
  ClientWidth = 1085
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
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 244
    Height = 77
    Caption = 'Conduce'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GP1: TcxGroupBox
    Left = 328
    Top = 8
    Enabled = False
    TabOrder = 0
    Height = 81
    Width = 745
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 17
      Top = 11
      Width = 53
      Height = 13
      Caption = '# Conduce'
      FocusControl = cxDBSpinEdit2
    end
    object Label1: TLabel
      Left = 48
      Top = 35
      Width = 23
      Height = 13
      Caption = 'Hora'
      FocusControl = cxDBTimeEdit1
    end
    object Label4: TLabel
      Left = 44
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object Label5: TLabel
      Left = 277
      Top = 14
      Width = 48
      Height = 13
      Caption = '# Factura'
      FocusControl = cxDBSpinEdit1
    end
    object Label6: TLabel
      Left = 289
      Top = 39
      Width = 78
      Height = 13
      Caption = 'Nombre Clientes'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 83
      Top = 9
      DataBinding.DataField = 'IDCONDUCE'
      DataBinding.DataSource = datos.DsConduceM
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 16776176
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 83
      Top = 31
      DataBinding.DataField = 'HORA'
      DataBinding.DataSource = datos.DsConduceM
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 83
      Top = 52
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = datos.DsConduceM
      TabOrder = 2
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 370
      Top = 9
      DataBinding.DataField = 'NOFACT'
      DataBinding.DataSource = datos.DsConduceM
      TabOrder = 3
      OnExit = cxDBSpinEdit1Exit
      Width = 90
    end
    object cxButton1: TcxButton
      Left = 331
      Top = 9
      Width = 36
      Height = 22
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 370
      Top = 36
      DataBinding.DataField = 'CLIENTES'
      DataBinding.DataSource = datos.DsConduceM
      ParentFont = False
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 351
    end
  end
  object gp2: TcxGroupBox
    Left = 8
    Top = 120
    Enabled = False
    TabOrder = 1
    Height = 439
    Width = 593
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 589
      Height = 419
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsConduceD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.FooterAutoHeight = True
        OptionsView.GridLineColor = clHighlight
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
          Caption = 'Cod'
          DataBinding.FieldName = 'COD_ART'
          HeaderAlignmentHorz = taCenter
          MinWidth = 57
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 57
        end
        object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulos'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          MinWidth = 250
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 250
        end
        object cxGrid1DBTableView1CANTI: TcxGridDBColumn
          Caption = 'Cant. Factudo'
          DataBinding.FieldName = 'CANTI'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
        end
        object cxGrid1DBTableView1CANT_REST: TcxGridDBColumn
          Caption = 'Cant Rest'
          DataBinding.FieldName = 'CANT_REST'
          HeaderAlignmentHorz = taCenter
          MinWidth = 76
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 76
        end
        object cxGrid1DBTableView1CANT_SAL: TcxGridDBColumn
          Caption = 'Cant. Salida'
          DataBinding.FieldName = 'CANT_SAL'
          HeaderAlignmentHorz = taCenter
          MinWidth = 51
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 51
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          MinWidth = 86
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 86
        end
        object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTADO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxButton2: TcxButton
    Left = 256
    Top = 440
    Width = 122
    Height = 33
    Caption = 'Nuevo Conduce'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 224
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    WordWrap = True
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 256
    Top = 479
    Width = 122
    Height = 33
    Caption = 'Nuevo Conduce'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 224
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    WordWrap = True
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_CONDUCEM_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 336
    Top = 160
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object DsConduceD: TDataSource
    DataSet = datos.ConduceD
    Left = 552
    Top = 288
  end
  object FacturasImpresas: TZReadOnlyQuery
    Connection = datos.Data
    AutoCalcFields = False
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion a' +
        's dir  from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp')
    Params = <>
    Left = 216
    Top = 192
    object FacturasImpresasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FacturasImpresasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FacturasImpresasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FacturasImpresasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FacturasImpresasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FacturasImpresasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FacturasImpresasMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object FacturasImpresasHORA: TTimeField
      FieldName = 'HORA'
    end
    object FacturasImpresasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FacturasImpresasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FacturasImpresasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object FacturasImpresasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FacturasImpresasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FacturasImpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FacturasImpresasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FacturasImpresasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FacturasImpresasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FacturasImpresasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 40
    end
    object FacturasImpresasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FacturasImpresasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FacturasImpresasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FacturasImpresasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FacturasImpresasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FacturasImpresasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FacturasImpresasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FacturasImpresasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FacturasImpresasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FacturasImpresasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FacturasImpresasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object FacturasImpresasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FacturasImpresasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FacturasImpresasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FacturasImpresasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FacturasImpresasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FacturasImpresasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FacturasImpresasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FacturasImpresasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FacturasImpresasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FacturasImpresasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FacturasImpresasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FacturasImpresasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FacturasImpresasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FacturasImpresasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FacturasImpresasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FacturasImpresasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FacturasImpresasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FacturasImpresasFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object FacturasImpresasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FacturasImpresasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FacturasImpresasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object FacturasImpresasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object FacturasImpresasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object FacturasImpresasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object FacturasImpresasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FacturasImpresasPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
    end
    object FacturasImpresasNC: TIntegerField
      FieldName = 'NC'
    end
    object FacturasImpresasCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FacturasImpresasCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object FacturasImpresasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 100
    end
    object FacturasImpresasFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object FacturasImpresasINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object FacturasImpresasINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object FacturasImpresasDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object FacturasImpresasFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object FacturasImpresasDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object FacturasImpresasINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object FacturasImpresasCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object FacturasImpresasDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object FacturasImpresasIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object FacturasImpresasNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object FacturasImpresasCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object FacturasImpresasNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object FacturasImpresasMORA: TFloatField
      FieldName = 'MORA'
    end
    object FacturasImpresasNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object FacturasImpresasBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object FacturasImpresasOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object FacturasImpresasIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object FacturasImpresasCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object FacturasImpresasTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object FacturasImpresasVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object FacturasImpresasIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object FacturasImpresasUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object FacturasImpresasPAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
    end
    object FacturasImpresasPAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
    end
    object FacturasImpresasPAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
    end
    object FacturasImpresasPAGOXBONO: TFloatField
      FieldName = 'PAGOXBONO'
    end
    object FacturasImpresasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 100
    end
    object FacturasImpresasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object FacturasImpresasDIR: TWideStringField
      FieldName = 'DIR'
      Size = 40
    end
  end
  object DsFacturasImpresas: TDataSource
    DataSet = FacturasImpresas
    Left = 313
    Top = 224
  end
end
