object FrmHistoricoMovmientoInventario: TFrmHistoricoMovmientoInventario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Historicos de Movimientos de Productos'
  ClientHeight = 565
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.WordWrap = True
    TabOrder = 0
    Height = 89
    Width = 887
    object LProducto: TLabel
      Left = 16
      Top = 21
      Width = 160
      Height = 21
      Caption = 'Nombre del Producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodigoBarra: TLabel
      Left = 16
      Top = 40
      Width = 160
      Height = 21
      Caption = 'Nombre del Producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LReferencia: TLabel
      Left = 16
      Top = 58
      Width = 109
      Height = 19
      Caption = 'Nombre del Producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Bahnschrift Condensed'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 357
      Top = 64
      Width = 111
      Height = 13
      Caption = 'Tipo de Movimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lCODIGO: TLabel
      Left = 16
      Top = 3
      Width = 109
      Height = 19
      Caption = 'Nombre del Producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Bahnschrift Condensed'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 409
      Top = 11
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label3: TLabel
      Left = 414
      Top = 35
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 474
      Top = 62
      Properties.KeyFieldNames = 'DESCRIPCION'
      Properties.ListColumns = <
        item
          Caption = 'Id'
          FieldName = 'CONCEPTOID'
        end
        item
          FieldName = 'DESCRIPCION'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.GridLines = glVertical
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DsMovimientos
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      TabOrder = 0
      Width = 158
    end
    object cxButton1: TcxButton
      Left = 741
      Top = 50
      Width = 119
      Height = 36
      Caption = 'Todos'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 257
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object inicio: TcxDateEdit
      Left = 474
      Top = 8
      TabOrder = 2
      Width = 158
    end
    object fechafinal: TcxDateEdit
      Left = 474
      Top = 35
      TabOrder = 3
      Width = 158
    end
    object ChkFEcha: TCheckBox
      Left = 638
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Buscar Fecha'
      TabOrder = 4
    end
    object cxButton2: TcxButton
      Left = 741
      Top = 10
      Width = 119
      Height = 39
      Caption = 'Consulta Costos'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000E5E5E5FEE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFE5E5E5FFE9E9E9FFF2F2F2FFE2E2E2EE00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFE5E5E5FFE5E5E5FF9BD6EBFF53C6F1FF32BDF3FF3EC0F2FF6BCC
        EFFFC6DEE7FFE6E6E6FFF1F1F1FFF2F2F2FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFDAE2E6FF4AC4F1FF1BB4F3FF20B7F3FF2EBCF5FF37C5F5FF37C5
        F5FF39C3F4FF9EDCF1FFF2F2F2FFF2F2F2FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FF4BC4F1FF1BB4F3FF2FBFF5FF41A8F2FF3A7FEEFF42A4F2FF49C8
        F6FF4AD0F7FF4ACFF7FFCCEAF3FFF2F2F2FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFC6C6C6FF999999FF999999FFC1C1C1FFE5E5
        E5FF9CD6EBFF1BB4F3FF2FC0F5FF4ACFF7FF44AFF3FF3A7FEEFF419FF1FF3D8B
        EFFF4AD0F7FF4AD0F7FF64D5F6FFF1F2F2FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FF55C6F1FF21B7F3FF48CFF7FF4AD0F7FF4AD0F7FF3D8BEFFF48C6F6FF3B82
        EEFF4AD0F7FF4AD0F7FF4AD0F7FFDAEDF3FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFC6C6C6FF999999FF999999FFC1C1C1FFE5E5
        E5FF35BEF3FF2EBFF5FF4AD0F7FF4AD0F7FF42A8F2FF3976EDFF3C85EEFF3F99
        F1FF4AD0F7FF4AD0F7FF4AD0F7FFB9E7F4FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FF44C2F2FF37C5F5FF4AD0F7FF48C5F6FF3B85EEFF3C86EEFF46BDF5FF4AD0
        F7FF4AD0F7FF4AD0F7FF4AD0F7FFC6E9F3FFF2F2F2FF00000000000000000000
        000000000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FF72CEEFFF36C4F5FF4AD0F7FF47C1F5FF3E91F0FF3D8BEFFF48C6F6FF4AD0
        F7FF4AD0F7FF4AD0F7FF4AD0F7FFE7F0F2FFF2F2F2FF0D0D0D202626265F2626
        265F2626265FB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFCDCD
        CDFFCBDFE7FF3AC3F4FF4AD0F7FF4ACFF7FF3C86EEFF3871ECFF3A7FEEFF41A2
        F2FF4AD0F7FF4AD0F7FF8DDDF5FFF2F2F2FFF2F2F2FF5A5A5AE1626B73FF5E70
        80FF64696DFF63696FFF5E7080FF626B72FF666868FF617A81FF627479FF6868
        68FFDADADAFF9ED8ECFF4ACEF7FF4AD0F7FF4AD0F7FF42A6F2FF49CCF7FF4AD0
        F7FF4AD0F7FF64D5F6FFEAF0F2FFF2F2F2FFF2F2F2FF666666FF4592D3FF3C9D
        EFFF4F84B1FF4C87B9FF3C9DEFFF478ECAFF5C8C9AFF4AD0F7FF4BCBF0FF6666
        66FFCDCDCDFFE5E5E5FFC6E1E8FF68D6F6FF4AD0F7FF4AD0F7FF4AD0F7FF4CD0
        F7FF90DEF5FFEAF0F2FFF2F2F2FFF2F2F2FFF2F2F2FF666666FF4592D3FF3C9D
        EFFF4F84B1FF4C87B9FF3C9DEFFF478ECAFF5B8E9DFF4AD0F7FF4BCDF3FF6666
        66FFCDCDCDFFE5E5E5FFECECECFFF2F2F2FFE0EEF3FFBFE8F4FFCAEAF3FFEBF1
        F2FFDFDFC1FFB0AF57FFB7B662FFF2F2F2FFF2F2F2FF666666FF626B73FF5E70
        80FF64696DFF63696FFF5E7080FF626B72FF5B8E9DFF4AD0F7FF4BCDF3FF6666
        66FFCDCDCDFFE8E8E8FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFDFDF
        C0FFACAC52FFA7A751FFA0A055FFF0F0ECFFF2F2F2FF666666FF488DC8FF3D9B
        EBFF5280A7FF4F84B0FF3D9BEBFF4A8AC0FF5B8E9DFF4AD0F7FF4BCDF3FF6666
        66FFCECECEFFF0F0F0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE6E4C2FFBEBC
        5EFFA9A950FFA8A852FF7F7F76FFD9D9D9FFF2F2F2FF666666FF4493D6FF3C9D
        EFFF4E85B3FF4C89BCFF3C9DEFFF468FCDFF5B8E9DFF4AD0F7FF4BCDF3FF6666
        66FFD4D4D4FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE5E4C2FFCCC963FFCCC9
        62FFBCBB5BFFBBBA9BFF878787FFE8E8E8FFF2F2F2FF666666FF5C7385FF567B
        9AFF606E79FF5F6F7DFF567B9AFF5D7283FF646D70FF5B8E9DFF5E8591FF6666
        66FFD8D8D8FFF2F2F2FFF2F2F2FFF2F2F2FFE5E4C1FFCCC963FFCCC962FFCCC9
        62FFCBCAA4FF8A8A8AFFE9E9E9FFF2F2F2FFF2F2F2FF666666FF5083AFFF468F
        CDFF577996FF557C9DFF468FCDFF5181AAFF5C7386FF468FCDFF4B89BDFF6666
        66FFD8D8D8FFF2F2F2FFF2F2F2FFE5E4C0FFCCC963FFCCC962FFCCC962FFE1DF
        B1FFEFEFEFFFEFEFEFFFF2F2F2FFF2F2F2FFF2F2F2FF666666FF4493D6FF3C9D
        EFFF4E85B3FF4C89BCFF3C9DEFFF468FCDFF557C9EFF3C9DEFFF3E9AE7FF6666
        66FFD8D8D8FFF2F2F2FFECF0EEFFA3CC95FFCCC962FFCCC962FFE1DFB1FFF2F2
        F2FFF0F0F0FFEBEBEBFFEBEBEBFFEBEBEBFFDFDFDFF1666666FF557C9EFF4D87
        B8FF5B748AFF59778FFF4D87B8FF567B9AFF5F6F7DFF4D87B8FF5281A9FF6666
        66FFD8D8D8FFF2F2F2FFC0DAD1FF4CD0F5FF9FCC97FFE1DFB1FFF2F2F2FFF2F2
        F2FFEDEDEDFFE5E5E5FFE5E5E5FFE4E4E4FD4444444A666666FFCBC980FFCDCA
        66FFD8D692FFEDEDECFFE9E8D8FFD0CD71FFCDCA66FFCDCA66FFCFCC72FF6666
        66FFD8D8D8FFF0F0F0FF888985FFB8DACFFFE4EDE9FFF2F2F2FFF2F2F2FFF2F2
        F2FFEDEDEDFFE5E5E5FFE4E4E4FD4444444A00000000666666FFCECC78FFCCC9
        62FFCCC962FFD9D793FFF2F2F0FFEBEAD7FFCFCC6DFFCCC962FFCDCA66FF6666
        66FFD8D8D8FFF2F2F2FFEDEDEDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFEDEDEDFFE4E4E4FD4444444A0000000000000000666666FFC3C186FFCECC
        78FFCECC78FFCECC78FFD2D1A2FFD8D8D8FFD6D5C1FFCECC7AFFCBC980FF6666
        66FFB3B3B3D9C5C5C5D0C5C5C5D0C5C5C5D0C5C5C5D0C5C5C5D0C5C5C5D0C5C5
        C5D0C8C8C8D74444444A0000000000000000000000003F3F3F9E666666FF6666
        66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF5050
        50C7020202050000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = cxButton2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 95
    Width = 985
    Height = 433
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = DswInventario
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 89
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 92
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Nombre del Articulo'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 300
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 300
      end
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Concepto'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 178
      end
      object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
        Caption = 'Salida'
        DataBinding.FieldName = 'SALIDA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 83
      end
      object cxGrid1DBTableView1ENTRADA: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'ENTRADA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 120
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
    Left = 648
    Top = 264
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
  object almacenes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 448
    Top = 232
    object almacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object almacenesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object QMovimientos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select  *  from conceptos'
      'where tipousuario = 1')
    Params = <>
    Left = 288
    Top = 216
    object QMovimientosCONCEPTOID: TIntegerField
      FieldName = 'CONCEPTOID'
      Required = True
    end
    object QMovimientosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object QMovimientosTIPOUSUARIO: TIntegerField
      FieldName = 'TIPOUSUARIO'
    end
  end
  object FInvenatario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.' +
        'entrada, a.salida from minventario a'
      'left join conceptos b On a.conceptoid = b.conceptoid'
      'left join mtartuculos c On a.cod_art = c.cod_art'
      '')
    Params = <>
    Left = 216
    Top = 128
    object FInvenatarioFECHA: TDateField
      FieldName = 'FECHA'
    end
    object FInvenatarioCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object FInvenatarioARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object FInvenatarioDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object FInvenatarioCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object FInvenatarioENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object FInvenatarioSALIDA: TFloatField
      FieldName = 'SALIDA'
    end
  end
  object DsMovimientos: TDataSource
    DataSet = QMovimientos
    Left = 224
    Top = 232
  end
  object DsAlmacenes: TDataSource
    DataSet = almacenes
    Left = 392
    Top = 216
  end
  object DswInventario: TDataSource
    DataSet = FInvenatario
    Left = 136
    Top = 176
  end
  object DsExistencia: TDataSource
    DataSet = ZExistencia
    Left = 560
    Top = 296
  end
  object qexterior: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select sUM(b.costo_pr * (a.entrada - a.salida)) Total  from minv' +
        'entario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'where b.politica <> '#39'Servicio'#39
      'and b.moneda = '#39'NO'#39)
    Params = <>
    Left = 616
    Top = 344
    object qexteriorTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object qRD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select sUM(b.costo_pr * (a.entrada - a.salida)) Total  from minv' +
        'entario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'where b.politica <> '#39'Servicio'#39
      'and b.moneda = '#39'SI'#39)
    Params = <>
    Left = 712
    Top = 232
    object qRDTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object Almacenes1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.en' +
        'trada - a.salida) Existencia  from minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'left join almacenes c On a.cod_alm = c.id'
      'and b.politica <> '#39'Servicio'#39
      
        'group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descrip' +
        'cion')
    Params = <>
    Left = 552
    Top = 216
    object Almacenes1COD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object Almacenes1ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object Almacenes1COD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object Almacenes1DESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object Almacenes1EXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DsAlmacenes01: TDataSource
    DataSet = Almacenes1
    Left = 592
    Top = 176
  end
end
