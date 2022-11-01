object FrmBuscarPedido: TFrmBuscarPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar Pedidos'
  ClientHeight = 459
  ClientWidth = 981
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
  object Label42: TLabel
    Left = 24
    Top = 43
    Width = 154
    Height = 13
    Caption = 'Buscar por Nombre de Ruta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 295
    Top = 43
    Width = 166
    Height = 13
    Caption = 'Buscar por Nombre de Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 24
    Top = 95
    Width = 945
    Height = 356
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyDown = cxGrid1DBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
        Caption = '#  Pedido'
        DataBinding.FieldName = 'NO_FACT'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 54
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
        Width = 54
      end
      object cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_FAC'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'CLIENTENOMBRE'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 184
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
        Width = 184
      end
      object cxGrid1DBTableView1MONTO: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'MONTO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid1DBTableView1POGXITBS: TcxGridDBColumn
        Caption = 'ITBs'
        DataBinding.FieldName = 'POGXITBS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
        Caption = 'Monto a Cobrar'
        DataBinding.FieldName = 'MONTOPAGO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 86
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
        Width = 86
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Vendedor'
        DataBinding.FieldName = 'VENDEDOR_1'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 146
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
        Width = 146
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Nombre de la Ruta'
        DataBinding.FieldName = 'NOMBRE_RUTA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 214
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
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'IDDR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueGrayed = 2
        Properties.ValueUnchecked = 3
        Options.IncSearch = False
        Options.FilteringPopup = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.ShowCaption = False
        Options.Sorting = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Edit1: TEdit
    Left = 295
    Top = 60
    Width = 258
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnChange = Edit1Change
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 24
    Top = 59
    Properties.KeyFieldNames = 'NOMBRE_RUTA'
    Properties.ListColumns = <
      item
        FieldName = 'NOMBRE_RUTA'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DsRuta
    Properties.OnChange = cxLookupComboBox1PropertiesChange
    TabOrder = 2
    Width = 257
  end
  object cxButton1: TcxButton
    Left = 616
    Top = 57
    Width = 123
    Height = 25
    Caption = 'Seleccionar Todo'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424DC60700000000000036000000280000001600000016000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000009000000F0000000DF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001A0000
      00FF000000F30000000000000000000000000000000000000000000000000000
      00000000000000000000524C508A524C4F8A524C508A524C508A524C508A524C
      508A544D518A524C508A524C508A534D518A000000DD000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FFAEA4A9FF867474FF000000FF000000FF000000AE00000000000000000000
      0000000000000000000039373B673836396739363A6737353967AEA4A9FFFFFF
      FFFFFFFCFCFFFFFBFBFFFEF9F9FFFDFCFCFF000000FFFDFCFCFFFDFCFCFF0001
      01FF000000FF000000FF00000000000000000000000000000000000000000000
      0000AEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFFFFFFFFFFFFAFAFFFEF9
      F9FFFDF7F7FFFDFCFCFF000000FF000000FF000000FF000000FF000000FF6E5E
      5EFF000000000000000039373B6739373B6739373B6739373B67AEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFFFFFFDAC8C8FFD6C5C5FFD5C3C3FFD9C8
      C8FF000000FF000000FF000000FF000000FF000000FF5A4D4DFF000000B20000
      0000AEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFFDFCFCFFFDFCFCFFFDFC
      FCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000006500000000AEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFF
      FFFFD7C9C9FFD5C3C3FFD0BDBDFFCFBCBCFF000000FF000000FF000000FF0000
      00FF000000FF8D7979FF0000000000000000AEA4A9FFFDFCFCFFFDFCFCFFFDFC
      FCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFFFFFFFDFCFCFFFDFC
      FCFFFDFCFCFFFDFCFCFF000000FF000000FF000000FF141313FFFDFCFCFFAEA4
      A9FF0000000000000000AEA4A9FFF7F4F4FFFDFCFCFFFDFCFCFFAEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFFFFFFD3C3C3FFD3C2C2FFD2BEBEFFCFBB
      BBFF000000FF000000FF231E1EFFD4C2C2FFFDFCFCFFAEA4A9FF000000000000
      0000AEA4A9FFF9F7F7FFFDFCFCFFFDFCFCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFC
      FCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFF1D1919FFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FF0000000000000000AEA4A9FFF9F7
      F7FFFDFCFCFFFDFCFCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFF
      FFFFD4C5C5FFD4C5C5FFD4C4C4FFD4C2C2FFD4C2C2FFD4C2C2FFD4C2C2FFD4C2
      C2FFFDFCFCFFAEA4A9FF0000000000000000AEA4A9FFF8F5F5FFFDFCFCFFFDFC
      FCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFFFFFFFDFCFCFFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFAEA4
      A9FF0000000000000000AEA4A9FFF9F6F6FFFDFCFCFFFDFCFCFFAEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFAEA4A9FFFFFFFFFFD8CACAFFD8CACAFFD8C7C7FFD7C4
      C4FFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FF000000000000
      0000AEA4A9FFFBFAFAFFFDFCFCFFFDFCFCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFC
      FCFFAEA4A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FF0000000000000000AEA4A9FFFCFB
      FBFFFDFCFCFFFDFCFCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFC
      FCFFFDFCFCFFAEA4A9FF0000000000000000AEA4A9FFFCFBFBFFF9F7F7FFFDFC
      FCFFAEA4A9FFFDFCFCFFFDFCFCFFFDFCFCFFAEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FF0000000000000000AEA4A9FFFCFBFBFFFAF8F8FFFDFCFCFFAEA4A9FFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFC
      FCFFAEA4A9FF0000000000000000000000000000000000000000000000000000
      0000AEA4A9FFFCFBFBFFFAF8F8FFFDFCFCFFAEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FF0000
      0000000000000000000000000000000000000000000000000000AEA4A9FFFDFC
      FCFFFBF9F9FFF8F5F5FFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFC
      FCFFFDFCFCFFAEA4A9FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4A9FFAEA4
      A9FF000000000000000000000000000000000000000000000000000000000000
      000000000000}
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 745
    Top = 56
    Width = 145
    Height = 26
    Caption = 'Enviar a Factura'
    Enabled = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424DC60700000000000036000000280000001600000016000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000050000000B0001
      01300104067B091A24BD051821C00004067D0001012E0000000B000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000008000202180002023D030A0E8E0D2431DB21526CFE2F6F8EFF3F85
      A3FF276886FF1C5B78FF15475FFF081C2BDE02080B8F0001023C000102190000
      000900000000000000000000000000000000000000000000001E060E128D1534
      45E6295C79FF397D9DFF478EADFF5191AFFF5D95AEFF5F95AEFF2D6883FF2563
      7FFF276986FF276C8CFF246585FF1A4C67FF0C293AE9030C1192000001230000
      0000000000000000000000000000020506504389ADFF4991B6FF5192B3FF5A95
      B0FF5B94AEFF5C94AFFF659AB4FF75A4BDFF306C88FF276581FF276581FF2866
      85FF296A88FF2D708EFF2E7496FF2E7397FF03080B6100000000000000000000
      000000000000070E11495296B7FF5A94B1FF6A9FB8FF689FB9FF689EB9FF689E
      B9FF6CA1BBFF77A8BFFF33708DFF2A6B88FF2C6B88FF2B6888FF2B6887FF2C6C
      88FF2D6B8AFF347799FF405F78BF000000000000000000000000000000001424
      2C475797B5FF609BB9FF669FBCFF619CBAFF5D99B7FF639DBAFF5E9AB8FF68A1
      BDFF377692FF326F8EFF336F8CFF265B75FF2C5F7AFF2D6983FF31748FFF3274
      92FF4C7390D1927D7DCCA99191EDA99191EDA99191EDAB9495F2AF9C9EFFAF9C
      9EFFAF9C9EFFAF9C9EFFAF9C9EFFAF9C9EFFA29AA0FF6DA5C3FF3D7D99FF3475
      93FF2F6C88FF2D5F7DFF306B87FF2C667EFF336F8DFF367896FF4D7694D2CFC1
      C1EDFFFCFCFFF9F3F3FFF9F3F3FFF8F1F1FFF6EFEFFFF4EBEBFFF3EAEAFFF0E7
      E7FFEFE5E5FFEDE1E1FFAF9B9EFF73ABCBFF43809FFF3B7A97FF397596FF3262
      7EFF316D87FF2A5B76FF336D88FF3C7D9BFF4D7593D1CFC1C1EDFFFFFFFFF9F3
      F3FFF9F2F2FFF7F0F0FFC5AEAEFFC3ABABFFF3EAEAFFF0E6E6FFEFE5E5FFEDE1
      E1FFB09D9FFF7BB3D3FF4986A4FF3E7D9EFF3F819FFF386F8AFF2D6078FF2D5F
      78FF3D7E9BFF4382A3FF4E7594D1CFC1C1EDFFFFFFFFFCF5F5FFF9F3F3FFF8F1
      F1FFF7F0F0FFF5EEEEFFF3EAEAFFF0E7E7FFEFE5E5FFEDE1E1FFB19DA0FF82BB
      D8FF4E8CA8FF4282A4FF4484A6FF4385A3FF3E7895FF3C6E8BFF3F7A96FF4787
      A8FF4E7694D1CFC1C1EDFFFFFFFFCCB6B6FFC7B1B1FFC6AFAFFFC5AEAEFFC3AB
      ABFFC2AAAAFFC0A8A8FFBFA7A7FFEDE1E1FFB19EA0FF86C0DFFF5491ADFF488A
      A8FF4A8CA9FF4A8BA9FF4A8CABFF4A88A8FF4886A6FF4C8DABFF507796D2CFC1
      C1EDFFFFFFFFFFFDFDFFFAF4F4FFF8F1F1FFF6EFEFFFF4EBEBFFF3EAEAFFF0E6
      E6FFEEE4E4FFECE0E0FFB29EA1FF8AC5E6FF5E99B7FF4B87AAFF4989AEFF4D8C
      ADFF4D8CAEFF4E8DAFFF4E8DAFFF518EB0FF507795D1CFC1C1EDFFFFFFFFCCBA
      BAFFCBB5B5FFC5AFAFFFC4ADADFFC2AAAAFFC2AAAAFFC2AAAAFFC2AAAAFFE9DC
      DCFFB29FA1FF99E4F9FF98E0FBFF83C8E3FF70B3CFFF5C9BBCFF5391B4FF5492
      B4FF5191B4FF5394B6FF517897D2CFC1C1EDFFFFFFFFFFFEFEFFFFFDFDFFFDF6
      F6FFF5EEEEFFF0E6E6FFEFE5E5FFECE0E0FFEBDEDEFFE9DCDCFFB09C9EFF7DB8
      D8FF659BB6FF6EA5C2FF82C3DBFF88CDE6FF8ACFEBFF78BDD9FF69ABC9FF5B8D
      B0FB314B5C7BCFC1C1EDFFFFFFFFCCBABAFFCCB9B9FFCBB5B5FFC9B2B2FFC9B2
      B2FFC9B2B2FFC9B2B2FFC9B2B2FFE6D8D8FFB09CA0FF86C3E5FF0E8C12FF70BA
      B7FF5982B7EC5690B0D6568DA6B95D8DACE054829DC7496E85AD060A0C0ECFC1
      C1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF9F3F3FFF4EBEBFFE4D5
      D5FFE0D2D2FFDFD0D0FFA99191ED5A8BAFFF36A33EFF0E8C12FF5886A0EC5178
      97D33D5A719F00000000000000000000000000000000CFC1C1EDFFFFFFFFCCBA
      BAFFCCBABAFFCCB9B9FFCCB7B7FFC7B0B0FFC7B0B0FFC7B0B0FFC7B0B0FFB8C1
      ACFF5F8F54F60D8211ED36A33EFF00A806FF0E8C12FF1C542084000000000000
      0000000000000000000000000000CFC1C1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFD
      FDFFFEF9F9FFF8F1F1FFF4EBEBFFF0E6E6FFE5D7D7FFBDD2B3FF71C86FFF33F0
      45FF33F045FF5FD964FF00A806FF0E8C12FF0000000000000000000000000000
      000000000000CFC1C1EDFFFFFFFFCCBABAFFCCBABAFFCCB7B7FFCBB5B5FFF6EF
      EFFFF6EFEFFFF2E9E9FFE5D7D7FFC5D5BCFFB0CCA8FFAAF9B3FF89FE97FF33F0
      45FF5FD964FF0E8C12FF102F124A00000000000000000000000000000000CFC1
      C1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFFEF8F8FFFEF9F9FFF6EFEFFFF6EF
      EFFFF6EFEFFFB0C2A7FF729A69F632973AED36A33EFF3EFF43FF1EB93FFD1E5B
      238E0000000000000000000000000000000000000000CFC1C1EDFFFFFFFFFFFF
      FFFFFFFFFFFFFEF9F9FFFEF9F9FFFEF9F9FFFEF9F9FFFEF9F9FFF6EFEFFFF2E9
      E9FFA99191ED0000000036A33EFF24AE2EEB18491C7200000000000000000000
      0000000000000000000000000000908787A5CFC1C1EDCFC1C1EDCFC1C1EDCFC1
      C1EDCFC1C1EDCFC1C1EDCFC1C1EDCFC1C1EDCFC1C1EDCFC1C1ED7E6C6CB10000
      000036A33EFF1237155600000000000000000000000000000000000000000000
      000000000000}
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 504
    Top = 128
  end
  object QRuta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.nombre from ruta a'
      'INNER Join vendedores b On a.idvendedor = b.id')
    Params = <>
    Left = 712
    Top = 296
    object QRutaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRutaNOMBRE_RUTA: TWideStringField
      FieldName = 'NOMBRE_RUTA'
      Size = 35
    end
    object QRutaIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
    end
    object QRutaNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DsRuta: TDataSource
    DataSet = QRuta
    Left = 752
    Top = 300
  end
  object consulta: TZQuery
    Connection = datos.Data
    UpdateObject = FRMaster_Fact
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp, E.nombre_ruta' +
        ', F.nombre VENDEDOR from master_fact a'
      'LEFT join cliente b On a.clienteid = b.codigo'
      'LEFT join musuario c On a.usuarioid = c.usuarioid'
      'LEFT join mtempleado d On c.empleadoid = d.cod_emp'
      'LEFT JOIN ruta e ON A.idruta = E.id'
      'LEFT JOIN VENDEDORES F on E.idvendedor = F.id'
      'WHERE a.situacion='#39'PEDIDO'#39
      'AND a.rotulo ='#39'PEDIDO'#39)
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 752
    Top = 8
    object consultaNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object consultaFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object consultaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object consultaCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object consultaCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object consultaNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object consultaMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object consultaHORA: TTimeField
      FieldName = 'HORA'
    end
    object consultaPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
      currency = True
    end
    object consultaTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object consultaMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object consultaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object consultaRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object consultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object consultaTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object consultaVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object consultaSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object consultaCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object consultaNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object consultaRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object consultaNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object consultaNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object consultaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object consultaROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object consultaNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object consultaMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object consultaCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object consultaINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object consultaDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object consultaPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object consultaLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object consultaCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object consultaTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object consultaEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object consultaDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object consultaRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object consultaABONO: TFloatField
      FieldName = 'ABONO'
    end
    object consultaCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object consultaNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object consultaPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object consultaMESES: TIntegerField
      FieldName = 'MESES'
    end
    object consultaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object consultaPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object consultaESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object consultaDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object consultaCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object consultaCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object consultaCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object consultaQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object consultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object consultaCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object consultaCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object consultaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object consultaPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object consultaNC: TIntegerField
      FieldName = 'NC'
    end
    object consultaCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object consultaCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object consultaNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object consultaFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object consultaINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object consultaINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object consultaDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object consultaFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object consultaDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object consultaINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object consultaCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object consultaDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object consultaIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object consultaNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object consultaCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object consultaNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object consultaMORA: TFloatField
      FieldName = 'MORA'
    end
    object consultaNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object consultaBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object consultaOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object consultaIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object consultaCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object consultaCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object consultaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object consultaNOMBRE_RUTA: TWideStringField
      FieldName = 'NOMBRE_RUTA'
      Size = 35
    end
    object consultaVENDEDOR_1: TWideStringField
      FieldName = 'VENDEDOR_1'
      Size = 50
    end
    object consultaFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
  end
  object FRMaster_Fact: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM master_fact'
      'WHERE'
      '  master_fact.NO_FACT = :OLD_NO_FACT')
    InsertSQL.Strings = (
      'INSERT INTO master_fact'
      
        '  (NO_FACT, FECHA_FAC, TIPO, COD_CLIENT, COD_EMP, NO_FACT1, MONT' +
        'O, HORA, '
      
        '   POGXITBS, TIPOPAGO, MONTOPAGO, CONDICION, RENTA, CODIGO, TIPO' +
        'ITBS, VENDEDOR, '
      
        '   SITUACION, CAJERO, NCF, RNC_CLIENTE, NCF1, NOM_CLIENTE, DESCU' +
        'ENTO, ROTULO, '
      
        '   NO_AUTORIZA_NCF, MONTOFINANCIADO, CUOTAS, INTERES, DIRECCION,' +
        ' PAGADO, '
      
        '   LEYPROPINA, COMPROBANTE, TERMINAL, EFECTIVO, DEVOLUCION1, RES' +
        'TANTE, '
      
        '   ABONO, CHEK, NO_RECIBO, PAGADOCXC, MESES, DIAS, PENDIENTE, ES' +
        'TADOPAGO, '
      
        '   DEVOLUCION, CONDICION_PAGO, FECHAVENCIMIENTO, COMBO, COBRADO,' +
        ' QUEES, '
      
        '   USUARIOID, CLIENTEID, CONDICIONVENTA, TIENDAID, PINREFERIDO, ' +
        'NC, CODVEN, '
      
        '   CAJEROID, NOMBRECLIENTE_PRN, FECHA_FINAL, INTERES_DIARIO, INT' +
        'ERES_ACUM, '
      
        '   DIAS_TRANS, FECHA_ULTIMO_PAGO, DIAS_ATRASO, INTERES_PAGADO, C' +
        'APITAL_PAGADO, '
      
        '   DESC_CAPITAL, IDDR, NOMBREDELDR, CAJA, NCF_NOMBRE, MORA, NUME' +
        'RO_FACTURA, '
      '   BONOS, OBSERVACIONES, IDRUTA, CAJAID)'
      'VALUES'
      
        '  (:NO_FACT, :FECHA_FAC, :TIPO, :COD_CLIENT, :COD_EMP, :NO_FACT1' +
        ', :MONTO, '
      
        '   :HORA, :POGXITBS, :TIPOPAGO, :MONTOPAGO, :CONDICION, :RENTA, ' +
        ':CODIGO, '
      
        '   :TIPOITBS, :VENDEDOR, :SITUACION, :CAJERO, :NCF, :RNC_CLIENTE' +
        ', :NCF1, '
      
        '   :NOM_CLIENTE, :DESCUENTO, :ROTULO, :NO_AUTORIZA_NCF, :MONTOFI' +
        'NANCIADO, '
      
        '   :CUOTAS, :INTERES, :DIRECCION, :PAGADO, :LEYPROPINA, :COMPROB' +
        'ANTE, :TERMINAL, '
      
        '   :EFECTIVO, :DEVOLUCION1, :RESTANTE, :ABONO, :CHEK, :NO_RECIBO' +
        ', :PAGADOCXC, '
      
        '   :MESES, :DIAS, :PENDIENTE, :ESTADOPAGO, :DEVOLUCION, :CONDICI' +
        'ON_PAGO, '
      
        '   :FECHAVENCIMIENTO, :COMBO, :COBRADO, :QUEES, :USUARIOID, :CLI' +
        'ENTEID, '
      
        '   :CONDICIONVENTA, :TIENDAID, :PINREFERIDO, :NC, :CODVEN, :CAJE' +
        'ROID, :NOMBRECLIENTE_PRN, '
      
        '   :FECHA_FINAL, :INTERES_DIARIO, :INTERES_ACUM, :DIAS_TRANS, :F' +
        'ECHA_ULTIMO_PAGO, '
      
        '   :DIAS_ATRASO, :INTERES_PAGADO, :CAPITAL_PAGADO, :DESC_CAPITAL' +
        ', :IDDR, '
      
        '   :NOMBREDELDR, :CAJA, :NCF_NOMBRE, :MORA, :NUMERO_FACTURA, :BO' +
        'NOS, :OBSERVACIONES, '
      '   :IDRUTA, :CAJAID)')
    ModifySQL.Strings = (
      'UPDATE master_fact SET'
      '  NO_FACT = :NO_FACT,'
      '  FECHA_FAC = :FECHA_FAC,'
      '  TIPO = :TIPO,'
      '  COD_CLIENT = :COD_CLIENT,'
      '  COD_EMP = :COD_EMP,'
      '  NO_FACT1 = :NO_FACT1,'
      '  MONTO = :MONTO,'
      '  HORA = :HORA,'
      '  POGXITBS = :POGXITBS,'
      '  TIPOPAGO = :TIPOPAGO,'
      '  MONTOPAGO = :MONTOPAGO,'
      '  CONDICION = :CONDICION,'
      '  RENTA = :RENTA,'
      '  CODIGO = :CODIGO,'
      '  TIPOITBS = :TIPOITBS,'
      '  VENDEDOR = :VENDEDOR,'
      '  SITUACION = :SITUACION,'
      '  CAJERO = :CAJERO,'
      '  NCF = :NCF,'
      '  RNC_CLIENTE = :RNC_CLIENTE,'
      '  NCF1 = :NCF1,'
      '  NOM_CLIENTE = :NOM_CLIENTE,'
      '  DESCUENTO = :DESCUENTO,'
      '  ROTULO = :ROTULO,'
      '  NO_AUTORIZA_NCF = :NO_AUTORIZA_NCF,'
      '  MONTOFINANCIADO = :MONTOFINANCIADO,'
      '  CUOTAS = :CUOTAS,'
      '  INTERES = :INTERES,'
      '  DIRECCION = :DIRECCION,'
      '  PAGADO = :PAGADO,'
      '  LEYPROPINA = :LEYPROPINA,'
      '  COMPROBANTE = :COMPROBANTE,'
      '  TERMINAL = :TERMINAL,'
      '  EFECTIVO = :EFECTIVO,'
      '  DEVOLUCION1 = :DEVOLUCION1,'
      '  RESTANTE = :RESTANTE,'
      '  ABONO = :ABONO,'
      '  CHEK = :CHEK,'
      '  NO_RECIBO = :NO_RECIBO,'
      '  PAGADOCXC = :PAGADOCXC,'
      '  MESES = :MESES,'
      '  DIAS = :DIAS,'
      '  PENDIENTE = :PENDIENTE,'
      '  ESTADOPAGO = :ESTADOPAGO,'
      '  DEVOLUCION = :DEVOLUCION,'
      '  CONDICION_PAGO = :CONDICION_PAGO,'
      '  FECHAVENCIMIENTO = :FECHAVENCIMIENTO,'
      '  COMBO = :COMBO,'
      '  COBRADO = :COBRADO,'
      '  QUEES = :QUEES,'
      '  USUARIOID = :USUARIOID,'
      '  CLIENTEID = :CLIENTEID,'
      '  CONDICIONVENTA = :CONDICIONVENTA,'
      '  TIENDAID = :TIENDAID,'
      '  PINREFERIDO = :PINREFERIDO,'
      '  NC = :NC,'
      '  CODVEN = :CODVEN,'
      '  CAJEROID = :CAJEROID,'
      '  NOMBRECLIENTE_PRN = :NOMBRECLIENTE_PRN,'
      '  FECHA_FINAL = :FECHA_FINAL,'
      '  INTERES_DIARIO = :INTERES_DIARIO,'
      '  INTERES_ACUM = :INTERES_ACUM,'
      '  DIAS_TRANS = :DIAS_TRANS,'
      '  FECHA_ULTIMO_PAGO = :FECHA_ULTIMO_PAGO,'
      '  DIAS_ATRASO = :DIAS_ATRASO,'
      '  INTERES_PAGADO = :INTERES_PAGADO,'
      '  CAPITAL_PAGADO = :CAPITAL_PAGADO,'
      '  DESC_CAPITAL = :DESC_CAPITAL,'
      '  IDDR = :IDDR,'
      '  NOMBREDELDR = :NOMBREDELDR,'
      '  CAJA = :CAJA,'
      '  NCF_NOMBRE = :NCF_NOMBRE,'
      '  MORA = :MORA,'
      '  NUMERO_FACTURA = :NUMERO_FACTURA,'
      '  BONOS = :BONOS,'
      '  OBSERVACIONES = :OBSERVACIONES,'
      '  IDRUTA = :IDRUTA,'
      '  CAJAID = :CAJAID'
      'WHERE'
      '  master_fact.NO_FACT = :OLD_NO_FACT')
    RefreshSQL.Strings = (
      'select * from master_fact')
    UseSequenceFieldForRefreshSQL = True
    Left = 544
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_fact'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_fac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_client'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'no_fact1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POGXITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'condicion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'renta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nom_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descuento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rotulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_AUTORIZA_NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOFINANCIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUOTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEYPROPINA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPROBANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'terminal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EFECTIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEVOLUCION1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RESTANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHEK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_RECIBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADOCXC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MESES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PENDIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEVOLUCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAVENCIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QUEES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICIONVENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PINREFERIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJEROID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRECLIENTE_PRN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_DIARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_ACUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS_TRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_ULTIMO_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS_ATRASO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAPITAL_PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESC_CAPITAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREDELDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO_FACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BONOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDRUTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object Actualizar: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 640
    Top = 8
  end
  object NUMERO1: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(NUMERO_FACTURA, 0) from RDB$DATABASE')
    Params = <>
    Left = 321
    Top = 16
    object NUMERO1GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 184
    Top = 240
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object IbqClientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object IbqClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object IbqClientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IbqClientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object IbqClientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object IbqClientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 15
    end
    object IbqClientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object IbqClientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object IbqClientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object IbqClientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object IbqClientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object IbqClientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object IbqClientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object IbqClientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object IbqClientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object IbqClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object IbqClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object IbqClientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      ReadOnly = True
      Size = 10
    end
  end
  object Qfraccionado: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.descripcion from particionado a'
      'left join unidad_m b On a.id_unidad = b.cod_unidad_m'
      '')
    Params = <>
    Left = 152
    Top = 65528
    object QfraccionadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QfraccionadoCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object QfraccionadoCANTI: TFloatField
      FieldName = 'CANTI'
    end
    object QfraccionadoUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object QfraccionadoCOD_PART: TFloatField
      FieldName = 'COD_PART'
    end
    object QfraccionadoID_UNIDAD: TIntegerField
      FieldName = 'ID_UNIDAD'
    end
    object QfraccionadoPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object QfraccionadoPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object QfraccionadoDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 256
    Top = 272
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
end
