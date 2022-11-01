object Rma: TRma
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Entrada de Equipos al Almacen'
  ClientHeight = 523
  ClientWidth = 1082
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 499
    Width = 48
    Height = 13
    Caption = 'Abiertos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 151
    Top = 499
    Width = 56
    Height = 13
    Caption = 'Cotizando'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 247
    Top = 499
    Width = 52
    Height = 13
    Caption = 'Atrasada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 52
    Width = 1082
    object Label4: TLabel
      Left = 864
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Seleccione el Estado'
    end
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 81
      Height = 41
      Caption = 'Nueva Entada'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 944
      OptionsImage.Images = FrmHome.RibbonImages16
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 95
      Top = 8
      Width = 82
      Height = 41
      Caption = 'Editar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 698
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton4: TcxButton
      Left = 327
      Top = 8
      Width = 98
      Height = 41
      Caption = 'Imprimir Label'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 254
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 431
      Top = 9
      Width = 106
      Height = 40
      Caption = 'Cambiar Estado'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 29
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton5Click
    end
    object RG1: TcxRadioGroup
      Left = 543
      Top = 3
      Caption = 'Buscar por'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Por Estado'
        end
        item
          Caption = 'No. Orden'
        end
        item
          Caption = 'Nombre Cliente'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 4
      OnClick = RG1Click
      Height = 46
      Width = 298
    end
    object Edit1: TEdit
      Left = 864
      Top = 24
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnChange = Edit1Change
    end
    object cxComboBox1: TcxComboBox
      Left = 864
      Top = 24
      Properties.Items.Strings = (
        'Abierto'
        'Cotizando'
        'Atrasada'
        'Cerrado')
      Properties.OnChange = cxComboBox1PropertiesChange
      TabOrder = 6
      Text = 'Abierto'
      Width = 169
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 58
    Width = 1066
    Height = 434
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Gadugi'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DsRma
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NOORDEN: TcxGridDBColumn
        Caption = 'No. Orden'
        DataBinding.FieldName = 'NOORDEN'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 70
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
        Width = 70
      end
      object cxGrid1DBTableView1FECHA_ENTRADA: TcxGridDBColumn
        Caption = 'Fecha Entrada'
        DataBinding.FieldName = 'FECHA_ENTRADA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 82
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
        Width = 82
      end
      object cxGrid1DBTableView1HORAENTRADA: TcxGridDBColumn
        Caption = 'Hora Entrada'
        DataBinding.FieldName = 'HORAENTRADA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 75
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
        Width = 75
      end
      object cxGrid1DBTableView1NO_SERIAL: TcxGridDBColumn
        Caption = 'No. Serial'
        DataBinding.FieldName = 'NO_SERIAL'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 100
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
        Width = 100
      end
      object cxGrid1DBTableView1NOMBRES: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 223
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
        Width = 223
      end
      object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
        Caption = 'Tecnico'
        DataBinding.FieldName = 'NOMBRES_EMP'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 171
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
        Width = 171
      end
      object cxGrid1DBTableView1TIPOEQUIPO: TcxGridDBColumn
        Caption = 'Tipo de Equipo'
        DataBinding.FieldName = 'TIPOEQUIPO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 100
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
        Width = 100
      end
      object cxGrid1DBTableView1FECHA_PROMETIDA: TcxGridDBColumn
        Caption = 'Fecha Prometida'
        DataBinding.FieldName = 'FECHA_PROMETIDA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 96
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
        Width = 96
      end
      object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'ESTADO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 94
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
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Dias -'
        DataBinding.FieldName = 'DIAS'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
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
        Width = 50
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 33
    Top = 495
    Width = 17
    Height = 17
    Color = clGreen
    ParentBackground = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 130
    Top = 495
    Width = 17
    Height = 17
    Color = clMaroon
    ParentBackground = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 226
    Top = 495
    Width = 17
    Height = 17
    Color = clRed
    ParentBackground = False
    TabOrder = 4
  end
  object cxButton3: TcxButton
    Left = 183
    Top = 8
    Width = 138
    Height = 41
    Caption = 'Re - Imprimir Recibo de Entrada'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 1007
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 5
    WordWrap = True
    OnClick = cxButton3Click
  end
  object Panel4: TPanel
    Left = 345
    Top = 226
    Width = 377
    Height = 105
    BorderStyle = bsSingle
    TabOrder = 6
    Visible = False
    object Label5: TLabel
      Left = 39
      Top = 17
      Width = 51
      Height = 16
      Caption = 'Estados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EstadoBox: TcxComboBox
      Left = 36
      Top = 33
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = 'Abierto'
      Width = 301
    end
    object cxButton6: TcxButton
      Left = 141
      Top = 65
      Width = 97
      Height = 25
      Caption = 'Actualizar'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 289
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton6Click
    end
  end
  object Panel5: TPanel
    Left = 345
    Top = 195
    Width = 401
    Height = 117
    TabOrder = 7
    Visible = False
    object cxMemo1: TcxMemo
      Left = 8
      Top = 16
      Lines.Strings = (
        '')
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 85
      Width = 281
    end
    object cxButton7: TcxButton
      Left = 295
      Top = 40
      Width = 92
      Height = 41
      Caption = 'Imprimr'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1007
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton7Click
    end
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_RMAM_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 371
    Top = 240
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object QRma: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d' +
        '.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from r' +
        'mam a'
      'left join cliente b on a.idcliente = b.codigo'
      
        'left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =' +
        #39'INSTALADOR'#39
      'left join tipoequipo d on a.idtipoequipo = d.id')
    Params = <>
    Left = 296
    Top = 168
    object QRmaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRmaNOORDEN: TIntegerField
      FieldName = 'NOORDEN'
    end
    object QRmaFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object QRmaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object QRmaIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object QRmaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object QRmaNO_SERIAL: TWideStringField
      FieldName = 'NO_SERIAL'
    end
    object QRmaIDTIPOEQUIPO: TIntegerField
      FieldName = 'IDTIPOEQUIPO'
    end
    object QRmaIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object QRmaFALLAEQUIPO: TWideMemoField
      FieldName = 'FALLAEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaOBSERVACIONEQUIPO: TWideMemoField
      FieldName = 'OBSERVACIONEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaOBSERVACIONTECNICA: TWideMemoField
      FieldName = 'OBSERVACIONTECNICA'
      BlobType = ftWideMemo
    end
    object QRmaFECHA_PROMETIDA: TDateField
      FieldName = 'FECHA_PROMETIDA'
    end
    object QRmaESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 15
    end
    object QRmaMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QRmaNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 100
    end
    object QRmaDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object QRmaTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object QRmaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QRmaTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
    object QRmaDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
  end
  object DsRma: TDataSource
    DataSet = QRma
    Left = 336
    Top = 232
  end
  object FxRmaM: TfrxDBDataset
    UserName = 'FxRmaM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOORDEN=NOORDEN'
      'FECHA_ENTRADA=FECHA_ENTRADA'
      'IDCLIENTE=IDCLIENTE'
      'IDTECNICO=IDTECNICO'
      'HORAENTRADA=HORAENTRADA'
      'NO_SERIAL=NO_SERIAL'
      'IDTIPOEQUIPO=IDTIPOEQUIPO'
      'IDMARCA=IDMARCA'
      'FALLAEQUIPO=FALLAEQUIPO'
      'OBSERVACIONEQUIPO=OBSERVACIONEQUIPO'
      'OBSERVACIONTECNICA=OBSERVACIONTECNICA'
      'FECHA_PROMETIDA=FECHA_PROMETIDA'
      'ESTADO=ESTADO'
      'MONTO=MONTO'
      'NOMBRES=NOMBRES'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIPOEQUIPO=TIPOEQUIPO')
    DataSet = QRmaM
    BCDToCurrency = False
    Left = 656
    Top = 144
  end
  object QRmaM: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d' +
        '.tipoequipo  from rmam a'
      'left join cliente b on a.idcliente = b.codigo'
      
        'left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo='#39 +
        'INSTALADOR'#39
      'left join tipoequipo d on a.idtipoequipo = d.id')
    Params = <>
    Left = 784
    Top = 136
    object QRmaMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRmaMNOORDEN: TIntegerField
      FieldName = 'NOORDEN'
    end
    object QRmaMFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object QRmaMIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object QRmaMIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object QRmaMHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object QRmaMNO_SERIAL: TWideStringField
      FieldName = 'NO_SERIAL'
    end
    object QRmaMIDTIPOEQUIPO: TIntegerField
      FieldName = 'IDTIPOEQUIPO'
    end
    object QRmaMIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object QRmaMFALLAEQUIPO: TWideMemoField
      FieldName = 'FALLAEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaMOBSERVACIONEQUIPO: TWideMemoField
      FieldName = 'OBSERVACIONEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaMOBSERVACIONTECNICA: TWideMemoField
      FieldName = 'OBSERVACIONTECNICA'
      BlobType = ftWideMemo
    end
    object QRmaMFECHA_PROMETIDA: TDateField
      FieldName = 'FECHA_PROMETIDA'
    end
    object QRmaMESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 15
    end
    object QRmaMMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QRmaMNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 100
    end
    object QRmaMDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object QRmaMTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object QRmaMNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QRmaMTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object QrmaD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.id, a.idmaster, a.idarticulo, a.cant, a.precio, a.itb, ' +
        '(a.cant * a.precio) Total, a.estados, b.articulo, a.articulotxt ' +
        'from rmad a'
      'left join mtartuculos b on a.idarticulo = b.cod_art')
    Params = <>
    Left = 832
    Top = 128
    object QrmaDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QrmaDIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object QrmaDIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object QrmaDCANT: TFloatField
      FieldName = 'CANT'
    end
    object QrmaDPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object QrmaDITB: TFloatField
      FieldName = 'ITB'
      currency = True
    end
    object QrmaDTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QrmaDESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object QrmaDARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QrmaDARTICULOTXT: TWideStringField
      FieldName = 'ARTICULOTXT'
      Size = 100
    end
  end
  object FxRmaD: TfrxDBDataset
    UserName = 'FxRmaD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDMASTER=IDMASTER'
      'IDARTICULO=IDARTICULO'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'ITB=ITB'
      'TOTAL=TOTAL'
      'ESTADOS=ESTADOS'
      'ARTICULO=ARTICULO')
    DataSet = QrmaD
    BCDToCurrency = False
    Left = 696
    Top = 144
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
      'MENSAJE_PIE2=MENSAJE_PIE2')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 736
    Top = 144
  end
  object Recibo: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43172.513135439800000000
    ReportOptions.LastChange = 43172.513135439800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 144
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = FxRmaD
        DataSetName = 'FxRmaD'
      end
      item
        DataSet = FxRmaM
        DataSetName = 'FxRmaM'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 115.200000000000000000
        Top = 19.200000000000000000
        Width = 740.409927000000000000
        object configuracionEMPRESA: TfrxMemoView
          Left = 13.379530000000000000
          Top = -0.000000000000000711
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          Left = 15.379530000000000000
          Top = 23.000000000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 43.379530000000000000
          Top = 47.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 181.779530000000000000
          Top = 46.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.379530000000000000
          Top = 47.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 38.400000000000000000
          Top = 75.288249999999990000
          Width = 694.828820000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada de Equipo a R.M.A')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 153.600000000000000000
          Top = 48.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 336.000000000000000000
        Top = 163.200000000000000000
        Width = 740.409927000000000000
        DataSet = FxRmaM
        DataSetName = 'FxRmaM'
        RowCount = 0
        object FxRmaMFECHA_ENTRADA: TfrxMemoView
          Left = 115.200000000000000000
          Top = -0.000000000000011366
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_ENTRADA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."FECHA_ENTRADA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 19.200000000000000000
          Top = -0.000000000000011366
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Entrada  :')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 19.200000000000000000
          Top = 28.800000000000000000
          Width = 326.400000000000000000
          Height = 115.200000000000000000
        end
        object FxRmaMNOMBRES: TfrxMemoView
          Left = 28.800000000000000000
          Top = 47.999999999999990000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NOMBRES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 28.800000000000000000
          Top = 31.800000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre Cliente  :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 28.800000000000000000
          Top = 67.199999999999970000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Direcci'#243'n  :')
          ParentFont = False
        end
        object FxRmaMDIRECCION: TfrxMemoView
          Left = 28.800000000000000000
          Top = 86.399999999999960000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DIRECCION'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."DIRECCION"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 28.800000000000000000
          Top = 105.600000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefono  :')
          ParentFont = False
        end
        object FxRmaMTELEFONO: TfrxMemoView
          Left = 30.800000000000000000
          Top = 119.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."TELEFONO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 374.400000000000000000
          Top = 230.400000000000000000
          Width = 326.400000000000000000
          Height = 76.800000000000000000
        end
        object FxRmaMNOMBRES_EMP: TfrxMemoView
          Left = 385.000000000000000000
          Top = 257.200000000000000000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 384.000000000000000000
          Top = 240.000000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tecnico  :')
          ParentFont = False
        end
        object FxRmaMHORAENTRADA: TfrxMemoView
          Left = 364.800000000000000000
          Top = -0.000000000000011366
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'HORAENTRADA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."HORAENTRADA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.800000000000000000
          Top = -0.000000000000011366
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora Entrada  :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 384.000000000000000000
          Top = 278.400000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Entraga :')
          ParentFont = False
        end
        object FxRmaMFECHA_PROMETIDA: TfrxMemoView
          Left = 489.600000000000000000
          Top = 278.400000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_PROMETIDA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."FECHA_PROMETIDA"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 374.400000000000000000
          Top = 47.999999999999990000
          Width = 326.400000000000000000
          Height = 96.000000000000000000
        end
        object Memo12: TfrxMemoView
          Left = 374.400000000000000000
          Top = 28.800000000000000000
          Width = 141.656710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Datos del Equipo :')
          ParentFont = False
        end
        object FxRmaMNO_SERIAL: TfrxMemoView
          Left = 384.000000000000000000
          Top = 105.600000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'NO_SERIAL'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NO_SERIAL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 384.000000000000000000
          Top = 89.399999999999960000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. Serie  :')
          ParentFont = False
        end
        object FxRmaMTIPOEQUIPO: TfrxMemoView
          Left = 384.000000000000000000
          Top = 67.199999999999970000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPOEQUIPO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."TIPOEQUIPO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 384.000000000000000000
          Top = 52.999999999999990000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo del Equipo  :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 19.200000000000000000
          Top = 153.600000000000000000
          Width = 170.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripcion del Equipo  :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 21.800000000000000000
          Top = 240.000000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Entragado por :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 23.200000000000000000
          Top = 278.400000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Recibido por :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 115.200000000000000000
          Top = 259.200000000000000000
          Width = 230.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 115.200000000000000000
          Top = 292.000000000000000000
          Width = 230.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object FxRmaMOBSERVACIONEQUIPO: TfrxMemoView
          Left = 19.200000000000000000
          Top = 172.800000000000000000
          Width = 681.600000000000000000
          Height = 48.000000000000000000
          DataField = 'OBSERVACIONEQUIPO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."OBSERVACIONEQUIPO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 518.400000000000000000
          Top = 0.999999999999988700
          Width = 84.056710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. Orden  :')
          ParentFont = False
        end
        object FxRmaMNOORDEN: TfrxMemoView
          Left = 604.800000000000000000
          Top = 0.999999999999988700
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'NOORDEN'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FxRmaM."NOORDEN"]')
          ParentFont = False
        end
      end
    end
  end
  object UpEstado: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 160
    Top = 152
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 264
    Top = 256
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SortedFields = 'ARTICULO'
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'select  upper(A.ARTICULO),  A.* from mtartuculos  A')
    Params = <>
    IndexFieldNames = 'ARTICULO Asc'
    Left = 112
    Top = 219
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object IbqRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object IbqRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object IbqRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object IbqRArticulosPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object IbqRArticulosPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object IbqRArticulosREFERENCIA: TWideStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object IbqRArticulosCOSTOPROMENO: TFloatField
      DisplayLabel = 'Costo Promedio'
      FieldName = 'COSTOPROMENO'
      currency = True
    end
    object IbqRArticulosUPPER: TWideStringField
      FieldName = 'UPPER'
      ReadOnly = True
      Size = 100
    end
    object IbqRArticulosCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object IbqRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
  end
end
