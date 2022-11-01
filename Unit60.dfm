object FrmRVFecha: TFrmRVFecha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Ventas de Articulos x Fecha'
  ClientHeight = 248
  ClientWidth = 283
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
  object Label2: TLabel
    Left = 20
    Top = 24
    Width = 59
    Height = 13
    Caption = 'Fecha Inicial'
  end
  object Label3: TLabel
    Left = 20
    Top = 51
    Width = 54
    Height = 13
    Caption = 'Fecha Final'
  end
  object Label1: TLabel
    Left = 41
    Top = 210
    Width = 214
    Height = 13
    Caption = 'Presione la tecle <ESC> para cerrar pantalla'
  end
  object inicio: TcxDateEdit
    Left = 92
    Top = 21
    TabOrder = 0
    Width = 163
  end
  object fechafinal: TcxDateEdit
    Left = 92
    Top = 48
    TabOrder = 1
    Width = 163
  end
  object cxButton2: TcxButton
    Left = 92
    Top = 163
    Width = 97
    Height = 31
    Caption = '&Ok'
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360900000000000036000000280000001800000018000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000080000000800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000077000000FF000000FF0000
      007F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000080000000FF000000FB000000FB0000
      00FF000000800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000077000000FF000000FC0000005C000000550000
      00FB000000FF0000007F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000077000000FF000000FC0000005B00000000000000000000
      0055000000FB000000FF0000007F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040000000FF000000FB000000560000000000000000000000000000
      000000000057000000FB000000FF000000800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007D00000056000000000000000000000000000000000000
      00000000000000000057000000FB000000FF0000008000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000054000000FB000000FF0000007F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000054000000FB000000FF0000007F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000054000000FB000000FF0000
      007F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000054000000FB0000
      00FF0000007F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000540000
      00FB000000FF0000007F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0054000000FB0000008800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    OptionsImage.ImageIndex = 951
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object Edit3: TEdit
    Left = 56
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object RgTipo: TcxRadioGroup
    Left = 20
    Top = 81
    Caption = 'Tipo de Salida'
    Properties.Items = <
      item
        Caption = 'Impresi'#243'n'
      end
      item
        Caption = 'Excell'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Height = 77
    Width = 241
  end
  object cuadre: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, Sum(a.cantidad), b.articulo, c.condicion, Sum(' +
        '(a.cantidad * a.precio)) tVENTA, Sum((a.cantidad * a.precio) - (' +
        'a.cantidad * b.costo_pr))  from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join master_fact c On a.masterid = c.no_fact'
      'group by a.cod_art, b.articulo, c.condicion,b.cod_cat')
    Params = <>
    Left = 192
    Top = 32
    object cuadreCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object cuadreSUM: TExtendedField
      FieldName = 'SUM'
      ReadOnly = True
      Precision = 19
    end
    object cuadreARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object cuadreCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object cuadreTVENTA: TExtendedField
      FieldName = 'TVENTA'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object cuadreSUM_1: TExtendedField
      FieldName = 'SUM_1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object Config: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = True
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
      'COMISIONVENTA=COMISIONVENTA'
      'REDONDEAR=REDONDEAR'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
      'MSN_PIE_FACT=MSN_PIE_FACT'
      'ITBIS_D=ITBIS_D'
      'ENLACEAWEB=ENLACEAWEB'
      'PISTOLAOPTICA=PISTOLAOPTICA'
      'TIPO_FACTURACION=TIPO_FACTURACION'
      'EXISTENCIAFACT=EXISTENCIAFACT'
      'RUTADB=RUTADB'
      'CANT_CAJA=CANT_CAJA')
    DataSet = datos.Configuracion
    BCDToCurrency = False
    Left = 8
    Top = 71
  end
  object gatos: TfrxReport
    Version = '6.4.13'
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
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41489.979093483790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 88
    Top = 65528
    Datasets = <
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = ''
      end
      item
        Name = 'fecha2'
        Value = ''
      end
      item
        Name = 'Empleado'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 816.000527000000000000
        RowCount = 0
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.979530000000000000
          Width = 357.770130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRIPCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO1: TfrxMemoView
          AllowVectorExport = True
          Left = 511.596970000000000000
          Width = 115.729190000000000000
          Height = 18.897650000000000000
          DataField = 'SUMA'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."SUMA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 393.071120000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 373.795300000000000000
          Top = 8.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 83.754360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 83.754360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 179.376500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 504.037910000000000000
          Top = 7.559060000000000000
          Width = 123.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."SUM">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 182.400000000000000000
          Width = 284.144960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aprobado Por:')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 232.910390000000000000
        Top = 18.897650000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.379530000000000000
          Top = 193.592270000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 204.412740000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion del Gasto')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.776500000000000000
          Top = 204.412740000000000000
          Width = 117.770130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 326.400000000000000000
          Top = 155.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 509.000000000000000000
          Top = 155.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 230.400000000000000000
          Top = 155.400000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 155.400000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 607.109030000000000000
          Top = 41.774830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.831850000000000000
          Top = 9.600000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 606.800000000000000000
          Top = 27.800000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 86.400000000000000000
          Width = 288.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Gastos')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 222.310390000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 10.600000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 58.733890000000000000
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
      end
    end
  end
  object mASTER: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'SUM=SUM'
      'ARTICULO=ARTICULO'
      'CONDICION=CONDICION'
      'TVENTA=TVENTA'
      'SUM_1=SUM_1')
    DataSet = cuadre
    BCDToCurrency = False
    Left = 194
    Top = 65533
  end
  object dscategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 331
    Top = 24
  end
  object PrintCat: TfrxReport
    Version = '6.4.13'
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
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41489.987142754600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 184
    Top = 80
    Datasets = <
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = Config
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = Null
      end
      item
        Name = 'fecha2'
        Value = Null
      end
      item
        Name = 'Empleado'
        Value = Null
      end
      item
        Name = 'categoria'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 816.000527000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 12.979530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO1: TfrxMemoView
          AllowVectorExport = True
          Left = 348.396970000000000000
          Width = 77.329190000000000000
          Height = 18.897650000000000000
          DataField = 'SUM'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."SUM"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 102.400000000000000000
          Width = 276.888250000000000000
          Height = 18.897650000000000000
          DataField = 'ARTICULO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 624.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'COSTO_PR'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."COSTO_PR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 710.400000000000000000
          Width = 96.529190000000000000
          Height = 18.897650000000000000
          DataField = 'SUM_1'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."SUM_1"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'TVENTA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."TVENTA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 404.409710000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 83.754360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 83.754360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 179.376500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 182.400000000000000000
          Width = 284.144960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aprobado Por:')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 652.800000000000000000
          Top = 57.600000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."SUM_1">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 57.600000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Utlidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 28.800000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Venta')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 652.800000000000000000
          Top = 28.800000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."tventa">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 242.510390000000000000
        Top = 18.897650000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 222.392270000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 12.677180000000000000
          Top = 223.612740000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 342.576500000000000000
          Top = 223.612740000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 101.400000000000000000
          Top = 222.600000000000000000
          Width = 171.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nombre del Articulo')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 184.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 165.000000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 184.200000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 165.000000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final   :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 607.109030000000000000
          Top = 60.974830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.831850000000000000
          Top = 19.200000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 606.800000000000000000
          Top = 37.400000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 241.510390000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Empleado: TfrxMemoView
          AllowVectorExport = True
          Left = 403.200000000000000000
          Top = 96.000000000000000000
          Width = 364.800000000000000000
          Height = 57.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empleado]')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 58.733890000000000000
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
        object categoria: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 144.000000000000000000
          Width = 278.400000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[categoria]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 144.000000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Categoria      :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Top = 220.800000000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 633.600000000000000000
          Top = 220.800000000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 720.000000000000000000
          Top = 220.800000000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Utilidad')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 220.800000000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'T. Venta')
          ParentFont = False
        end
      end
    end
  end
  object ticker: TfrxReport
    Version = '6.4.13'
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
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43277.961359166700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 136
    Top = 65528
    Datasets = <
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = Config
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = Null
      end
      item
        Name = 'fecha2'
        Value = Null
      end
      item
        Name = 'Empleado'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      TopMargin = 12.700000000000000000
      BottomMargin = 25.400000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 278.400000000000000000
        Width = 816.000527000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.979530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO1: TfrxMemoView
          AllowVectorExport = True
          Left = 548.863080000000000000
          Width = 77.933890000000000000
          Height = 18.897650000000000000
          DataField = 'SUM'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."SUM"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Width = 324.888250000000000000
          Height = 18.897650000000000000
          DataField = 'ARTICULO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 171.212740000000000000
        Top = 364.800000000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000020000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 53.215770000000000000
          Top = 16.554360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 189.581200000000000000
          Top = 16.554360000000000000
          Width = 75.288250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 131.376500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 134.400000000000000000
          Width = 284.144960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aprobado Por:')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 199.510390000000000000
        Top = 19.200000000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 179.392270000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 180.612740000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 543.042610000000000000
          Top = 178.833210000000000000
          Width = 87.533890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Top = 179.600000000000000000
          Width = 171.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nombre del Articulo')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 136.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 125.000000000000000000
          Top = 155.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 136.200000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 155.400000000000000000
          Width = 96.000000000000000000
          Height = 15.722820000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 607.109030000000000000
          Top = 60.974830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.831850000000000000
          Top = 19.200000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 606.800000000000000000
          Top = 37.400000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 198.510390000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Empleado: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 96.000000000000000000
          Width = 614.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empleado]')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 58.733890000000000000
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
      end
    end
  end
end
