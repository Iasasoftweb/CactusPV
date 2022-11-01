object FrmGet_cobro: TFrmGet_cobro
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Get Cobro'
  ClientHeight = 435
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 3
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Nombre del Cliente'
    FocusControl = DBEdit3
  end
  object Label7: TLabel
    Left = 15
    Top = 256
    Width = 68
    Height = 13
    Caption = 'Diaz de Plazos'
    FocusControl = DBEdit3
  end
  object Label13: TLabel
    Left = 533
    Top = 392
    Width = 25
    Height = 13
    Caption = 'ITBs'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 625
    Top = 392
    Width = 58
    Height = 13
    Caption = 'Total Gral.'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 416
    Top = 391
    Width = 60
    Height = 13
    Caption = 'Descuento'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 304
    Top = 391
    Width = 29
    Height = 13
    Caption = 'Total'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 62
    Width = 273
    Height = 146
    Caption = 'Datos Generales'
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 16
      Width = 90
      Height = 13
      Caption = 'Nombre del Cliente'
      FocusControl = DBEdit3
    end
    object Label2: TLabel
      Left = 3
      Top = 59
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
      FocusControl = DBEdit4
    end
    object Label3: TLabel
      Left = 163
      Top = 59
      Width = 57
      Height = 13
      Caption = 'RNC Cliente'
      FocusControl = DBEdit5
    end
    object Label4: TLabel
      Left = 3
      Top = 99
      Width = 46
      Height = 13
      Caption = 'Vendedor'
      FocusControl = DBEdit6
    end
    object Label5: TLabel
      Left = 151
      Top = 99
      Width = 32
      Height = 13
      Caption = 'Cajero'
      FocusControl = DBEdit7
    end
    object DBEdit3: TDBEdit
      Left = 4
      Top = 32
      Width = 262
      Height = 21
      Color = 10994931
      DataField = 'NOM_CLIENTE'
      DataSource = DsMaster
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 4
      Top = 72
      Width = 158
      Height = 21
      Color = 10994931
      DataField = 'DIRECCION'
      DataSource = DsMaster
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 163
      Top = 72
      Width = 102
      Height = 21
      Color = 10994931
      DataField = 'RNC_CLIENTE'
      DataSource = DsMaster
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 4
      Top = 112
      Width = 142
      Height = 21
      Color = 10994931
      DataField = 'VENDEDOR'
      DataSource = DsMaster
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 149
      Top = 112
      Width = 117
      Height = 21
      Color = 10994931
      DataField = 'CAJERO'
      DataSource = DsMaster
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 41
    Align = alTop
    Color = 196
    ParentBackground = False
    TabOrder = 1
    object Label8: TLabel
      Left = 3
      Top = 6
      Width = 66
      Height = 19
      Caption = 'No. Fact'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 556
      Top = 3
      Width = 173
      Height = 23
      Caption = 'Cobro de Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 77
      Top = 7
      Width = 77
      Height = 21
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      Color = 196
      DataField = 'NO_FACT1'
      DataSource = DsMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 643
      Top = 26
      Width = 105
      Height = 21
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      Color = 196
      DataField = 'FECHA_FAC'
      DataSource = DsMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 335
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object Edit2: TEdit
      Left = 462
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object Edit3: TEdit
      Left = 171
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
  end
  object op1: TDBRadioGroup
    Left = 8
    Top = 207
    Width = 273
    Height = 39
    Caption = 'Tipo de Factura'
    Columns = 2
    DataField = 'TIPO'
    DataSource = DsMaster
    Items.Strings = (
      'Al Contado'
      'Credito')
    TabOrder = 2
    Values.Strings = (
      'AL CONTADO'
      'CREDITO')
    OnChange = op1Change
  end
  object op3: TDBRadioGroup
    Left = 8
    Top = 274
    Width = 273
    Height = 39
    Caption = 'Comprobante Fiscal'
    Columns = 4
    DataField = 'NCF'
    DataSource = DsMaster
    Items.Strings = (
      'C. Final'
      'Cr. G.'
      'Especial'
      'Normal')
    TabOrder = 3
    Values.Strings = (
      'AL CONTADO'
      'CREDITO')
  end
  object plazos: TcxDBComboBox
    Left = 111
    Top = 252
    DataBinding.DataField = 'CONDICION_PAGO'
    DataBinding.DataSource = datos.DsMaster_Fact
    Enabled = False
    Properties.Items.Strings = (
      '15'
      '30'
      '45'
      '60'
      '90')
    TabOrder = 4
    Width = 169
  end
  object Panel2: TPanel
    Left = 296
    Top = 56
    Width = 441
    Height = 330
    TabOrder = 5
    object cxGrid1: TcxGrid
      Left = 8
      Top = 3
      Width = 425
      Height = 321
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsZdetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Articulos'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 192
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Cant'
          DataBinding.FieldName = 'CANTIDAD'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 33
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Importe'
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
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
  end
  object DBEdit8: TDBEdit
    Left = 304
    Top = 406
    Width = 107
    Height = 24
    Color = 10994931
    DataField = 'MONTO'
    DataSource = DsMaster
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit9: TDBEdit
    Left = 413
    Top = 406
    Width = 111
    Height = 24
    Color = 10994931
    DataField = 'DESCUENTO'
    DataSource = DsMaster
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit10: TDBEdit
    Left = 526
    Top = 406
    Width = 95
    Height = 24
    Color = 10994931
    DataField = 'POGXITBS'
    DataSource = DsMaster
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit11: TDBEdit
    Left = 624
    Top = 405
    Width = 113
    Height = 24
    Color = 196
    DataField = 'MONTOPAGO'
    DataSource = DsMaster
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object cxButton1: TcxButton
    Left = 205
    Top = 362
    Width = 93
    Height = 65
    Caption = 'Imprimir [F5]'
    TabOrder = 10
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 108
    Top = 362
    Width = 94
    Height = 65
    Caption = 'Detener Turno'
    TabOrder = 11
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 8
    Top = 362
    Width = 94
    Height = 65
    Caption = 'Salir [F10]'
    TabOrder = 12
    OnClick = cxButton3Click
  end
  object Panel3: TPanel
    Left = 220
    Top = 94
    Width = 401
    Height = 209
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvLowered
    Color = 196
    ParentBackground = False
    TabOrder = 13
    Visible = False
    object Panel4: TPanel
      Left = 6
      Top = 7
      Width = 384
      Height = 192
      Color = 10994931
      ParentBackground = False
      TabOrder = 0
      object Label10: TLabel
        Left = 152
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Efectivo'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 152
        Top = 66
        Width = 62
        Height = 13
        Caption = 'Devolucion'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 8
        Width = 121
        Height = 166
        Caption = 'Forma de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Efectivo'
          'T. Credito'
          'T. Debito'
          'CHK')
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 152
        Top = 27
        Width = 201
        Height = 31
        Color = 13034168
        DataField = 'EFECTIVO'
        DataSource = DsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit12KeyDown
      end
      object DBEdit13: TDBEdit
        Left = 152
        Top = 80
        Width = 201
        Height = 50
        TabStop = False
        Color = 9626332
        DataField = 'DEVOLUCION'
        DataSource = DsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnKeyDown = DBEdit13KeyDown
      end
      object cxButton4: TcxButton
        Left = 157
        Top = 147
        Width = 161
        Height = 41
        Caption = '&OK'
        Enabled = False
        TabOrder = 3
        OnClick = cxButton4Click
        OnKeyDown = cxButton4KeyDown
      end
    end
  end
  object op22: TRadioGroup
    Left = 9
    Top = 319
    Width = 282
    Height = 37
    Caption = 'Seleccion de Impresora'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Ticket Punto de Venta'
      'Impresion 5.5 x 8.5')
    TabOrder = 14
  end
  object DsMaster: TDataSource
    DataSet = datos.FbqMaster_Fact
    Left = 696
    Top = 40
  end
  object DsZdetalle: TDataSource
    DataSet = Qdetalle
    Left = 624
    Top = 16
  end
  object Qdetalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from detailfact')
    Params = <>
    Left = 120
    Top = 376
    object QdetalleNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object QdetalleNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object QdetalleFECHA_FACT: TDateField
      FieldName = 'FECHA_FACT'
    end
    object QdetalleTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QdetalleCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object QdetalleARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object QdetalleMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object QdetalleMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object QdetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QdetallePRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object QdetalleIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object QdetalleITBS: TFloatField
      FieldName = 'ITBS'
    end
    object QdetalleITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object QdetalleTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QdetalleDESC1: TFloatField
      FieldName = 'DESC1'
    end
    object QdetalleCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object QdetalleITB: TWideStringField
      FieldName = 'ITB'
      Size = 1
    end
    object QdetalleCOBROITB: TWideStringField
      FieldName = 'COBROITB'
      Size = 1
    end
    object QdetalleUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object QdetalleCOSTOS: TFloatField
      FieldName = 'COSTOS'
      currency = True
    end
    object QdetalleESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object QdetalleTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object QdetalleABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 13
    end
    object QdetalleIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object QdetalleCOD_CLIENT: TIntegerField
      FieldName = 'COD_CLIENT'
    end
    object QdetalleDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QdetalleCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object QdetalleCONDICION_ART: TWideStringField
      FieldName = 'CONDICION_ART'
      Size = 10
    end
    object QdetalleLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object QdetalleOPIT: TIntegerField
      FieldName = 'OPIT'
    end
    object QdetallePRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object QdetalleEMPLEADO: TWideStringField
      FieldName = 'EMPLEADO'
      Size = 30
    end
    object QdetalleCANT: TFloatField
      FieldName = 'CANT'
    end
    object QdetalleTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object QdetalleCLAVE_COSTO: TWideStringField
      FieldName = 'CLAVE_COSTO'
      Size = 10
    end
  end
  object Combo12: TZQuery
    Connection = datos.Data
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 256
    Top = 8
    object Combo12COMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
  end
  object mASTER: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'FECHA_FAC=FECHA_FAC'
      'TIPO=TIPO'
      'COD_CLIENT=COD_CLIENT'
      'COD_EMP=COD_EMP'
      'NO_FACT1=NO_FACT1'
      'MONTO=MONTO'
      'HORA=HORA'
      'POGXITBS=POGXITBS'
      'TIPOPAGO=TIPOPAGO'
      'MONTOPAGO=MONTOPAGO'
      'CONDICION=CONDICION'
      'RENTA=RENTA'
      'CODIGO=CODIGO'
      'TIPOITBS=TIPOITBS'
      'VENDEDOR=VENDEDOR'
      'SITUACION=SITUACION'
      'CAJERO=CAJERO'
      'NCF=NCF'
      'RNC_CLIENTE=RNC_CLIENTE'
      'NCF1=NCF1'
      'NOM_CLIENTE=NOM_CLIENTE'
      'DESCUENTO=DESCUENTO'
      'ROTULO=ROTULO'
      'NO_AUTORIZA_NCF=NO_AUTORIZA_NCF'
      'MONTOFINANCIADO=MONTOFINANCIADO'
      'CUOTAS=CUOTAS'
      'INTERES=INTERES'
      'DIRECCION=DIRECCION'
      'PAGADO=PAGADO'
      'LEYPROPINA=LEYPROPINA'
      'COMPROBANTE=COMPROBANTE'
      'TERMINAL=TERMINAL'
      'EFECTIVO=EFECTIVO'
      'DEVOLUCION1=DEVOLUCION1'
      'RESTANTE=RESTANTE'
      'ABONO=ABONO'
      'CHEK=CHEK'
      'NO_RECIBO=NO_RECIBO'
      'PAGADOCXC=PAGADOCXC'
      'MESES=MESES'
      'DIAS=DIAS'
      'PENDIENTE=PENDIENTE'
      'ESTADOPAGO=ESTADOPAGO'
      'DEVOLUCION=DEVOLUCION'
      'CONDICION_PAGO=CONDICION_PAGO'
      'FECHAVENCIMIENTO=FECHAVENCIMIENTO'
      'COMBO=COMBO'
      'COBRADO=COBRADO')
    DataSet = Master_Print
    BCDToCurrency = False
    Left = 32
    Top = 8
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'NO_FACT1=NO_FACT1'
      'FECHA_FACT=FECHA_FACT'
      'TIPO=TIPO'
      'COD_EMP=COD_EMP'
      'ARTICULO=ARTICULO'
      'MARCA=MARCA'
      'MODELO=MODELO'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPUESTO=IMPUESTO'
      'ITBS=ITBS'
      'ITBIS2=ITBIS2'
      'TOTAL=TOTAL'
      'DESC1=DESC1'
      'COD_ART=COD_ART'
      'ITB=ITB'
      'COBROITB=COBROITB'
      'UNID=UNID'
      'COSTOS=COSTOS'
      'ESTADO=ESTADO'
      'TIPOITBS=TIPOITBS'
      'ABREVIADO=ABREVIADO'
      'IMPORTE=IMPORTE'
      'COD_CLIENT=COD_CLIENT'
      'DESCUENTO=DESCUENTO'
      'COMBO=COMBO'
      'CONDICION_ART=CONDICION_ART'
      'LINEA=LINEA'
      'OPIT=OPIT'
      'PRECIO1=PRECIO1'
      'EMPLEADO=EMPLEADO'
      'CANT=CANT'
      'TURNO=TURNO'
      'CLAVE_COSTO=CLAVE_COSTO')
    DataSet = Detalle_Print
    BCDToCurrency = False
    Left = 80
    Top = 8
  end
  object ticker: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41168.774462337960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 112
    Top = 72
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 29.795300000000000000
        Top = 355.275820000000000000
        Width = 283.464750000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 30.236240000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 106.708720000000000000
          Top = 10.897650000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 115.724490000000000000
          Top = 10.338590000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 179.976500000000000000
          Top = 10.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 283.464750000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 219.212740000000000000
        Top = 445.984540000000000000
        Width = 283.464750000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999909000
          Width = 279.685220000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 154.960730000000000000
          Top = 20.456709999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 35.574829999999910000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCUENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 53.252009999999930000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Top = 5.779530000000136000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 37.795300000000000000
          Top = 21.236240000000120000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 35.015769999999920000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 52.913419999999920000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 36.795300000000000000
          Top = 67.811069999999920000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 37.795300000000000000
          Top = 83.149659999999980000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 22.677180000000000000
          Top = 113.385900000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 128.504020000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Top = 132.283550000000000000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C66733138204E6F206465766F6C7563696F6E6573
            20656E207069657A617320656C65637472696361732E5C7061720D0A2A2A2A2A
            204E6F204465766F6C7563696F6E20646520456665637469766F2A2A2A2A5C70
            61720D0A7D0D0A00}
        end
        object Memo24: TfrxMemoView
          Left = 22.677180000000000000
          Top = 162.519790000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'EFECTIVO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 188.976500000000000000
          Width = 283.464750000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Rich2: TfrxRichView
          Top = 188.976500000000000000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C66733138202A2A2A204752414349415320504F52
            2050524546455249524E4F53202A2A2A5C7061720D0A21212120517565204469
            6F732072652042656E64696761202121215C7061720D0A7D0D0A00}
        end
        object frxDBDataset2DEVOLUCION: TfrxMemoView
          Left = 154.960730000000000000
          Top = 83.149659999999980000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DEVOLUCION'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DEVOLUCION"]')
          ParentFont = False
        end
        object frxDBDataset2EFECTIVO: TfrxMemoView
          Left = 158.740260000000000000
          Top = 68.031540000000120000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EFECTIVO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."EFECTIVO"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 250.787570000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo3: TfrxMemoView
          Left = 41.354360000000000000
          Top = 63.574830000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C/ Bartolome O. Perez #61')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Top = 77.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel.: 809-521-2734')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 34.015770000000000000
          Top = 91.252010000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 114.267780000000000000
          Top = 121.929190000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 28.118120000000000000
          Top = 119.929190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 114.267780000000000000
          Top = 137.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 28.118120000000000000
          Top = 135.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           :')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 156.740260000000000000
          Top = 126.047310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 25.897650000000000000
          Top = 156.063080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 113.488250000000000000
          Top = 157.063080000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 25.897650000000000000
          Top = 175.960730000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 113.488250000000000000
          Top = 174.960730000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBDataset2CAJERO: TfrxMemoView
          Left = 113.488250000000000000
          Top = 192.078850000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAJERO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAJERO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 25.897650000000000000
          Top = 192.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          Left = 113.488250000000000000
          Top = 207.535560000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 24.897650000000000000
          Top = 207.535560000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 229.992270000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 250.110390000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 231.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 102.047310000000000000
          Top = 231.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 139.842610000000000000
          Top = 231.212740000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 211.653680000000000000
          Top = 231.212740000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 27.897650000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'YAN RACINC')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -2.000000000000000000
          Top = 45.354360000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTO PARTS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TALLERES Y REPUESTO')
          ParentFont = False
        end
      end
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 184
  end
  object Master_Print: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from master_fact')
    Params = <>
    Left = 624
    Top = 88
    object Master_PrintNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object Master_PrintFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object Master_PrintTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Master_PrintCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object Master_PrintCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Master_PrintNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Master_PrintMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object Master_PrintHORA: TTimeField
      FieldName = 'HORA'
    end
    object Master_PrintPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object Master_PrintTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object Master_PrintMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object Master_PrintCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object Master_PrintRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object Master_PrintCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Master_PrintTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Master_PrintVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object Master_PrintSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object Master_PrintCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object Master_PrintNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object Master_PrintRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object Master_PrintNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object Master_PrintNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object Master_PrintDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Master_PrintROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object Master_PrintNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object Master_PrintMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object Master_PrintCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object Master_PrintINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object Master_PrintDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object Master_PrintPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object Master_PrintLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object Master_PrintCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object Master_PrintTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object Master_PrintEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object Master_PrintDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object Master_PrintRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object Master_PrintABONO: TFloatField
      FieldName = 'ABONO'
    end
    object Master_PrintCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object Master_PrintNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object Master_PrintPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object Master_PrintMESES: TIntegerField
      FieldName = 'MESES'
    end
    object Master_PrintDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object Master_PrintPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object Master_PrintESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object Master_PrintDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object Master_PrintCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object Master_PrintFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object Master_PrintCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object Master_PrintCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
  end
  object Detalle_Print: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from detailfact')
    Params = <>
    Left = 672
    Top = 120
    object Detalle_PrintNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object Detalle_PrintNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Detalle_PrintFECHA_FACT: TDateField
      FieldName = 'FECHA_FACT'
    end
    object Detalle_PrintTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Detalle_PrintCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Detalle_PrintARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object Detalle_PrintMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object Detalle_PrintMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object Detalle_PrintCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object Detalle_PrintPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object Detalle_PrintIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object Detalle_PrintITBS: TFloatField
      FieldName = 'ITBS'
    end
    object Detalle_PrintITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object Detalle_PrintTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Detalle_PrintDESC1: TFloatField
      FieldName = 'DESC1'
    end
    object Detalle_PrintCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object Detalle_PrintITB: TWideStringField
      FieldName = 'ITB'
      Size = 1
    end
    object Detalle_PrintCOBROITB: TWideStringField
      FieldName = 'COBROITB'
      Size = 1
    end
    object Detalle_PrintUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Detalle_PrintCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object Detalle_PrintESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object Detalle_PrintTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Detalle_PrintABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 13
    end
    object Detalle_PrintIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object Detalle_PrintCOD_CLIENT: TIntegerField
      FieldName = 'COD_CLIENT'
    end
    object Detalle_PrintDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Detalle_PrintCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object Detalle_PrintCONDICION_ART: TWideStringField
      FieldName = 'CONDICION_ART'
      Size = 10
    end
    object Detalle_PrintLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object Detalle_PrintOPIT: TIntegerField
      FieldName = 'OPIT'
    end
    object Detalle_PrintPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object Detalle_PrintEMPLEADO: TWideStringField
      FieldName = 'EMPLEADO'
      Size = 30
    end
    object Detalle_PrintCANT: TFloatField
      FieldName = 'CANT'
    end
    object Detalle_PrintTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object Detalle_PrintCLAVE_COSTO: TWideStringField
      FieldName = 'CLAVE_COSTO'
      Size = 10
    end
  end
  object DsMaster_Print: TDataSource
    DataSet = Master_Print
    Left = 616
    Top = 152
  end
  object DsDetalle_Print: TDataSource
    DataSet = Detalle_Print
    Left = 688
    Top = 160
  end
  object Grande_Normal: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Epson Lx-300'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 40770.399522743060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 168
    Top = 64
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 22.236240000000000000
        Top = 309.921460000000000000
        Width = 793.701300000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000022000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 442.204724410000000000
          Top = 3.338590000000011000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 548.031496060000000000
          Top = 2.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 670.314960630000000000
          Top = 2.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MARCA'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."MARCA"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 249.448980000000000000
        Top = 393.071120000000000000
        Width = 793.701300000000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 650.079160000000000000
          Top = 28.015770000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 43.133890000000120000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCUENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 60.811069999999970000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Top = 28.795300000000110000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 532.913730000000000000
          Top = 42.574830000000080000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 532.913730000000000000
          Top = 60.472480000000080000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 531.913730000000000000
          Top = 75.370130000000080000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 532.913730000000000000
          Top = 90.708720000000090000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Top = 71.811069999999970000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 192.756030000000000000
          Top = 71.811069999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 34.015770000000010000
          Top = 11.338590000000010000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C6673323020475241434941
            5320504F522050524546455249524E4F535C7061720D0A5C6230204E6F206465
            766F6C7563696F6E6573206465207069657A617320656C65637472696361735C
            7061720D0A4E6F206465766F6C7563696F6E20646520656665637469766F5C70
            61720D0A7D0D0A00}
        end
        object Memo24: TfrxMemoView
          Left = 51.354360000000000000
          Top = 88.708671180000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'EFECTIVO')
          ParentFont = False
        end
        object frxDBDataset2DEVOLUCION: TfrxMemoView
          Left = 650.079160000000000000
          Top = 90.708720000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DEVOLUCION'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DEVOLUCION"]')
          ParentFont = False
        end
        object frxDBDataset2EFECTIVO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 75.590600000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EFECTIVO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."EFECTIVO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 6.661410000000046000
          Width = 797.480830000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.661410000000046000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 532.913730000000000000
          Top = 9.661410000000046000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 68.031540000000000000
          Top = 118.826840000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A20202020202020
            20202020205C6230204465737061636861646F20706F723A5C7061720D0A7D0D
            0A00}
        end
        object Rich4: TfrxRichView
          Left = 438.425480000000000000
          Top = 118.826840000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C623020202020
            202020202020202020526563696269646F20706F723A5C7061720D0A7D0D0A00}
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 209.110390000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 37.574830000000000000
          Top = 37.897650000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C/ Santome, Esq. Independencia, Azua, Rep. Dom.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 517.795610000000000000
          Top = 140.385900000000000000
          Width = 211.653680000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'F A C T U R A')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 662.299630000000000000
          Top = 27.440940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 666.079160000000000000
          Top = 73.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 573.370440000000000000
          Top = 71.133890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 663.197280000000000000
          Top = 50.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 37.574830000000000000
          Top = 55.456710000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.: 809.521.2710     RNC : 0100005141-5')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 46.015770000000000000
          Top = 96.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 129.826840000000000000
          Top = 97.252010000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 46.015770000000000000
          Top = 116.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 129.826840000000000000
          Top = 115.149660000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBDataset2CAJERO: TfrxMemoView
          Left = 128.606370000000000000
          Top = 132.267780000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAJERO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAJERO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 44.795300000000000000
          Top = 132.267780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          Left = 129.826840000000000000
          Top = 147.724490000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 45.015770000000000000
          Top = 147.724490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 442.205010000000000000
          Top = 190.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031850000000000000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 670.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 34.015770000000000000
          Top = 16.559060000000000000
          Width = 415.748300000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TALLERES Y REPUESTOS Mr. OTTO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 26.456710000000000000
          Top = 189.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 572.370440000000000000
          Top = 25.440940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 574.488560000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 574.488560000000000000
          Top = 92.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Condicion         ')
          ParentFont = False
        end
        object frxDBDataset2TIPO: TfrxMemoView
          Left = 665.197280000000000000
          Top = 92.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."TIPO"]')
          ParentFont = False
        end
        object frxDBDataset2ROTULO: TfrxMemoView
          Left = 574.488560000000000000
          Top = 117.165430000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ROTULO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."ROTULO"]')
          ParentFont = False
        end
      end
    end
  end
  object TICKER_COTIZA: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41168.708600289350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 112
    Top = 144
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 29.795300000000000000
        Top = 325.039580000000000000
        Width = 283.464750000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 30.236240000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 106.708720000000000000
          Top = 10.897650000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 115.724490000000000000
          Top = 10.338590000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 187.535560000000000000
          Top = 10.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 3.779530000000000000
        Top = 298.582870000000000000
        Width = 283.464750000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 177.637910000000000000
        Top = 415.748300000000000000
        Width = 283.464750000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999909000
          Width = 279.685220000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 154.960730000000000000
          Top = 20.456709999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 37.252009999999980000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Top = 5.779530000000136000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 37.795300000000000000
          Top = 21.236240000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 36.913420000000030000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 26.456710000000000000
          Top = 79.370130000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de ITEMS')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 128.504020000000000000
          Top = 79.370129999999850000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = -15.118120000000000000
          Top = 113.385900000000000000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C667331382050726563696F732076616C69646F73
            20706F72203520645C27656461735C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Line4: TfrxLineView
          Top = 132.283549999999900000
          Width = 283.464750000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Rich2: TfrxRichView
          Left = -3.779530000000000000
          Top = 136.063080000000000000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C66733138202A2A2A205858585858585858585858
            582A2A2A5C7061720D0A2121212058585858582121215C7061720D0A7D0D0A00}
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 220.551330000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo5: TfrxMemoView
          Left = 34.015770000000010000
          Top = 91.252010000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACION')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 114.267780000000000000
          Top = 121.929190000000000000
          Width = 68.031540000000010000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 28.118120000000000000
          Top = 119.929190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 114.267780000000000000
          Top = 137.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 28.118120000000000000
          Top = 135.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           :')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 156.740260000000000000
          Top = 126.047310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 25.897650000000000000
          Top = 156.063080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 109.708720000000000000
          Top = 157.063080000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 25.897650000000000000
          Top = 175.960730000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 109.708720000000000000
          Top = 174.960730000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 197.992270000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 218.110390000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 199.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 102.047310000000000000
          Top = 199.212740000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 139.842610000000000000
          Top = 199.212740000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 211.653680000000000000
          Top = 199.212740000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 39.574830000000000000
          Top = 63.574830000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C/ Bartolome O. Perez #61')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 36.015770000000000000
          Top = 77.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel.: 809-521-2734')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = -1.779530000000000000
          Top = 27.897650000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'YAN RACINC')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -3.779530000000000000
          Top = 45.354360000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTO PARTS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -1.779530000000000000
          Top = 11.338590000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TALLERES Y REPUESTO')
          ParentFont = False
        end
      end
    end
  end
  object GRANDE_COTIZA: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Epson Lx-300'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 40673.928283055550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 168
    Top = 224
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 22.236240000000000000
        Top = 309.921460000000000000
        Width = 793.701300000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000022000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 442.204724410000000000
          Top = 3.338590000000011000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 548.031496060000000000
          Top = 2.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 670.314960630000000000
          Top = 2.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MARCA'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."MARCA"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 249.448980000000000000
        Top = 393.071120000000000000
        Width = 793.701300000000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 650.079160000000000000
          Top = 28.015770000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 45.692949999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Top = 28.795300000000110000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 532.913730000000000000
          Top = 45.354359999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Top = 71.811070000000030000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 192.756030000000000000
          Top = 71.811070000000030000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 34.015770000000010000
          Top = 11.338590000000010000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C667332302050726563696F
            73202076616C69646F7320706F72203520646961735C62305C7061720D0A7D0D
            0A00}
        end
        object Line3: TfrxLineView
          Top = 6.661410000000046000
          Width = 797.480830000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.661410000000046000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 532.913730000000000000
          Top = 9.661410000000046000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 68.031540000000010000
          Top = 130.165430000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C623020205072
            6570617261646F20706F723A5C625C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          Left = 438.425480000000000000
          Top = 130.165430000000100000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C623020202020
            202020202020202020526563696269646F20706F723A5C7061720D0A7D0D0A00}
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 209.110390000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 37.574830000000000000
          Top = 37.897650000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C/ Santome, Esq. Independencia, Azua, Rep. Dom.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 275.905690000000000000
          Top = 144.165430000000000000
          Width = 283.464750000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'C O T I Z A C I O N')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 662.299630000000000000
          Top = 27.440940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 666.079160000000000000
          Top = 73.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 573.370440000000000000
          Top = 71.133890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 663.197280000000000000
          Top = 50.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 37.574830000000000000
          Top = 55.456710000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.: 809.521.2710     RNC : 0100005141-5')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 46.015770000000010000
          Top = 107.590600000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 129.826840000000000000
          Top = 108.590600000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 46.015770000000010000
          Top = 127.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 129.826840000000000000
          Top = 126.488250000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 442.205010000000000000
          Top = 190.212740000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031849999999900000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 670.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 34.015770000000010000
          Top = 16.559060000000000000
          Width = 415.748300000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TALLERES Y REPUESTOS Mr. OTTO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 26.456710000000000000
          Top = 189.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 572.370440000000000000
          Top = 25.440940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 574.488560000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
      end
    end
  end
  object TIcker_Credito: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41168.709430763890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 312
    Top = 104
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 29.795300000000000000
        Top = 355.275820000000000000
        Width = 283.464750000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 30.236240000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 106.708720000000000000
          Top = 10.897650000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 115.724490000000000000
          Top = 10.338590000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 179.976500000000000000
          Top = 10.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 283.464750000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 219.212740000000000000
        Top = 445.984540000000000000
        Width = 283.464750000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999908000
          Width = 279.685220000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 154.960730000000000000
          Top = 20.456709999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 35.574829999999900000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCUENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 53.252009999999930000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Top = 5.779530000000136000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 37.795300000000000000
          Top = 21.236240000000120000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 35.015769999999860000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 52.913419999999860000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 15.118120000000000000
          Top = 75.590600000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 109.606370000000000000
          Top = 75.590599999999940000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Top = 151.181199999999900000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C66733138204E6F206465766F6C7563696F6E6573
            20656E207069657A617320656C65637472696361732E5C7061720D0A2A2A2A2A
            204E6F204465766F6C7563696F6E20646520456665637469766F2A2A2A2A5C70
            61720D0A7D0D0A00}
        end
        object Line4: TfrxLineView
          Top = 188.976499999999900000
          Width = 283.464750000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Rich2: TfrxRichView
          Top = 188.976500000000000000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D73
            66746564697420352E34312E32312E323530393B7D5C766965776B696E64345C
            7563315C706172645C71635C66733138202A2A2A205858585858585858585858
            5858582A2A2A5C7061720D0A212121585858585858585858582121215C706172
            0D0A7D0D0A00}
        end
        object Line5: TfrxLineView
          Left = 41.574830000000000000
          Top = 123.724490000000000000
          Width = 192.756030000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 71.811070000000000000
          Top = 124.724490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Firma')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 250.787570000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo5: TfrxMemoView
          Left = 34.015770000000010000
          Top = 91.252010000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 110.488250000000000000
          Top = 121.929190000000000000
          Width = 68.031540000000010000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 28.118120000000000000
          Top = 119.929190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 110.488250000000000000
          Top = 137.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 28.118120000000000000
          Top = 135.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           :')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 156.740260000000000000
          Top = 126.047310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 25.897650000000000000
          Top = 156.063080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 109.708720000000000000
          Top = 157.063080000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 25.897650000000000000
          Top = 175.960730000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 109.708720000000000000
          Top = 174.960730000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBDataset2CAJERO: TfrxMemoView
          Left = 109.708720000000000000
          Top = 192.078850000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAJERO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAJERO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 25.897650000000000000
          Top = 192.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          Left = 109.708720000000000000
          Top = 207.535560000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 24.897650000000000000
          Top = 207.535560000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 229.992270000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 250.110390000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 231.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 102.047310000000000000
          Top = 231.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 139.842610000000000000
          Top = 231.212740000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 211.653680000000000000
          Top = 231.212740000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 196.535560000000000000
          Top = 105.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CREDITO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 39.574830000000000000
          Top = 60.574830000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C/ Bartolome O. Perez #61')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 36.015770000000000000
          Top = 74.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel.: 809-521-2734')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = -1.779530000000000000
          Top = 24.897650000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'YAN RACINC')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -3.779530000000000000
          Top = 42.354360000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTO PARTS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -1.779530000000000000
          Top = 8.338590000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TALLERES Y REPUESTO')
          ParentFont = False
        end
      end
    end
  end
  object Grande_Credito: TfrxReport
    Version = '4.12.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Epson Lx-300'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 40770.399818425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 368
    Top = 48
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      object DetailData1: TfrxDetailData
        Height = 22.236240000000000000
        Top = 309.921460000000000000
        Width = 793.701300000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000022000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          Left = 442.204724410000000000
          Top = 3.338590000000011000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          Left = 548.031496060000000000
          Top = 2.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 670.314960630000000000
          Top = 2.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MARCA'
          DataSet = detalle
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."MARCA"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 249.448980000000000000
        Top = 393.071120000000000000
        Width = 793.701300000000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          Left = 650.079160000000000000
          Top = 28.015770000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 43.133890000000120000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCUENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 60.811070000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Top = 28.795300000000110000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 532.913730000000000000
          Top = 42.574830000000020000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 532.913730000000000000
          Top = 60.472480000000080000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Top = 71.811070000000030000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 192.756030000000000000
          Top = 71.811069999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 34.015770000000000000
          Top = 11.338590000000010000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C6673323020475241434941
            5320504F522050524546455249524E4F535C7061720D0A5C6230204E6F206465
            766F6C7563696F6E6573206465207069657A617320656C65637472696361735C
            7061720D0A4E6F206465766F6C7563696F6E20646520656665637469766F5C70
            61720D0A7D0D0A00}
        end
        object Memo24: TfrxMemoView
          Left = 51.354360000000000000
          Top = 100.047261180000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'FACTURA A CREDITO')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 6.661410000000046000
          Width = 797.480830000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.661410000000046000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 532.913730000000000000
          Top = 9.661410000000046000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 68.031540000000000000
          Top = 130.165430000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A20202020202020
            20202020205C6230204465737061636861646F20706F723A5C7061720D0A7D0D
            0A00}
        end
        object Rich4: TfrxRichView
          Left = 438.425480000000000000
          Top = 130.165430000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313033347B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
            64305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E657261746F72
            204D7366746564697420352E34312E32312E323530393B7D5C766965776B696E
            64345C7563315C706172645C6366315C625C66305C66733230205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C623020202020
            202020202020202020526563696269646F20706F723A5C7061720D0A7D0D0A00}
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 209.110390000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 37.574830000000000000
          Top = 37.897650000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C/ Santome, Esq. Independencia, Azua, Rep. Dom.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 461.764070000000000000
          Top = 152.944960000000000000
          Width = 340.157700000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'FACTURA A CREDITO')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          Left = 662.299630000000000000
          Top = 27.440940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NO_FACT'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."NO_FACT"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          Left = 666.079160000000000000
          Top = 73.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 573.370440000000000000
          Top = 71.133890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          Left = 663.197280000000000000
          Top = 50.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 37.574830000000000000
          Top = 55.456710000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.: 809.521.2710     RNC : 0100005141-5')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 46.015770000000000000
          Top = 96.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          Left = 129.826840000000000000
          Top = 97.252010000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOM_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 46.015770000000000000
          Top = 116.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          Left = 129.826840000000000000
          Top = 115.149660000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBDataset2CAJERO: TfrxMemoView
          Left = 128.606370000000000000
          Top = 132.267780000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAJERO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAJERO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 44.795300000000000000
          Top = 132.267780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          Left = 129.826840000000000000
          Top = 147.724490000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 45.015770000000000000
          Top = 147.724490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 442.205010000000000000
          Top = 190.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031850000000000000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 670.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 34.015770000000000000
          Top = 16.559060000000000000
          Width = 415.748300000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TALLERES Y REPUESTOS Mr. OTTO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 26.456710000000000000
          Top = 189.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 572.370440000000000000
          Top = 25.440940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 574.488560000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object frxDBDataset2ROTULO: TfrxMemoView
          Left = 574.488560000000000000
          Top = 143.622140000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ROTULO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."ROTULO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 574.488560000000000000
          Top = 117.165430000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Limite de Pago')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 665.197280000000000000
          Top = 94.488250000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONDICION_PAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CONDICION_PAGO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 705.992580000000000000
          Top = 94.488250000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'dias')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 574.488560000000000000
          Top = 94.488250000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Plazos        ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 665.197280000000000000
          Top = 117.165430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHAVENCIMIENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHAVENCIMIENTO"]')
          ParentFont = False
        end
      end
    end
  end
  object MontoUpdate: TZQuery
    Connection = datos.Data
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 352
    Top = 8
    object WideStringField1: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
  end
  object zqclientes: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente'
      'where codigo =:codd')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codd'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codd'
        ParamType = ptUnknown
      end>
    object zqclientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
  end
  object master_credito: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'selecT SUM(PENDIENTE) from master_fact'
      'WHERE COD_CLIENT =:CLIENTE1'
      'and tipo =:op1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'op1'
        ParamType = ptUnknown
      end>
    Left = 472
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'op1'
        ParamType = ptUnknown
      end>
    object master_creditoSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
  end
  object clientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 144
    Top = 128
    object clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object clientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object clientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object clientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object clientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object clientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object clientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object clientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object clientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 10
    end
    object clientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object clientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object clientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object clientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object clientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object clientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object clientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object clientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object clientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object clientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object clientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object clientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object clientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
  end
end
