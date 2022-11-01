object FNotificacion: TFNotificacion
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Notificaci'#243'n de Cobro'
  ClientHeight = 1073
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    ShowingPreview = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = qpendiente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    OnPrevXEvent = QuickRep1PrevXEvent
    PreviewLeft = 0
    PreviewTop = 0
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 355
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        939.270833333333400000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object comp: TQRLabel
        Left = 318
        Top = 15
        Width = 112
        Height = 26
        Size.Values = (
          68.791666666666660000
          841.375000000000000000
          39.687500000000000000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'COMPANIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object direccion: TQRLabel
        Left = 318
        Top = 46
        Width = 111
        Height = 26
        Size.Values = (
          68.791666666666660000
          841.375000000000000000
          121.708333333333300000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'DIRECCION_COM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object telefono: TQRLabel
        Left = 350
        Top = 66
        Width = 49
        Height = 26
        Size.Values = (
          68.791666666666660000
          926.041666666666600000
          174.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Caption = 'telefono'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 44
        Top = 176
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          465.666666666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Text = ''
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 44
        Top = 241
        Width = 151
        Height = 21
        Size.Values = (
          55.562500000000000000
          116.416666666666700000
          637.645833333333400000
          399.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Distinguido se'#241'or (a):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object Nombre: TQRLabel
        Left = 44
        Top = 262
        Width = 63
        Height = 21
        Size.Values = (
          55.562500000000000000
          116.416666666666700000
          693.208333333333400000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nombre'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 44
        Top = 282
        Width = 85
        Height = 21
        Size.Values = (
          55.562500000000000000
          116.416666666666700000
          746.125000000000000000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sus manos.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 393
      Width = 740
      Height = 218
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        576.791666666666600000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = TitleBand1
      PrintOrder = cboAfterParent
      object CuerpoNotificacion: TQRRichText
        Left = 68
        Top = 24
        Width = 649
        Height = 161
        Size.Values = (
          425.979166666666700000
          179.916666666666700000
          63.500000000000000000
          1717.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AutoStretch = True
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Style = []
        HiresExport = False
        Transparent = False
        YIncrement = 50
        Lines.Strings = (
          
            'Por este medio le informamos que debe pasar por nuestra oficina ' +
            'lo mas pronto posible,'
          
            'para tratar asuntos que tienen que ver con su cuenta pendiente, ' +
            'de no obedecer a nuestro '
          
            'llamado, su cuenta ser'#225' traspasada al departamento legal de nues' +
            'tra oficina.')
      end
    end
    object ChildBand2: TQRChildBand
      Left = 38
      Top = 611
      Width = 740
      Height = 347
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        918.104166666666600000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = ChildBand1
      PrintOrder = cboAfterParent
      object QRLabel4: TQRLabel
        Left = 106
        Top = 8
        Width = 527
        Height = 21
        Size.Values = (
          55.562500000000000000
          280.458333333333300000
          21.166666666666670000
          1394.354166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = True
        Caption = 'DETALLE DE ESTADO DE CUENTA X SALDO DE ANTIGUEDAD'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 104
        Top = 64
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          169.333333333333300000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'De 0 a 30'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 215
        Top = 64
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          568.854166666666700000
          169.333333333333300000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'De 31 a 60'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 327
        Top = 64
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          865.187500000000000000
          169.333333333333300000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'De 61 a 90'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 439
        Top = 64
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          169.333333333333300000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'De 91 a 120'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 551
        Top = 64
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1457.854166666667000000
          169.333333333333300000
          216.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'De 121 o M'#225's'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object de0a30: TQRLabel
        Left = 108
        Top = 87
        Width = 52
        Height = 21
        Size.Values = (
          55.562500000000000000
          285.750000000000000000
          230.187500000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'de0a30'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object De31a60: TQRLabel
        Left = 217
        Top = 87
        Width = 62
        Height = 21
        Size.Values = (
          55.562500000000000000
          574.145833333333400000
          230.187500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'De31a60'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object de61a90: TQRLabel
        Left = 329
        Top = 87
        Width = 62
        Height = 21
        Size.Values = (
          55.562500000000000000
          870.479166666666800000
          230.187500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'De61a90'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object de91a120: TQRLabel
        Left = 440
        Top = 87
        Width = 70
        Height = 21
        Size.Values = (
          55.562500000000000000
          1164.166666666667000000
          230.187500000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'De91a120'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object de120: TQRLabel
        Left = 590
        Top = 87
        Width = 43
        Height = 21
        Size.Values = (
          55.562500000000000000
          1561.041666666667000000
          230.187500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'de120'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 36
        Top = 106
        Width = 653
        Height = 31
        Size.Values = (
          82.020833333333340000
          95.250000000000000000
          280.458333333333400000
          1727.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object pendiente: TQRLabel
        Left = 215
        Top = 152
        Width = 96
        Height = 25
        Size.Values = (
          66.145833333333340000
          568.854166666666700000
          402.166666666666700000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Pendiente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRLabel10: TQRLabel
        Left = 104
        Top = 158
        Width = 91
        Height = 17
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          418.041666666666700000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Pendiente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object qpendiente: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, A.fechavencimie' +
        'nto,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.' +
        'ABONO, A.pendiente,d.nombres_emp,'
      
        'b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((curren' +
        't_date - A.fechavencimiento) >= 0, (current_date - A.fechavencim' +
        'iento), 0) AS DiasAtrasos,'
      
        'IIF((current_date - A.fechavencimiento) >= 0, '#39'ATRASO'#39', '#39'NORMAL'#39 +
        ') as EstadoCuenta, A.clienteid'
      '  from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion ='#39'IMPRESA'#39
      'and a.condicion ='#39'ACTIVA'#39
      'AND A.tipo = '#39'CREDITO'#39)
    Params = <>
    Left = 600
    Top = 216
    object qpendienteNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object qpendienteNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object qpendienteFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object qpendienteFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object qpendienteCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 200
    end
    object qpendienteMONTO: TExtendedField
      FieldName = 'MONTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qpendienteABONO: TFloatField
      FieldName = 'ABONO'
      currency = True
    end
    object qpendientePENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
      currency = True
    end
    object qpendienteNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object qpendienteTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object qpendienteDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object qpendienteDIASATRASOS: TIntegerField
      FieldName = 'DIASATRASOS'
      ReadOnly = True
    end
    object qpendienteESTADOCUENTA: TWideStringField
      FieldName = 'ESTADOCUENTA'
      ReadOnly = True
      Size = 6
    end
    object qpendienteCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
  end
  object Antiguedad: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT a.clienteid,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AN' +
        'D ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,'
      
        'sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AN' +
        'D DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fe' +
        'chavencimiento is null,(a.pendiente),0)) AS V0_30,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendi' +
        'ente),0)) AS V31_60,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendi' +
        'ente),0)) AS V61_90,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pend' +
        'iente),0)) AS V91_120,'
      
        'sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,' +
        '(a.pendiente),0)) as v120'
      'from master_fact a'
      'where a.situacion  ='#39'IMPRESA'#39
      'and a.condicion    ='#39'ACTIVA'#39
      'AND A.ROTULO       ='#39'FACTURACION'#39
      'and a.tipo         ='#39'CREDITO'#39
      'and a.quees <>'#39'SALDADA'#39
      ''
      'group by a.clienteid')
    Params = <>
    Left = 632
    Top = 784
    object AntiguedadCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object AntiguedadPORVENCER: TExtendedField
      FieldName = 'PORVENCER'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV0_30: TExtendedField
      FieldName = 'V0_30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV31_60: TExtendedField
      FieldName = 'V31_60'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV61_90: TExtendedField
      FieldName = 'V61_90'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV91_120: TExtendedField
      FieldName = 'V91_120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV120: TExtendedField
      FieldName = 'V120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
end
