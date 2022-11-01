object fGetCorteInventario: TfGetCorteInventario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'fGetCorteInventario'
  ClientHeight = 774
  ClientWidth = 595
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
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 144
    Height = 13
    Caption = 'Fecha de la Apertura del Core'
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 158
      Height = 33
      Margins.Left = 5
      Caption = 'Inventario |'
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
      Left = 186
      Top = 8
      Width = 146
      Height = 21
      Margins.Left = 5
      Caption = 'Apertura de Corte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 96
    Width = 583
    Height = 627
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsExistencia
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Nombre del Articulo / Producto'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 400
      end
      object cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn
        Caption = 'Existencia'
        DataBinding.FieldName = 'EXISTENCIA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
              00206348524D00007A26000080840000FA00000080E8000075300000EA600000
              3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
              7048597300000048000000480046C96B3E000000D24944415448C7DD943D0AC2
              4010853F3D4D8A80854730480A4F91D2CAC23A575810AFE37552995242AA58F8
              1622B8F97127163E58261BDE7E33B32403FFAA33B0D173021C8DFDA4400BDC14
              53633FC8DC299AFBCD3A58070E64C016D829662309E6FA07950335E080550C28
              047F0025500157CB241E5E689F2889B38237AABCAF52D76502EF5471A2F7853A
              CAADE07E55AA3C1ABEFF00F7AB050EBF84CF9A45F900BC095CCBE43FFF1BB8D7
              E82C8A818F7610030738F5A0A9F66FAA23E093E49684C36B605D30FCCE43491C
              70B7AC7C713D01A76677619ECB821D0000002574455874646174653A63726561
              746500323032302D30322D30355430333A31323A31362B30303A3030D5BAEB82
              0000002574455874646174653A6D6F6469667900323032302D30322D30355430
              333A31323A31362B30303A3030A4E7533E00000028744558747376673A626173
              652D7572690066696C653A2F2F2F746D702F6D616769636B2D7432594B45566D
              5045D2A2EA0000000049454E44AE426082}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Width = 50
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 186
    Top = 729
    Width = 217
    Height = 43
    Caption = 'Procesar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000D24944415448C7DD943D0AC2
      4010853F3D4D8A80854730480A4F91D2CAC23A575810AFE37552995242AA58F8
      1622B8F97127163E58261BDE7E33B32403FFAA33B0D173021C8DFDA4400BDC14
      53633FC8DC299AFBCD3A58070E64C016D829662309E6FA07950335E080550C28
      047F0025500157CB241E5E689F2889B38237AABCAF52D76502EF5471A2F7853A
      CAADE07E55AA3C1ABEFF00F7AB050EBF84CF9A45F900BC095CCBE43FFF1BB8D7
      E82C8A818F7610030738F5A0A9F66FAA23E093E49684C36B605D30FCCE43491C
      70B7AC7C713D01A76677619ECB821D0000002574455874646174653A63726561
      746500323032302D30322D30355430333A31323A31362B30303A3030D5BAEB82
      0000002574455874646174653A6D6F6469667900323032302D30322D30355430
      333A31323A31362B30303A3030A4E7533E00000028744558747376673A626173
      652D7572690066696C653A2F2F2F746D702F6D616769636B2D7432594B45566D
      5045D2A2EA0000000049454E44AE426082}
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object FechaCorte: TcxDateEdit
    Left = 24
    Top = 72
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 185
  end
  object DsExistencia: TDataSource
    DataSet = ZExistencia
    Left = 304
    Top = 216
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, upper(b.articulo) articulo,b.codigobarra, b.re' +
        'ferencia, b.costo, b.costo_pr, a.cod_alm, sum(a.entrada - a.sali' +
        'da) Existencia, b.costo_pr * sum(a.entrada - a.salida) Total  fr' +
        'om minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'and b.politica <> '#39'Servicio'#39
      
        'group by a.cod_art, b.articulo,b.costo,a.cod_alm,  b.costo_pr,b.' +
        'codigobarra, b.referencia')
    Params = <>
    Left = 347
    Top = 184
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      ReadOnly = True
      Size = 100
    end
    object ZExistenciaCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object ZExistenciaCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object ZExistenciaCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZExistenciaEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object ZExistenciaTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object ZExistenciaCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object ZExistenciaREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
  end
  object QCorteInventario: TZQuery
    Connection = datos.Data
    UpdateObject = zCorteInventario
    SQL.Strings = (
      'select * from MCORTEINVENTARIO')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 307
    Top = 425
    object QCorteInventarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QCorteInventarioFECHA_INICIAL: TDateField
      FieldName = 'FECHA_INICIAL'
    end
    object QCorteInventarioFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object QCorteInventarioFECHA_HOY: TDateField
      FieldName = 'FECHA_HOY'
    end
    object QCorteInventarioMONTOINVENTARIO: TFloatField
      FieldName = 'MONTOINVENTARIO'
    end
    object QCorteInventarioESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object Qnumero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MCORTEINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 211
    Top = 497
    object QnumeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object zCorteInventario: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MCORTEINVENTARIO'
      'WHERE'
      '  MCORTEINVENTARIO.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO MCORTEINVENTARIO'
      
        '  (ID, FECHA_INICIAL, FECHA_FINAL, FECHA_HOY, MONTOINVENTARIO, E' +
        'STADO)'
      'VALUES'
      
        '  (:ID, :FECHA_INICIAL, :FECHA_FINAL, :FECHA_HOY, :MONTOINVENTAR' +
        'IO, :ESTADO)')
    ModifySQL.Strings = (
      'UPDATE MCORTEINVENTARIO SET'
      '  ID = :ID,'
      '  FECHA_INICIAL = :FECHA_INICIAL,'
      '  FECHA_FINAL = :FECHA_FINAL,'
      '  FECHA_HOY = :FECHA_HOY,'
      '  MONTOINVENTARIO = :MONTOINVENTARIO,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  MCORTEINVENTARIO.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_HOY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOINVENTARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object Qnum2: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_TB_INVENTARIOCORTE_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 91
    Top = 601
    object Qnum2GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Qcortes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :' +
        'F2)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FCORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F2'
        ParamType = ptUnknown
      end>
    Left = 273
    Top = 426
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FCORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F2'
        ParamType = ptUnknown
      end>
    object QcortesFECHA: TDateField
      FieldName = 'FECHA'
      ReadOnly = True
    end
    object QcortesCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      ReadOnly = True
    end
    object QcortesARTICULOS: TWideStringField
      FieldName = 'ARTICULOS'
      ReadOnly = True
      Size = 75
    end
    object QcortesEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object QcortesVENTAS: TExtendedField
      FieldName = 'VENTAS'
      ReadOnly = True
      Precision = 19
    end
    object QcortesENTRADAS: TExtendedField
      FieldName = 'ENTRADAS'
      ReadOnly = True
      Precision = 19
    end
    object QcortesSALIDAS: TExtendedField
      FieldName = 'SALIDAS'
      ReadOnly = True
      Precision = 19
    end
    object QcortesEXACTUAL: TExtendedField
      FieldName = 'EXACTUAL'
      ReadOnly = True
      Precision = 19
    end
  end
end
