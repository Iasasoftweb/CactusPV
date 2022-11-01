object FRProductosVendidos: TFRProductosVendidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Articulos Vendidos'
  ClientHeight = 478
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 22
    Width = 21
    Height = 13
    Caption = 'Cod'
    FocusControl = cxDBTextEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 45
    Width = 37
    Height = 13
    Caption = 'Cajero'
    FocusControl = cxDBTextEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 7
    Top = 82
    Width = 62
    Height = 13
    Caption = 'Fecha Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 106
    Width = 70
    Height = 13
    Caption = 'Fecha Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 83
    Top = 18
    DataBinding.DataField = 'COD_EMP'
    DataBinding.DataSource = DsTecnico
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = 12582911
    TabOrder = 0
    Width = 56
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 83
    Top = 45
    DataBinding.DataField = 'NOMBRES_EMP'
    DataBinding.DataSource = DsTecnico
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = 12582911
    TabOrder = 1
    Width = 216
  end
  object cxButton2: TcxButton
    Left = 228
    Top = 10
    Width = 36
    Height = 29
    Hint = 'Buscar Instalador'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 980
    OptionsImage.Images = FrmHome.RibbonImages16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxButton5: TcxButton
    Left = 266
    Top = 10
    Width = 39
    Height = 29
    Hint = 'Borrar Instalador'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 961
    OptionsImage.Images = FrmHome.RibbonImages16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cxButton5Click
  end
  object inicio: TcxDateEdit
    Left = 83
    Top = 76
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 4
    Width = 123
  end
  object fechafinal: TcxDateEdit
    Left = 83
    Top = 101
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 5
    Width = 123
  end
  object cxButton1: TcxButton
    Left = 40
    Top = 437
    Width = 313
    Height = 33
    Caption = 'Imprime'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000CF4944415448C7ED944D0AC2
      301484BF76A10B77E246172578094105AFA73D820BCFD28B88B8B08770D32E7C
      C15862D234AD5070E0D1BF74E6BD49A7F0870789E359D507573AF404E317F829
      A6400E94BC36B84B95C00998D804F208E2661D6D02319D57C016D8CBF943939A
      9BBC8CB438E59D8595BE69862334583E24CD09BAE0095CC49A05300776C03964
      02D7EFC48BA182A6A43EF0EDEB0845065C813BB0762D6C2390018541A4C9ABBE
      040A5973030E72D4D7CAF3AE3354334BC7BABC9DB711D8583C0F220F8512BBBC
      B68C0F35D54C693BCA7435770000002574455874646174653A63726561746500
      323031392D30382D32385432313A35313A30352B30303A30308AC9FAF1000000
      2574455874646174653A6D6F6469667900323031392D30382D32385432313A35
      313A30352B30303A3030FB94424D00000028744558747376673A626173652D75
      72690066696C653A2F2F2F746D702F6D616769636B2D782D5844676D4155A1B9
      ED130000000049454E44AE426082}
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 152
    Width = 393
    Height = 270
    Enabled = False
    TabOrder = 7
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsTurno
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1IDTURNO: TcxGridDBColumn
        Caption = '# Turno'
        DataBinding.FieldName = 'IDTURNO'
        HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid1DBTableView1CAJA: TcxGridDBColumn
        Caption = '# Caja'
        DataBinding.FieldName = 'CAJA'
        HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid1DBTableView1HORA: TcxGridDBColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'HORA'
        HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid1DBTableView1TOTALCUADRE: TcxGridDBColumn
        Caption = 'Total Cuadre'
        DataBinding.FieldName = 'TOTALCUADRE'
        HeaderAlignmentHorz = taCenter
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
        Width = 82
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 224
    Top = 80
    Width = 153
    Height = 39
    Caption = 'Procesar Consulta'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180803000000D7A9CD
      CA0000000373424954080808DBE14FE000000009704859730000012900000129
      012935BC320000001974455874536F667477617265007777772E696E6B736361
      70652E6F72679BEE3C1A000000F3504C5445FFFFFF00808040BF8033CC992BAA
      AA49B69233B39946B9A240AA953BB19D44BB9940AF9F3AAEA23DB89940B69B3C
      B3A23CB49E40B19C3EB59F3DB1A13DB39E3BB59D3CB39D3EB59C3FB49D3FB19F
      3BB29D3EB39F3CB29E3EB39F3DB49E3CB29F3CB39D3EB49E3DB29D3DB39E3EB2
      9E3DB49E3CB29F3DB49D3EB49D3DB39D3EB39D3CB29E3DB39F3CB39E3DB29D3D
      B39E3CB39F3EB39E3DB29D3CB39F3EB29E3DB39E3DB39D3DB49E3DB39F3DB39F
      3DB39E3DB39E3EB29E3DB39E3DB39E3DB39D3CB39E3DB39E3DB39E3DB39E3DB3
      9E3DB39E3DB39E3DB39E3DB39E3DB39E3DB39E3DB39E3DB39E3DB39E3DB39E3D
      B39E3DB39EF18191D00000005074524E530002040506070A0B0C0D0F1016191C
      1E22242D2E32343C3E4145494A595A5C5D5E5F606467696A707375787B828385
      8687919294999BA2A6ACB9BBC6CBCCD0D1D3DADBE3EEEFF0F1F4F5F6F8FAFBFC
      FD3BACD6AB000000DC4944415418199DC1EB5A01510086D12F87926AA48C4EA4
      C38850512815850E1479EFFF6AB2E7610F7FADA5D5C5D28566DD73A35A16BE1D
      E31BE4B568AF83D57264EDFF02AFB59CD7E8C224ABB970073E4F6584CAC38CAC
      1BF84868262E6DBAF2C5C770AE80D3A324E310DA0A383DA0A4A922DCCBDAE961
      5C4B7A840B5927638C173D63FC1C696EFD0A9EB6D654C1E827643D40515355A0
      9F54A0030732AAF4930A5CC26843BEE36D29AE99DD6FA8C8CA0CCB2119675FF0
      16D15C7602DD8697ABB581514A96D3C27A4F69517E80EFEF2EA26551D7AB370B
      E99856F60FA20B313D1BCCC6320000000049454E44AE426082}
    TabOrder = 8
    OnClick = cxButton3Click
  end
  object ChkB: TcxCheckBox
    Left = 8
    Top = 128
    Caption = 'Imprimir por Turno Seleccionado'
    TabOrder = 9
    OnClick = ChkBClick
  end
  object DsTurno: TDataSource
    DataSet = QConsulta
    Left = 288
    Top = 96
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*,c.nombres_emp, d.descricpcion from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join mant_turnos d On a.idturno = d.id_turnos')
    Params = <>
    Left = 336
    Top = 56
    object QConsultaTURNOID: TIntegerField
      FieldName = 'TURNOID'
      Required = True
    end
    object QConsultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QConsultaEFECTIVO_INICIAL: TFloatField
      FieldName = 'EFECTIVO_INICIAL'
      currency = True
    end
    object QConsultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QConsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QConsultaIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object QConsultaCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object QConsultaHORA: TTimeField
      FieldName = 'HORA'
    end
    object QConsultaEFECTIVOCAJA: TFloatField
      FieldName = 'EFECTIVOCAJA'
      currency = True
    end
    object QConsultaCOBRANZA: TFloatField
      FieldName = 'COBRANZA'
      currency = True
    end
    object QConsultaTC: TFloatField
      FieldName = 'TC'
    end
    object QConsultaCHEQUE: TFloatField
      FieldName = 'CHEQUE'
    end
    object QConsultaVALE: TFloatField
      FieldName = 'VALE'
    end
    object QConsultaGASTOS: TFloatField
      FieldName = 'GASTOS'
      currency = True
    end
    object QConsultaNC: TFloatField
      FieldName = 'NC'
    end
    object QConsultaTOTALGASTOS: TFloatField
      FieldName = 'TOTALGASTOS'
      currency = True
    end
    object QConsultaTOTALEINGRESO: TFloatField
      FieldName = 'TOTALEINGRESO'
      currency = True
    end
    object QConsultaTOTALCUADRE: TFloatField
      FieldName = 'TOTALCUADRE'
      currency = True
    end
    object QConsultaDESCUADRE: TFloatField
      FieldName = 'DESCUADRE'
      currency = True
    end
    object QConsultaTOTALVENTAS: TFloatField
      FieldName = 'TOTALVENTAS'
      currency = True
    end
    object QConsultaTOTALEGRESOS: TFloatField
      FieldName = 'TOTALEGRESOS'
      currency = True
    end
    object QConsultaSOBRANTES: TFloatField
      FieldName = 'SOBRANTES'
      currency = True
    end
    object QConsultaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QConsultaDESCRICPCION: TWideStringField
      FieldName = 'DESCRICPCION'
      Size = 40
    end
  end
  object Tecnicos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select cod_emp, nombres_emp, cod_emp1 from mtempleado'
      'where (cargo = '#39'INSTALADOR'#39') or (cargo ='#39'ADMINISTRADOR'#39')')
    Params = <>
    Left = 348
    Top = 119
    object TecnicosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object TecnicosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object TecnicosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
  end
  object DsTecnico: TDataSource
    DataSet = Tecnicos
    Left = 324
    Top = 10
  end
  object Productos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select  a.cod_art, F.ARTICULO,  Sum(a.cantidad),  sum (a.cantida' +
        'd * a.precio), g.cat from detailfact a'
      'left join master_fact b On a.masterid = b.no_fact'
      'left join turnos c On b.tiendaid = c.turnoid'
      'Left join musuario d On c.usuarioid = d.usuarioid'
      'left Join MtEmpleado E On d.empleadoid = e.cod_emp'
      'left join mtartuculos F on f.cod_art = a.articuloid'
      'left join mtcategoria g On f.cod_cat = g.codcat'
      'group by a.cod_art, F.ARTICULO,  g.cat')
    Params = <>
    Left = 242
    Top = 84
    object ProductosCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object ProductosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ProductosSUM: TExtendedField
      FieldName = 'SUM'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object ProductosSUM_1: TExtendedField
      FieldName = 'SUM_1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object ProductosCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
  end
  object DBProductos: TfrxDBDataset
    UserName = 'FRxDbProductos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'ARTICULO=ARTICULO'
      'SUM=SUM'
      'SUM_1=SUM_1'
      'CAT=CAT')
    DataSet = Productos
    BCDToCurrency = False
    Left = 128
    Top = 144
  end
  object config: TfrxDBDataset
    UserName = 'frxDBDataset1'
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
      'RUTADB=RUTADB'
      'CANT_CAJA=CANT_CAJA'
      'TAZA=TAZA'
      'MONEDA=MONEDA'
      'APLICAR_AUMENTO_TAZA=APLICAR_AUMENTO_TAZA'
      'ANCHO_IMG_FRONTAL=ANCHO_IMG_FRONTAL'
      'ALTO_IMG_FRONTAL=ALTO_IMG_FRONTAL'
      'LEFT_IMAGEN=LEFT_IMAGEN'
      'RIGHT_IMAGEN=RIGHT_IMAGEN'
      'REDONDEOCOMPLETO=REDONDEOCOMPLETO'
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'COMPROBANTEDEFAULT=COMPROBANTEDEFAULT'
      'USOAPLICACION=USOAPLICACION'
      'ARTICULOSVARIOS=ARTICULOSVARIOS'
      'MENSAJE_PIE1=MENSAJE_PIE1'
      'MENSAJE_PIE2=MENSAJE_PIE2'
      'IMPRESION_RAPIDA=IMPRESION_RAPIDA'
      'IMPRESIONDEFECTO=IMPRESIONDEFECTO'
      'TEXINICIAR=TEXINICIAR')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 146
    Top = 72
  end
  object Print1: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43846.299490706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 202
    Top = 128
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = DBProductos
        DataSetName = 'FRxDbProductos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha'
        Value = Null
      end
      item
        Name = 'fecha2'
        Value = Null
      end
      item
        Name = 'turnoid'
        Value = ''
      end
      item
        Name = 'hora'
        Value = ''
      end
      item
        Name = 'numeroT'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Style = fsDouble
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.297650000000000000
        Top = 19.200000000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 71.911750000000000000
          Width = 273.916760000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos Vendidos')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 235.993940000000000000
          Height = 38.097650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 80.892950000000000000
          Top = 48.656710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TELEFONO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 27.200000000000000000
          Top = 44.056710000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 1.922820000000000000
          Top = 182.400000000000000000
          Width = 158.211070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Articulos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 159.733890000000000000
          Top = 182.400000000000000000
          Width = 27.892950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 188.362400000000000000
          Top = 182.417440000000000000
          Width = 69.467780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Total ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 141.581200000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha de Apertura :')
          ParentFont = False
        end
        object fecha: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 141.581200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.820470000000000000
          Top = 95.092950000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero')
          ParentFont = False
        end
        object FRxDbProductosNOMBRES_EMP: TfrxMemoView
          AllowVectorExport = True
          Left = 5.820470000000000000
          Top = 114.292950000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Visible = False
          DataField = 'NOMBRES_EMP'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRxDbProductos."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 11.576500000000000000
          Top = 160.781200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. del Turno :')
          ParentFont = False
        end
        object numeroT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.428510000000000000
          Top = 160.781200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[numeroT]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.275590551181100000
        Top = 326.400000000000000000
        Width = 793.701300000000000000
        DataSet = DBProductos
        DataSetName = 'FRxDbProductos'
        RowCount = 0
        object FRxDbProductosTITULOPRN: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889746690000000000
          Width = 158.362146140000000000
          Height = 19.200000000000000000
          StretchMode = smMaxHeight
          DataField = 'ARTICULO'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FRxDbProductos."ARTICULO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FRxDbProductosSUM: TfrxMemoView
          AllowVectorExport = True
          Left = 159.661546690000000000
          Top = -0.220470000000000000
          Width = 27.968489290000000000
          Height = 19.200000000000000000
          DataField = 'SUM'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRxDbProductos."SUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FRxDbProductosSUM_1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 188.228329370000000000
          Width = 69.543282680000000000
          Height = 18.897650000000000000
          DataField = 'SUM_1'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FRxDbProductos."SUM_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 130.015770000000000000
        Top = 451.200000000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.738590000000000000
          Top = 2.600000000000000000
          Width = 292.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 17.461410000000000000
          Top = 5.820470000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Items :')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.661410000000000000
          Top = 5.820470000000000000
          Width = 93.656710000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Vendido :')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbProductos."SUM_1">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 278.400000000000000000
        Width = 793.701300000000000000
        Condition = 'VarToStr(<FRxDbProductos."cat">)'
        KeepChild = True
        KeepTogether = True
        object FRxDbProductosCAT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 2.669276690000000000
          Width = 255.118012600000000000
          Height = 18.897650000000000000
          DataField = 'CAT'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          Memo.UTF8W = (
            '[FRxDbProductos."CAT"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 364.800000000000000000
        Width = 793.701300000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 190.842429370000000000
          Top = 1.440940000000000000
          Width = 65.763752680000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbProductos."SUM_1">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Print2: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43846.299490706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 250
    Top = 152
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = DBProductos
        DataSetName = 'FRxDbProductos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha'
        Value = Null
      end
      item
        Name = 'fecha2'
        Value = Null
      end
      item
        Name = 'turnoid'
        Value = Null
      end
      item
        Name = 'hora'
        Value = Null
      end
      item
        Name = 'numeroT'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Style = fsDouble
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.297650000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 71.911750000000000000
          Width = 273.916760000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos Vendidos')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 235.993940000000000000
          Height = 38.097650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 80.892950000000000000
          Top = 48.656710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TELEFONO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 27.200000000000000000
          Top = 44.056710000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 1.922820000000000000
          Top = 182.400000000000000000
          Width = 158.211070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Articulos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 159.733890000000000000
          Top = 182.400000000000000000
          Width = 27.892950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 188.362400000000000000
          Top = 182.417440000000000000
          Width = 69.467780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Total ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 123.892950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desde :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 9.927210000000000000
          Top = 143.622140000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hasta :')
          ParentFont = False
        end
        object fecha: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 104.415460000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 104.415460000000000000
          Top = 143.622140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.275590551181100000
        Top = 325.039580000000000000
        Width = 793.701300000000000000
        DataSet = DBProductos
        DataSetName = 'FRxDbProductos'
        RowCount = 0
        object FRxDbProductosTITULOPRN: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889746690000000000
          Width = 158.362146140000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FRxDbProductos."ARTICULO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FRxDbProductosSUM: TfrxMemoView
          AllowVectorExport = True
          Left = 159.661546690000000000
          Top = -0.220470000000000000
          Width = 27.968489290000000000
          Height = 19.200000000000000000
          DataField = 'SUM'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRxDbProductos."SUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FRxDbProductosSUM_1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 188.228329370000000000
          Width = 69.543282680000000000
          Height = 18.897650000000000000
          DataField = 'SUM_1'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FRxDbProductos."SUM_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 130.015770000000000000
        Top = 449.764070000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.738590000000000000
          Top = 2.600000000000000000
          Width = 292.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 17.461410000000000000
          Top = 5.820470000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Items :')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.661410000000000000
          Top = 5.820470000000000000
          Width = 93.656710000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Vendido :')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbProductos."SUM_1">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        Condition = 'VarToStr(<FRxDbProductos."cat">)'
        KeepChild = True
        KeepTogether = True
        object FRxDbProductosCAT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 2.669276690000000000
          Width = 255.118012600000000000
          Height = 18.897650000000000000
          DataField = 'CAT'
          DataSet = DBProductos
          DataSetName = 'FRxDbProductos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          Memo.UTF8W = (
            '[FRxDbProductos."CAT"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 793.701300000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 188.062899370000000000
          Top = -0.559060000000000000
          Width = 69.543282680000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbProductos."SUM_1">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
