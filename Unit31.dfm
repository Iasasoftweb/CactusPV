object frmConsultaFact: TfrmConsultaFact
  Left = 219
  Top = 154
  BorderIcons = [biSystemMenu]
  Caption = 'Concuslta de Facturas Emitidas'
  ClientHeight = 548
  ClientWidth = 992
  Color = clWindow
  Ctl3D = False
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 992
    Height = 548
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    LookAndFeel.SkinName = 'Sharp'
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 543
    ClientRectLeft = 5
    ClientRectRight = 987
    ClientRectTop = 27
    object Tab_Facturado: TcxTabSheet
      Caption = 'Facturado'
      ImageIndex = 755
      object cxGrid1: TcxGrid
        Left = 139
        Top = 7
        Width = 878
        Height = 463
        TabOrder = 1
        LookAndFeel.SkinName = 'Sharp'
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsFacturasEmitidas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBTableView1NO_FACT: TcxGridDBColumn
            Caption = '# Factura'
            DataBinding.FieldName = 'NO_FACT'
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
            Width = 66
          end
          object cxGridDBTableView1FECHA_FAC: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA_FAC'
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
            Width = 88
          end
          object cxGridDBTableView1CLIENTENOMBRE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
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
            Width = 231
          end
          object cxGridDBTableView1NOMBRES_EMP: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NOMBRES_EMP'
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
            Width = 195
          end
          object cxGridDBTableView1MONTOPAGO: TcxGridDBColumn
            Caption = 'Total Pagado'
            DataBinding.FieldName = 'MONTOPAGO'
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
            Width = 95
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Condici'#243'n'
            DataBinding.FieldName = 'TIPO'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 72
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = -4
        Top = 9
        Caption = 'Opciones'
        ParentBackground = False
        ParentColor = False
        Style.Color = 16053234
        TabOrder = 0
        Height = 457
        Width = 137
        object cxButton5: TcxButton
          Left = 9
          Top = 216
          Width = 123
          Height = 37
          Caption = 'Buqueda de Facturas Emitidas'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 179
          TabOrder = 0
          WordWrap = True
          OnClick = cxButton5Click
        end
        object cxButton4: TcxButton
          Left = 9
          Top = 177
          Width = 123
          Height = 35
          Caption = 'Anular Facturas Emitidas Hoy'
          Enabled = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 512
          TabOrder = 1
          WordWrap = True
          OnClick = cxButton4Click
        end
        object cxButton1: TcxButton
          Left = 9
          Top = 98
          Width = 123
          Height = 33
          Caption = 'Imprimir Copia de Factura'
          Enabled = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 452
          TabOrder = 2
          WordWrap = True
          OnClick = cxButton1Click
        end
        object cxButton6: TcxButton
          Left = 9
          Top = 23
          Width = 123
          Height = 33
          Caption = '&Nueva Factura'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 647
          TabOrder = 3
          WordWrap = True
          OnClick = cxButton6Click
        end
        object cxButton7: TcxButton
          Left = 9
          Top = 61
          Width = 123
          Height = 33
          Caption = 'Cobrar Factura'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 595
          TabOrder = 4
          WordWrap = True
          OnClick = cxButton7Click
        end
        object cxButton9: TcxButton
          Left = 9
          Top = 256
          Width = 123
          Height = 37
          Caption = 'Modificar Facturas'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 18
          TabOrder = 5
          WordWrap = True
          OnClick = cxButton9Click
        end
        object cxButton10: TcxButton
          Left = 9
          Top = 135
          Width = 123
          Height = 37
          Caption = 'Consultar Facturas Impresas'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 466
          TabOrder = 6
          WordWrap = True
          OnClick = cxButton10Click
        end
      end
      object cxLabel1: TcxLabel
        Left = 139
        Top = 472
        Caption = 'Nombre del Cliente'
        Transparent = True
      end
      object edit2: TcxTextEdit
        Left = 139
        Top = 488
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.OnChange = edit1PropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        OnKeyDown = edit2KeyDown
        Width = 378
      end
      object cxButton8: TcxButton
        Left = 888
        Top = 0
        Width = 89
        Height = 37
        Caption = 'Actualizar Pedidos  Enviados'
        LookAndFeel.SkinName = 'SharpPlus'
        OptionsImage.ImageIndex = 333
        TabOrder = 4
        WordWrap = True
        OnClick = cxButton8Click
      end
      object Fforma: TcxRadioGroup
        Left = 128
        Top = 99
        Caption = 'Formato de Impresi'#243'n'
        Properties.Items = <
          item
            Caption = 'Ticket'
          end
          item
            Caption = '8.5 x 11'
          end>
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 5
        Visible = False
        OnClick = FformaClick
        Height = 57
        Width = 133
      end
      object Impresas: TcxGroupBox
        Left = 254
        Top = 55
        Caption = 'Consulta de Facturas Impresas'
        TabOrder = 6
        Visible = False
        Height = 381
        Width = 708
        object cxGrid2: TcxGrid
          Left = 3
          Top = 15
          Width = 702
          Height = 336
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'Sharp'
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGridDBTableView2DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsFacturasImpresas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = '# Factura'
              DataBinding.FieldName = 'NO_FACT'
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
              Width = 64
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA_FAC'
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
              Width = 75
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
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
              Width = 172
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Vendedor'
              DataBinding.FieldName = 'NOMBRES_EMP'
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
              Width = 170
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Total Pagado'
              DataBinding.FieldName = 'MONTOPAGO'
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
              Width = 98
            end
            object cxGridDBTableView2Column1: TcxGridDBColumn
              Caption = 'Condici'#243'n'
              DataBinding.FieldName = 'TIPO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
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
              Options.HorzSizing = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxTextEdit2: TcxTextEdit
          Left = 3
          Top = 351
          Align = alBottom
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = cxTextEdit2PropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 702
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cotizaciones'
      ImageIndex = 1
      object cxGrid4: TcxGrid
        Left = 147
        Top = 3
        Width = 878
        Height = 463
        TabOrder = 0
        LookAndFeel.SkinName = 'Sharp'
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = cxGridDBTableView3DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsCotizaciones
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = '# Factura'
            DataBinding.FieldName = 'NO_FACT'
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
            Width = 66
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA_FAC'
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
            Width = 88
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
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
            Width = 290
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NOMBRES_EMP'
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
            Width = 330
          end
          object Total: TcxGridDBColumn
            Caption = 'Total Pagado'
            DataBinding.FieldName = 'MONTOPAGO'
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
            Width = 95
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 4
        Top = 11
        Caption = 'Opciones'
        ParentBackground = False
        ParentColor = False
        Style.Color = 16053234
        TabOrder = 1
        Height = 457
        Width = 137
        object cxButton11: TcxButton
          Left = 9
          Top = 134
          Width = 123
          Height = 37
          Caption = 'Convertir Coizaci'#243'n en Factura'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 194
          TabOrder = 0
          WordWrap = True
          OnClick = cxButton11Click
        end
        object cxButton12: TcxButton
          Left = 9
          Top = 95
          Width = 123
          Height = 35
          Caption = 'Anular Facturas Emitidas Hoy'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 512
          TabOrder = 1
          WordWrap = True
          OnClick = cxButton4Click
        end
        object cxButton13: TcxButton
          Left = 9
          Top = 59
          Width = 123
          Height = 33
          Caption = 'Imprimir Copia de Cotizaci'#243'n'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 452
          TabOrder = 2
          WordWrap = True
          OnClick = cxButton13Click
        end
        object cxButton14: TcxButton
          Left = 9
          Top = 23
          Width = 123
          Height = 33
          Caption = '&Nueva Cotizaci'#243'n'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 647
          TabOrder = 3
          WordWrap = True
          OnClick = cxButton14Click
        end
        object cxButton16: TcxButton
          Left = 10
          Top = 175
          Width = 123
          Height = 37
          Caption = 'Modificar Facturas'
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 18
          TabOrder = 4
          WordWrap = True
          OnClick = cxButton16Click
        end
      end
      object cxButton15: TcxButton
        Left = 1020
        Top = 11
        Width = 101
        Height = 37
        Caption = 'Actualizar Cotizaciones'
        LookAndFeel.SkinName = 'SharpPlus'
        OptionsImage.ImageIndex = 333
        TabOrder = 2
        WordWrap = True
        OnClick = cxButton8Click
      end
    end
  end
  object cxGrid3: TcxGrid
    Left = 203
    Top = 116
    Width = 761
    Height = 277
    TabOrder = 3
    Visible = False
    object cxGrid3DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = DsDetalleFacturas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total ITEMS =,0'
          Kind = skCount
          FieldName = 'COD_ART'
          Column = cxGrid3DBTableView1ARTICULO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid3DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        Width = 119
      end
      object cxGrid3DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Productos'
        DataBinding.FieldName = 'ARTICULO'
      end
      object cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn
        Caption = 'Cant'
        DataBinding.FieldName = 'CANTIDAD'
        Width = 73
      end
      object cxGrid3DBTableView1UNIDAD: TcxGridDBColumn
        Caption = 'Und'
        DataBinding.FieldName = 'UNIDAD'
        Width = 87
      end
      object cxGrid3DBTableView1PRECIO: TcxGridDBColumn
        Caption = 'Precio'
        DataBinding.FieldName = 'PRECIO'
        Width = 96
      end
      object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        Width = 105
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object PanelDesc: TcxGroupBox
    Left = 279
    Top = 346
    Caption = 'Anular Factura'
    PanelStyle.BorderWidth = 2
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    TabOrder = 2
    Visible = False
    Height = 122
    Width = 264
    object Label17: TLabel
      Left = 26
      Top = 28
      Width = 104
      Height = 13
      Caption = 'Clave de Autorizacion'
    end
    object cxTextEdit1: TcxTextEdit
      Left = 25
      Top = 43
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = True
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 208
    end
    object cxButton3: TcxButton
      Left = 88
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Ok'
      LookAndFeel.SkinName = 'SharpPlus'
      OptionsImage.ImageIndex = 81
      TabOrder = 1
      OnClick = cxButton3Click
    end
  end
  object opBuscar: TcxGroupBox
    Left = 272
    Top = 68
    Caption = 'Buscar Facturas Emitidas'
    Style.LookAndFeel.SkinName = 'Silver'
    StyleDisabled.LookAndFeel.SkinName = 'Silver'
    TabOrder = 1
    Visible = False
    Height = 145
    Width = 449
    object op: TcxRadioGroup
      Left = 7
      Top = 21
      Properties.Items = <
        item
          Caption = '# Facturas'
        end
        item
          Caption = 'Clientes'
        end
        item
          Caption = 'Intervalos de Fecha'
        end
        item
          Caption = 'Mayor que Total de Facturas'
        end>
      ItemIndex = 1
      TabOrder = 0
      OnClick = opClick
      Height = 105
      Width = 165
    end
    object edit1: TcxTextEdit
      Left = 192
      Top = 64
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edit1PropertiesChange
      TabOrder = 1
      Width = 233
    end
    object label1: TcxLabel
      Left = 192
      Top = 48
      Caption = 'Introducir Nombre de Articulo'
    end
    object cxButton2: TcxButton
      Left = 243
      Top = 97
      Width = 97
      Height = 30
      Caption = '&Ok'
      OptionsImage.ImageIndex = 951
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object Panel1: TPanel
      Left = 178
      Top = 47
      Width = 249
      Height = 61
      TabOrder = 4
      Visible = False
      object Label2: TLabel
        Left = 17
        Top = 15
        Width = 59
        Height = 13
        Caption = 'Fecha Inicial'
      end
      object Label3: TLabel
        Left = 119
        Top = 15
        Width = 54
        Height = 13
        Caption = 'Fecha Final'
      end
      object inicio: TcxDateEdit
        Left = 18
        Top = 27
        TabOrder = 0
        Width = 95
      end
      object fechafinal: TcxDateEdit
        Left = 119
        Top = 27
        TabOrder = 1
        Width = 106
      end
    end
  end
  object facturasEmitidas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion  =:opcion2'
      'and a.condicion =:OPCION4'
      'AND A.ROTULO =:OPCION5'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    object facturasEmitidasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object facturasEmitidasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object facturasEmitidasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object facturasEmitidasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object facturasEmitidasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object facturasEmitidasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object facturasEmitidasMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object facturasEmitidasHORA: TTimeField
      FieldName = 'HORA'
    end
    object facturasEmitidasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object facturasEmitidasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object facturasEmitidasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object facturasEmitidasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object facturasEmitidasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object facturasEmitidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object facturasEmitidasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object facturasEmitidasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object facturasEmitidasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object facturasEmitidasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object facturasEmitidasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object facturasEmitidasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object facturasEmitidasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object facturasEmitidasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object facturasEmitidasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object facturasEmitidasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object facturasEmitidasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object facturasEmitidasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object facturasEmitidasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object facturasEmitidasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object facturasEmitidasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object facturasEmitidasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object facturasEmitidasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object facturasEmitidasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object facturasEmitidasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object facturasEmitidasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object facturasEmitidasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object facturasEmitidasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object facturasEmitidasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object facturasEmitidasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object facturasEmitidasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object facturasEmitidasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object facturasEmitidasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object facturasEmitidasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object facturasEmitidasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object facturasEmitidasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object facturasEmitidasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object facturasEmitidasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object facturasEmitidasFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object facturasEmitidasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object facturasEmitidasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object facturasEmitidasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object facturasEmitidasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object facturasEmitidasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object facturasEmitidasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object facturasEmitidasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object facturasEmitidasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object facturasEmitidasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object facturasEmitidasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
  end
  object DetalleFacturas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'where a.masterid =:master')
    Params = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    Left = 240
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    object DetalleFacturasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object DetalleFacturasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object DetalleFacturasMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object DetalleFacturasCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object DetalleFacturasPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DetalleFacturasIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object DetalleFacturasITBS: TFloatField
      FieldName = 'ITBS'
    end
    object DetalleFacturasITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object DetalleFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object DetalleFacturasCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object DetalleFacturasUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object DetalleFacturasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object DetalleFacturasLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object DetalleFacturasARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object DetalleFacturasARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DetalleFacturasUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
  end
  object DsDetalleFacturas: TDataSource
    DataSet = DetalleFacturas
    Left = 400
    Top = 352
  end
  object DsFacturasEmitidas: TDataSource
    DataSet = facturasEmitidas
    Left = 168
    Top = 208
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 440
    Top = 65528
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Anular: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 432
    Top = 136
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 568
    Top = 176
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_B,' +
        ' b.pRecio_d, sum(a.entrada - a.salida) Existencia from minventar' +
        'io a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'where (b.cod_cat <> 4)'
      
        'group by a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_' +
        'B, b.pRecio_d')
    Params = <>
    Left = 160
    Top = 312
    object ZExistenciaIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object ZExistenciaPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object ZExistenciaPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object ZExistenciaPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object ZExistenciaEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
    end
  end
  object FacturasImpresas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion  <>:opcion2'
      'and a.condicion =:OPCION4'
      'AND A.ROTULO =:OPCION5'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    object FacturasImpresasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FacturasImpresasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FacturasImpresasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FacturasImpresasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FacturasImpresasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FacturasImpresasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FacturasImpresasMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object FacturasImpresasHORA: TTimeField
      FieldName = 'HORA'
    end
    object FacturasImpresasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FacturasImpresasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FacturasImpresasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object FacturasImpresasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FacturasImpresasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FacturasImpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FacturasImpresasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FacturasImpresasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FacturasImpresasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FacturasImpresasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object FacturasImpresasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FacturasImpresasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FacturasImpresasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FacturasImpresasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FacturasImpresasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FacturasImpresasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FacturasImpresasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FacturasImpresasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FacturasImpresasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FacturasImpresasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FacturasImpresasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object FacturasImpresasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FacturasImpresasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FacturasImpresasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FacturasImpresasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FacturasImpresasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FacturasImpresasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FacturasImpresasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FacturasImpresasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FacturasImpresasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FacturasImpresasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FacturasImpresasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FacturasImpresasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FacturasImpresasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FacturasImpresasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FacturasImpresasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FacturasImpresasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FacturasImpresasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FacturasImpresasFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object FacturasImpresasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FacturasImpresasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FacturasImpresasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object FacturasImpresasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object FacturasImpresasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object FacturasImpresasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object FacturasImpresasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FacturasImpresasPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object FacturasImpresasNC: TIntegerField
      FieldName = 'NC'
    end
    object FacturasImpresasCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FacturasImpresasCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object FacturasImpresasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object FacturasImpresasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object FacturasImpresasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object series: TfrxDBDataset
    UserName = 'Series'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_SERIES=COD_SERIES'
      'COD_ARTI=COD_ARTI'
      'SERIES=SERIES'
      'ESTADO=ESTADO'
      'NO_FACT=NO_FACT')
    DataSet = datos.Series
    BCDToCurrency = False
    Left = 600
    Top = 184
  end
  object combo: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_MANCOMBO=COD_MANCOMBO'
      'MACOMBOID=MACOMBOID'
      'COD_ART=COD_ART'
      'PRECIO=PRECIO'
      'PRECIO2=PRECIO2'
      'PRECIO3=PRECIO3'
      'ARTICULO=ARTICULO'
      'COSTO=COSTO'
      'COSTO_PR=COSTO_PR')
    BCDToCurrency = False
    Left = 504
    Top = 184
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
    Left = 552
    Top = 208
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'FECHA_FAC=FECHA_FAC'
      'TIPO=TIPO'
      'COD_CLIENT=COD_CLIENT'
      'COD_EMP=COD_EMP'
      'NO_FACT1=NO_FACT1'
      'MONTO=MONTO'
      'POGXITBS=POGXITBS'
      'HORA=HORA'
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
      'COBRADO=COBRADO'
      'QUEES=QUEES'
      'USUARIOID=USUARIOID'
      'CLIENTEID=CLIENTEID'
      'CLIENTENOMBRE=CLIENTENOMBRE'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIENDAID=TIENDAID'
      'CONDICIONVENTA=CONDICIONVENTA'
      'PINREFERIDO=PINREFERIDO'
      'NC=NC'
      'CODVEN=CODVEN'
      'CAJEROID=CAJEROID'
      'NOMBRECLIENTE_PRN=NOMBRECLIENTE_PRN')
    DataSet = datos.FbqMaster_Fact
    BCDToCurrency = False
    Left = 440
    Top = 264
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'NO_FACT1=NO_FACT1'
      'MASTERID=MASTERID'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPUESTO=IMPUESTO'
      'ITBS=ITBS'
      'ITBIS2=ITBIS2'
      'COD_ART=COD_ART'
      'UNID=UNID'
      'COMBO=COMBO'
      'LINEA=LINEA'
      'ARTICULOID=ARTICULOID'
      'ARTICULO=ARTICULO'
      'TOTAL=TOTAL'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'TITULOPRN=TITULOPRN'
      'UNIDADID=UNIDADID'
      'ITBS_ART=ITBS_ART'
      'UNIDAD=UNIDAD'
      'EX=EX')
    DataSet = datos.Zdetalle
    BCDToCurrency = False
    Left = 600
    Top = 224
  end
  object rECIBO1: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41440.780885324100000000
    ReportOptions.LastChange = 41591.934998055600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 200
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = series
        DataSetName = 'Series'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 10.160000000000000000
      BottomMargin = 5.080000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Height = 187.077180000000000000
        ParentFont = False
        Top = 19.200000000000000000
        Width = 718.821251640000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.909030000000000000
          Top = 118.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.600000000000000000
          Top = 95.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object titulos: TfrxMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Width = 422.400000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 19.200000000000000000
          Width = 200.000000000000000000
          Height = 110.000000000000000000
          AutoSize = True
          DataField = 'LOGO'
          DataSet = Config
          DataSetName = 'configuracion'
          Frame.Typ = []
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 99.000000000000000000
          Top = 74.200000000000000000
          Width = 220.800000000000000000
          Height = 57.600000000000000000
          DataField = 'ROTULO_ESP'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."ROTULO_ESP"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 98.600000000000000000
          Width = 211.200000000000000000
          Height = 67.200000000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object frxDBDataset1TELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 147.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object frxDBDataset1EMAIL: TfrxMemoView
          AllowVectorExport = True
          Left = 7.600000000000000000
          Top = 128.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'EMAIL'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMAIL"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 164.000000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 10.000000000000000000
          Top = 148.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 12.600000000000000000
          Top = 164.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC.:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 135.800000000000000000
        Top = 259.200000000000000000
        Width = 718.821251640000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 201.600000000000000000
          Top = 9.600000000000000000
          Width = 415.370130000000000000
          Height = 109.077180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -96
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COPIA')
          ParentFont = False
          SuppressRepeated = True
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 106.000000000000000000
          Width = 729.600000000000000000
          Height = 28.800000000000000000
          Frame.Color = clNone
          Frame.Typ = []
        end
        object frxDBDataset1NO_FACT1: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 6.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NO_FACT1'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 6.200000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '# Factura:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 27.000000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 27.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 46.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 46.800000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condici'#243'n :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 15.800000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 64.600000000000000000
          Width = 182.400000000000000000
          Height = 28.800000000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 64.600000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cajero:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 35.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 35.000000000000000000
          Width = 31.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC      :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Top = 83.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 83.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '# Comprobante :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 110.000000000000000000
          Width = 60.170130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 73.400000000000000000
          Top = 110.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBs')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 604.800000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 135.800000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 316.800000000000000000
          Top = 111.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 381.000000000000000000
          Top = 110.600000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 412.800000000000000000
        Width = 718.821251640000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = detalle
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
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 72.200000000000000000
          Width = 288.000000000000000000
          Height = 19.200000000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset2ITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 508.800000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."ITBS"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 585.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 321.800000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CANTIDAD"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 378.800000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          DataField = 'UNIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."UNIDAD"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 349.077180000000000000
        Top = 528.000000000000000000
        Width = 718.821251640000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 8.200000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 16.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venta')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 38.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 59.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 80.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total a Pagar')
          ParentFont = False
        end
        object frxDBDataset1MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 82.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."MONTOPAGO"]')
          ParentFont = False
        end
        object frxDBDataset1POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 39.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset1DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 60.600000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset1MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 546.200000000000000000
          Top = 16.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 121.800000000000000000
          Top = 19.200000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 19.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cabtidad de Items')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 508.800000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Elaborado por:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = -48.000000000000000000
          Top = 67.200000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = -47.000000000000000000
          Top = 82.538590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object frxDBDataset2DEVOLUCION: TfrxMemoView
          AllowVectorExport = True
          Left = 78.165430000000000000
          Top = 82.538590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DEVOLUCION"]')
          ParentFont = False
        end
        object frxDBDataset2EFECTIVO: TfrxMemoView
          AllowVectorExport = True
          Left = 81.944960000000000000
          Top = 67.420470000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."EFECTIVO"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 154.200000000000000000
          Top = 134.400000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 134.400000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'ESTADOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTADOPAGO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 892.800000000000000000
        Width = 718.821251640000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 403.200000000000000000
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact V. 3.05 :  Iasa Soft Developer')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Todos los Derechos Reservados')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 451.200000000000000000
        Width = 718.821251640000000000
        DataSet = series
        DataSetName = 'Series'
        PrintIfDetailEmpty = True
        RowCount = 0
        object SeriesSERIES: TfrxMemoView
          AllowVectorExport = True
          Left = 105.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'SERIES'
          DataSet = series
          DataSetName = 'Series'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Series."SERIES"]')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 38.400000000000000000
        Top = 255.800000000000000000
        Width = 117.770130000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Facturado a:')
        ParentFont = False
      end
    end
  end
  object Recibo2: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'frxDBDataset2'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41591.947883900500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 264
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = Null
      end
      item
        Name = 'cajero'
        Value = Null
      end
      item
        Name = 'NCF_TITULO'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 210.058000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 33.236240000000000000
        Top = 403.200000000000000000
        Width = 288.000186000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 20.636240000000000000
          Width = 368.655350000000000000
          Height = 15.118120000000000000
          DataField = 'ARTICULO'
          DataSet = detalle
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
        object frxDBDataset1CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 29.708720000000000000
          Top = 13.897650000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'UNIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."UNIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 62.524490000000000000
          Top = 14.338590000000000000
          Width = 54.652010000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 156.376500000000000000
          Top = 13.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset2EX: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Width = 19.200000000000000000
          Height = 19.200000000000000000
          DataField = 'EX'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."EX"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 112.200000000000000000
          Top = 13.600000000000000000
          Width = 54.652010000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."ITBS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 14.600000000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CANTIDAD"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 384.000000000000000000
        Width = 288.000186000000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 257.612740000000000000
        Top = 489.600000000000000000
        Width = 288.000186000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999910000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 134.960730000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 134.960730000000000000
          Top = 22.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 134.960730000000000000
          Top = 59.052010000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 9.795300000000000000
          Top = 5.779530000000000000
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
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 11.395300000000000000
          Top = 22.415770000000000000
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
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 8.795300000000000000
          Top = 58.713420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 8.795300000000000000
          Top = 78.811070000000000000
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
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 9.795300000000000000
          Top = 94.149660000000000000
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
            'Cambio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 119.385900000000000000
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
          Left = 128.504020000000000000
          Top = 119.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 197.976500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2DEVOLUCION: TfrxMemoView
          AllowVectorExport = True
          Left = 134.960730000000000000
          Top = 94.149660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DEVOLUCION"]')
          ParentFont = False
        end
        object frxDBDataset2EFECTIVO: TfrxMemoView
          AllowVectorExport = True
          Left = 138.740260000000000000
          Top = 79.031540000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."EFECTIVO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 10.595300000000000000
          Top = 43.436240000000000000
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
            'ITBS')
          ParentFont = False
        end
        object frxDBDataset2POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 134.960730000000000000
          Top = 42.656710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 115.800000000000000000
          Top = 175.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 175.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'ESTADOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTADOPAGO"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 306.110390000000000000
        Top = 19.200000000000000000
        Width = 288.000186000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 94.267780000000000000
          Top = 132.929190000000000000
          Width = 231.231540000000000000
          Height = 26.456710000000000000
          DataField = 'NO_FACT'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 8.118120000000000000
          Top = 130.929190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 94.267780000000000000
          Top = 151.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 8.118120000000000000
          Top = 148.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha           :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.897650000000000000
          Top = 167.063080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 168.063080000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 5.897650000000000000
          Top = 186.960730000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object frxDBDataset2VENDEDOR: TfrxMemoView
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 185.960730000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 5.897650000000000000
          Top = 203.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 218.535560000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 4.897650000000000000
          Top = 218.535560000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 285.992270000000000000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Style = fsAltDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 4.677180000000000000
          Top = 286.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 129.047310000000000000
          Top = 287.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 196.453680000000000000
          Top = 287.212740000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 91.200000000000000000
          Top = 286.400000000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UNID')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 305.600000000000000000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Style = fsAltDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 168.400000000000000000
          Top = 286.400000000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Itbs')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Top = 203.000000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[cajero]')
        end
        object frxDBDataset1NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Top = 241.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 23.000000000000000000
          Top = 243.400000000000000000
          Width = 72.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' NCF :')
          ParentFont = False
        end
        object NCF_TITULO: TfrxMemoView
          AllowVectorExport = True
          Top = 263.200000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[NCF_TITULO]')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 5.600000000000000000
          Width = 182.400000000000000000
          Height = 19.200000000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Top = 39.000000000000000000
          Width = 249.600000000000000000
          Height = 48.000000000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object titulos: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 100.400000000000000000
          Width = 201.600000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 72.800000000000000000
          Top = 69.200000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
        end
        object configuracionEMAIL: TfrxMemoView
          AllowVectorExport = True
          Left = 3.600000000000000000
          Top = 83.400000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'EMAIL'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."EMAIL"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 22.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = -9.600000000000000000
          Top = 23.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Rnc:')
          ParentFont = False
        end
      end
    end
  end
  object CotizacionEmitidas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion =:opcion2'
      'and a.condicion =:OPCION4'
      'AND A.ROTULO =:OPCION5'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    Left = 400
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end>
    object CotizacionEmitidasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object CotizacionEmitidasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object CotizacionEmitidasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CotizacionEmitidasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object CotizacionEmitidasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object CotizacionEmitidasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object CotizacionEmitidasMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object CotizacionEmitidasHORA: TTimeField
      FieldName = 'HORA'
    end
    object CotizacionEmitidasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
      currency = True
    end
    object CotizacionEmitidasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object CotizacionEmitidasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object CotizacionEmitidasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object CotizacionEmitidasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object CotizacionEmitidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CotizacionEmitidasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object CotizacionEmitidasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object CotizacionEmitidasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object CotizacionEmitidasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object CotizacionEmitidasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object CotizacionEmitidasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object CotizacionEmitidasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object CotizacionEmitidasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object CotizacionEmitidasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      currency = True
    end
    object CotizacionEmitidasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object CotizacionEmitidasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object CotizacionEmitidasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object CotizacionEmitidasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object CotizacionEmitidasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object CotizacionEmitidasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CotizacionEmitidasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object CotizacionEmitidasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object CotizacionEmitidasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object CotizacionEmitidasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object CotizacionEmitidasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object CotizacionEmitidasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object CotizacionEmitidasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object CotizacionEmitidasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object CotizacionEmitidasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object CotizacionEmitidasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object CotizacionEmitidasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object CotizacionEmitidasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object CotizacionEmitidasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CotizacionEmitidasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object CotizacionEmitidasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object CotizacionEmitidasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object CotizacionEmitidasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object CotizacionEmitidasFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object CotizacionEmitidasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object CotizacionEmitidasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object CotizacionEmitidasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object CotizacionEmitidasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object CotizacionEmitidasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object CotizacionEmitidasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object CotizacionEmitidasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object CotizacionEmitidasPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object CotizacionEmitidasNC: TIntegerField
      FieldName = 'NC'
    end
    object CotizacionEmitidasCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object CotizacionEmitidasCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object CotizacionEmitidasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object CotizacionEmitidasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object CotizacionEmitidasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object DsCotizaciones: TDataSource
    DataSet = CotizacionEmitidas
    Left = 488
    Top = 248
  end
  object cotizaprn: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41440.780885324100000000
    ReportOptions.LastChange = 41588.732760092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 192
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = series
        DataSetName = 'Series'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 10.160000000000000000
      BottomMargin = 5.080000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Height = 187.077180000000000000
        ParentFont = False
        Top = 19.200000000000000000
        Width = 718.821251640000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.909030000000000000
          Top = 118.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.600000000000000000
          Top = 95.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object titulos: TfrxMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Width = 422.400000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 19.200000000000000000
          Width = 200.000000000000000000
          Height = 110.000000000000000000
          AutoSize = True
          DataField = 'LOGO'
          DataSet = Config
          DataSetName = 'configuracion'
          Frame.Typ = []
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 99.000000000000000000
          Top = 74.200000000000000000
          Width = 220.800000000000000000
          Height = 57.600000000000000000
          DataField = 'ROTULO_ESP'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."ROTULO_ESP"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 98.600000000000000000
          Width = 211.200000000000000000
          Height = 67.200000000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object frxDBDataset1TELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 147.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object frxDBDataset1EMAIL: TfrxMemoView
          AllowVectorExport = True
          Left = 7.600000000000000000
          Top = 128.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'EMAIL'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMAIL"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 164.000000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 10.000000000000000000
          Top = 148.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 12.600000000000000000
          Top = 164.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC.:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 135.800000000000000000
        Top = 259.200000000000000000
        Width = 718.821251640000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 643.200000000000000000
          Height = 105.600000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -96
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COPIA')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 106.000000000000000000
          Width = 729.600000000000000000
          Height = 28.800000000000000000
          Frame.Color = clNone
          Frame.Typ = []
        end
        object frxDBDataset1NO_FACT1: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 6.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NO_FACT1'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 6.200000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '# Factura:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 27.000000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 27.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 46.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 46.800000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condici'#243'n :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 15.800000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          DataField = 'CLIENTENOMBRE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTENOMBRE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 64.600000000000000000
          Width = 182.400000000000000000
          Height = 28.800000000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 435.600000000000000000
          Top = 64.600000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cajero:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 35.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 35.000000000000000000
          Width = 31.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC      :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Top = 83.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 83.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '# Comprobante :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 110.000000000000000000
          Width = 60.170130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 73.400000000000000000
          Top = 110.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 518.400000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 604.800000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 135.800000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 345.600000000000000000
          Top = 111.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 412.800000000000000000
        Width = 718.821251640000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = detalle
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
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 72.200000000000000000
          Width = 288.000000000000000000
          Height = 19.200000000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset2ITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 508.800000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."ITBS"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 585.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CANTIDAD"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 349.077180000000000000
        Top = 528.000000000000000000
        Width = 718.821251640000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 8.200000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 16.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venta')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 38.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBs')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 59.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 422.400000000000000000
          Top = 80.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total a Pagar')
          ParentFont = False
        end
        object frxDBDataset1MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 82.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."MONTOPAGO"]')
          ParentFont = False
        end
        object frxDBDataset1POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 39.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset1DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 60.600000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset1MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 546.200000000000000000
          Top = 16.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 121.800000000000000000
          Top = 19.200000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 19.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cabtidad de Items')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 508.800000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Elaborado por:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 892.800000000000000000
        Width = 718.821251640000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 403.200000000000000000
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact V. 3.05 :  Iasa Soft Developer')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Todos los Derechos Reservados')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 451.200000000000000000
        Width = 718.821251640000000000
        DataSet = series
        DataSetName = 'Series'
        PrintIfDetailEmpty = True
        RowCount = 0
        object SeriesSERIES: TfrxMemoView
          AllowVectorExport = True
          Left = 105.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'SERIES'
          DataSet = series
          DataSetName = 'Series'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Series."SERIES"]')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 38.400000000000000000
        Top = 255.800000000000000000
        Width = 117.770130000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Facturado a:')
        ParentFont = False
      end
    end
  end
  object DsFacturasImpresas: TDataSource
    DataSet = FacturasImpresas
    Left = 376
    Top = 192
  end
  object actualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 664
    Top = 48
  end
end
