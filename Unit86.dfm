object FrmConsultaConduce: TFrmConsultaConduce
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consultar Conduce'
  ClientHeight = 496
  ClientWidth = 657
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label32: TLabel
    Left = 8
    Top = 445
    Width = 143
    Height = 16
    Caption = 'Entre Nombre del Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 29
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 408
    Width = 649
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 645
      Height = 388
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
          Caption = '# Factura'
          DataBinding.FieldName = 'NO_FACT'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
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
        end
        object cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn
          Caption = 'Fecha Conduce'
          DataBinding.FieldName = 'FECHA_FAC'
          HeaderAlignmentHorz = taCenter
          MinWidth = 96
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
          Width = 96
        end
        object cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn
          Caption = 'Nombre del Cliente'
          DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
          HeaderAlignmentHorz = taCenter
          MinWidth = 259
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
          Width = 259
        end
        object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
          Caption = 'Monto '
          DataBinding.FieldName = 'MONTOPAGO'
          HeaderAlignmentHorz = taCenter
          MinWidth = 203
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
          Width = 203
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxTextEdit2: TcxTextEdit
    Left = 8
    Top = 467
    Properties.CharCase = ecUpperCase
    Properties.OnChange = cxTextEdit2PropertiesChange
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Blueprint'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Blueprint'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Blueprint'
    TabOrder = 1
    Width = 265
  end
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 36
    Align = alTop
    TabOrder = 2
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 151
      Height = 33
      Margins.Left = 5
      Caption = 'Conduce |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object LbModo: TLabel
      AlignWithMargins = True
      Left = 181
      Top = 8
      Width = 70
      Height = 21
      Margins.Left = 5
      Caption = 'Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'WHERE a.situacion='#39'CONDUCE'#39)
    Params = <>
    Left = 112
    Top = 144
    object ConsultaNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object ConsultaFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object ConsultaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ConsultaCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object ConsultaCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object ConsultaNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object ConsultaMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object ConsultaHORA: TTimeField
      FieldName = 'HORA'
    end
    object ConsultaPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object ConsultaTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object ConsultaMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object ConsultaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object ConsultaRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ConsultaTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object ConsultaVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object ConsultaSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object ConsultaCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object ConsultaNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object ConsultaRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object ConsultaNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object ConsultaNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object ConsultaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object ConsultaROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object ConsultaNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object ConsultaMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object ConsultaCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object ConsultaINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object ConsultaDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object ConsultaPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object ConsultaLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object ConsultaCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object ConsultaTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object ConsultaEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object ConsultaDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object ConsultaRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object ConsultaABONO: TFloatField
      FieldName = 'ABONO'
    end
    object ConsultaCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object ConsultaNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object ConsultaPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object ConsultaMESES: TIntegerField
      FieldName = 'MESES'
    end
    object ConsultaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object ConsultaPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object ConsultaESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object ConsultaDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object ConsultaCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object ConsultaCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object ConsultaCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object ConsultaQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object ConsultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ConsultaCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object ConsultaCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object ConsultaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ConsultaPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object ConsultaNC: TIntegerField
      FieldName = 'NC'
    end
    object ConsultaCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object ConsultaCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object ConsultaNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object ConsultaFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object ConsultaINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object ConsultaINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object ConsultaDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object ConsultaFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object ConsultaDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object ConsultaINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object ConsultaCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object ConsultaDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object ConsultaIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object ConsultaNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object ConsultaCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object ConsultaNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object ConsultaMORA: TFloatField
      FieldName = 'MORA'
    end
    object ConsultaNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object ConsultaBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object ConsultaOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object ConsultaIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object ConsultaCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object ConsultaTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object ConsultaVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object ConsultaCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object ConsultaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ConsultaFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
  end
  object DsConsulta: TDataSource
    DataSet = Consulta
    Left = 480
    Top = 104
  end
end
