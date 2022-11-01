object FrmGastos: TFrmGastos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = '****Nuevos Gastos****'
  ClientHeight = 273
  ClientWidth = 598
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
  object cxGroupBox1: TcxGroupBox
    Left = 21
    Top = 8
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 257
    Width = 569
    object Label1: TLabel
      Left = 120
      Top = 16
      Width = 51
      Height = 16
      Caption = '# Gastos'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 192
      Top = 16
      Width = 34
      Height = 16
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 120
      Top = 120
      Width = 70
      Height = 16
      Caption = 'Observaci'#243'n'
      FocusControl = cxDBMemo1
    end
    object Label4: TLabel
      Left = 120
      Top = 64
      Width = 66
      Height = 16
      Caption = 'Beneficiario'
      FocusControl = cxDBTextEdit1
    end
    object Label5: TLabel
      Left = 423
      Top = 64
      Width = 45
      Height = 16
      Caption = 'Importe'
      FocusControl = cxDBCalcEdit1
    end
    object Label6: TLabel
      Left = 295
      Top = 16
      Width = 59
      Height = 16
      Caption = 'Conceptos'
      FocusControl = cxDBDateEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 120
      Top = 32
      DataBinding.DataField = 'GASTOSID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 66
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 192
      Top = 32
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 97
    end
    object cxDBMemo1: TcxDBMemo
      Left = 120
      Top = 136
      DataBinding.DataField = 'NOTA'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Height = 97
      Width = 425
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 120
      Top = 80
      DataBinding.DataField = 'BENEFICIADO'
      DataBinding.DataSource = DataSource1
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 297
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 423
      Top = 80
      DataBinding.DataField = 'IMPORTE'
      DataBinding.DataSource = DataSource1
      TabOrder = 4
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 5
      Top = 96
      Width = 111
      Height = 34
      Caption = '&Nuevo'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 789
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 5
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 3
      Top = 136
      Width = 111
      Height = 34
      Caption = '&Guardar'
      Enabled = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1014
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 5
      Top = 176
      Width = 111
      Height = 34
      Caption = '&Cancelar'
      Enabled = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 997
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 7
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 5
      Top = 216
      Width = 111
      Height = 34
      Caption = '&Cerrar'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 996
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 8
      OnClick = cxButton4Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 295
      Top = 34
      Width = 250
      Height = 23
      DropDownCount = 8
      DataField = 'CONCEPTOSID'
      DataSource = DataSource1
      LookupField = 'CONCEPTOSID'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = conceptos
      TabOrder = 9
    end
    object op1: TcxRadioGroup
      Left = 8
      Top = 15
      Caption = 'Tipo Impresi'#243'n'
      Properties.Items = <
        item
          Caption = 'Ticket'
        end
        item
          Caption = '8 1/2 x 11'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Height = 75
      Width = 106
    end
    object memo1: TcxMemo
      Left = 256
      Top = 104
      Lines.Strings = (
        'memo1')
      TabOrder = 11
      Visible = False
      Height = 89
      Width = 185
    end
  end
  object DataSource1: TDataSource
    DataSet = datos.ZGastos
    Left = 512
    Top = 128
  end
  object conceptos: TDataSource
    DataSet = datos.ZConceptos_Gastos
    Left = 552
    Top = 88
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_CONTROL_GASTOS_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 304
    Top = 80
    object maxGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object print0: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Epson Lx-300'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 42905.675660011580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 176
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master_cobro
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
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 139.077180000000000000
        Top = 19.200000000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          Left = -239.791960000000000000
          Top = 91.565429999999990000
          Width = 791.357700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RECIBO DE EGRESO')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 589.909030000000000000
          Top = 51.374830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 589.600000000000000000
          Top = 18.200000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          Left = 28.800000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 29.800000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 59.036240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 59.036240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 28.800000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 28.800000000000000000
          Top = 58.733890000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 328.346630000000000000
        Top = 220.800000000000000000
        Width = 793.701300000000000000
        DataSet = master_cobro
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 553.247620000000000000
          Top = 26.385900000000030000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 146.396970000000000000
          Top = 92.959059999999970000
          Width = 589.606680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 19.933890000000000000
          Top = 78.738590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagado a :')
          ParentFont = False
        end
        object masterCLIENTE: TfrxMemoView
          Left = 158.658380000000000000
          Top = 71.738590000000000000
          Width = 551.811380000000000000
          Height = 18.897650000000000000
          DataField = 'BENEFICIADO'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."BENEFICIADO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 17.595300000000000000
          Top = 128.770130000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Por concepto de :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 149.878850000000000000
          Top = 151.242610000000000000
          Width = 589.606680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object masterDESCRIPCION: TfrxMemoView
          Left = 153.658380000000000000
          Top = 128.770130000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRIPCION'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 18.200000000000000000
          Top = 175.600000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'La Suma de :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 152.600000000000000000
          Top = 194.800000000000000000
          Width = 244.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2IMPORTE: TfrxMemoView
          Left = 152.600000000000000000
          Top = 175.600000000000000000
          Width = 172.800000000000000000
          Height = 19.200000000000000000
          DataField = 'IMPORTE'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."IMPORTE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 553.247620000000000000
          Top = 3.488250000000005000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. de Recibo')
          ParentFont = False
        end
        object frxDBDataset2GASTOSID: TfrxMemoView
          Left = 633.600000000000000000
          Top = 0.000000000000011366
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'GASTOSID'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."GASTOSID"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA: TfrxMemoView
          Left = 633.600000000000000000
          Top = 28.799999999999990000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA"]')
          ParentFont = False
        end
        object frxDBDataset2NOTA: TfrxMemoView
          Left = 422.400000000000000000
          Top = 182.400000000000000000
          Width = 326.400000000000000000
          Height = 57.600000000000000000
          DataField = 'NOTA'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."NOTA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 422.400000000000000000
          Top = 163.200000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observaci'#243'n')
          ParentFont = False
        end
      end
    end
  end
  object master_cobro: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GASTOSID=GASTOSID'
      'FECHA=FECHA'
      'USUARIOID=USUARIOID'
      'CONCEPTOSID=CONCEPTOSID'
      'NOTA=NOTA'
      'IMPORTE=IMPORTE'
      'BENEFICIADO=BENEFICIADO'
      'ESTADO=ESTADO'
      'DESCRIPCION=DESCRIPCION'
      'TURNOID=TURNOID'
      'NOMBRES_EMP=NOMBRES_EMP')
    DataSet = datos.ZGastos
    BCDToCurrency = False
    Left = 456
    Top = 104
  end
  object ZqConcepto: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from CONCEPTOS_GASTOS')
    Params = <>
    Left = 376
    Top = 32
    object ZqConceptoCONCEPTOSID: TIntegerField
      FieldName = 'CONCEPTOSID'
      Required = True
    end
    object ZqConceptoDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZqConceptoESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqConceptoC1: TIntegerField
      FieldName = 'C1'
    end
    object ZqConceptoC2: TIntegerField
      FieldName = 'C2'
    end
    object ZqConceptoC3: TIntegerField
      FieldName = 'C3'
    end
  end
  object Config: TfrxDBDataset
    UserName = 'configuracion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_COM=CODIGO_COM'
      'EMPRESA=EMPRESA'
      'RNC=RNC'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'CONTACTO=CONTACTO'
      'FACTIMPRIME=FACTIMPRIME'
      'GENERART=GENERART'
      'ITBIS=ITBIS'
      'AVG_GANANCIA=AVG_GANANCIA'
      'COBRAR_ITBS=COBRAR_ITBS'
      'THEMS=THEMS'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'RUTABACKUP=RUTABACKUP'
      'ABRIRCAJON=ABRIRCAJON'
      'PTINTERTPV=PTINTERTPV'
      'CARGO_CARD=CARGO_CARD'
      'CARGO_CHEQUE=CARGO_CHEQUE'
      'MSN_PIE_FACT=MSN_PIE_FACT'
      'IMP_CANT=IMP_CANT'
      'IMPRIMIRCREDITO=IMPRIMIRCREDITO'
      'IMPRIMIRCONTADO=IMPRIMIRCONTADO'
      'DESCUENTO=DESCUENTO'
      'TIPOITBS=TIPOITBS'
      'TERMINAL=TERMINAL'
      'STOPVENTAS=STOPVENTAS'
      'STOPCOMPRAS=STOPCOMPRAS'
      'CONTROLSTOPVENTAS=CONTROLSTOPVENTAS'
      'CONTROLSTOPCOMPRAS=CONTROLSTOPCOMPRAS'
      'NCF_CF_INICIO_NUMERO=NCF_CF_INICIO_NUMERO'
      'NCF_CF_INICIO_LETRA=NCF_CF_INICIO_LETRA'
      'NCF_CF_CONTADOR=NCF_CF_CONTADOR'
      'NCF_CF_FINAL_NUMERO=NCF_CF_FINAL_NUMERO'
      'NCF_VF_INICIO_NUMERO=NCF_VF_INICIO_NUMERO'
      'NCF_VF_INICIO_LETRA=NCF_VF_INICIO_LETRA'
      'NCF_VF_CONTADOR=NCF_VF_CONTADOR'
      'NCF_VF_FINAL_NUMERO=NCF_VF_FINAL_NUMERO'
      'NCF_ESP_INICIO_NUMERO=NCF_ESP_INICIO_NUMERO'
      'NCF_ESP_INICIO_LETRA=NCF_ESP_INICIO_LETRA'
      'NCF_ESP_CONTADOR=NCF_ESP_CONTADOR'
      'NCF_ESP_FINAL=NCF_ESP_FINAL'
      'NO_AUTORIZACION2=NO_AUTORIZACION2'
      'NO_AUTORIZACION3=NO_AUTORIZACION3'
      'NO_AUTORIZACION=NO_AUTORIZACION'
      'USAR_CF=USAR_CF'
      'USAR_VF=USAR_VF'
      'USAR_ESP=USAR_ESP'
      'ROTULO_FC=ROTULO_FC'
      'ROTULO_FVF=ROTULO_FVF'
      'ROTULO_ESP=ROTULO_ESP'
      'VARIABLE_DEDUCIBLE=VARIABLE_DEDUCIBLE'
      'LOGO=LOGO'
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'CLAVEANULAR=CLAVEANULAR'
      'TERMINAL_TPV=TERMINAL_TPV'
      'MONTOCF=MONTOCF'
      'REDONDEAR=REDONDEAR'
      'COMISIONVENTA=COMISIONVENTA'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
      'ITBIS_D=ITBIS_D'
      'ENLACEAWEB=ENLACEAWEB'
      'PISTOLAOPTICA=PISTOLAOPTICA'
      'TIPO_FACTURACION=TIPO_FACTURACION'
      'EXISTENCIAFACT=EXISTENCIAFACT'
      'RUTADB=RUTADB')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 529
    Top = 32
  end
  object Print1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Epson Lx-300'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43228.993351840300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 144
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master_cobro
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 152.400000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 206.277180000000000000
        Top = 19.200000000000000000
        Width = 288.000186000000000000
        object Memo5: TfrxMemoView
          Left = 19.200000000000000000
          Top = 168.365430000000000000
          Width = 215.357700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE EGRESO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.200000000000000000
          Top = 163.200000000000000000
          Width = 288.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 245.593940000000000000
          Height = 47.697650000000000000
          DataField = 'EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 20.200000000000000000
          Top = 58.297650000000000000
          Width = 245.593940000000000000
          Height = 28.497650000000000000
          DataField = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 49.436240000000000000
          Top = 116.554360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 49.436240000000000000
          Top = 101.215770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 19.200000000000000000
          Top = 101.215770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 19.200000000000000000
          Top = 116.333890000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 328.346630000000000000
        Top = 288.000000000000000000
        Width = 288.000186000000000000
        DataSet = master_cobro
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 6.047620000000000000
          Top = 17.385900000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 19.933890000000000000
          Top = 49.938590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pagado a :')
          ParentFont = False
        end
        object masterCLIENTE: TfrxMemoView
          Left = 27.858380000000000000
          Top = 66.138590000000000000
          Width = 215.811380000000000000
          Height = 18.897650000000000000
          DataField = 'BENEFICIADO'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."BENEFICIADO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 23.595300000000000000
          Top = 103.770130000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Por concepto de :')
          ParentFont = False
        end
        object masterDESCRIPCION: TfrxMemoView
          Left = 38.458380000000000000
          Top = 119.170130000000000000
          Width = 205.606680000000000000
          Height = 47.697650000000000000
          DataField = 'DESCRIPCION'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 27.800000000000000000
          Top = 185.200000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'La Suma de :')
          ParentFont = False
        end
        object frxDBDataset2IMPORTE: TfrxMemoView
          Left = 37.400000000000000000
          Top = 207.000000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'IMPORTE'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."IMPORTE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 6.047620000000000000
          Top = 3.488249999999990000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. de Recibo')
          ParentFont = False
        end
        object frxDBDataset2GASTOSID: TfrxMemoView
          Left = 99.000000000000000000
          Top = 1.999999999999990000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'GASTOSID'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."GASTOSID"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA: TfrxMemoView
          Left = 96.000000000000000000
          Top = 19.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA"]')
          ParentFont = False
        end
        object frxDBDataset2NOTA: TfrxMemoView
          Left = 28.800000000000000000
          Top = 259.200000000000000000
          Width = 240.000000000000000000
          Height = 57.600000000000000000
          DataField = 'NOTA'
          DataSet = master_cobro
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOTA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 28.800000000000000000
          Top = 240.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observaci'#243'n')
          ParentFont = False
        end
      end
    end
  end
end
