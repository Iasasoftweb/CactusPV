object FrmBuscarCompras: TFrmBuscarCompras
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Buscar Compras Realizadas'
  ClientHeight = 506
  ClientWidth = 889
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 422
    Width = 881
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 18
      Width = 877
      Height = 402
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 396
      ClientRectLeft = 3
      ClientRectRight = 871
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Compras Guardadas Sin Procesar'
        ImageIndex = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 868
          Height = 370
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid3DBTableView1DblClick
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
            DataController.DataSource = DsqCompra
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = 'No Data'
            OptionsView.CellTextMaxLineCount = 5
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            Preview.AutoHeight = False
            object cxGrid3DBTableView1FECHA: TcxGridDBColumn
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
              Width = 171
            end
            object cxGrid3DBTableView1NOMBRE_PRO: TcxGridDBColumn
              Caption = 'Proveedor'
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
              Width = 245
            end
            object cxGrid3DBTableView1NOFACT: TcxGridDBColumn
              Caption = '# Factura'
              DataBinding.FieldName = 'NOFACT'
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
              Width = 127
            end
            object cxGrid3DBTableView1Column1: TcxGridDBColumn
              Caption = 'Monto Factura'
              DataBinding.FieldName = 'MONTOFACT'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 119
            end
            object cxGrid3DBTableView1Column2: TcxGridDBColumn
              Caption = 'Monto Pagado'
              DataBinding.FieldName = 'MONTOPAGO'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 101
            end
            object cxGrid3DBTableView1Column3: TcxGridDBColumn
              Caption = 'Monto Pendiente'
              DataBinding.FieldName = 'MONTOPEND'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 90
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Compras Procesadas'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 868
          Height = 370
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid3DBTableView1DblClick
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
            DataController.DataSource = DsqCompra
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = 'No Data'
            OptionsView.CellTextMaxLineCount = 5
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            Preview.AutoHeight = False
            object cxGridDBColumn1: TcxGridDBColumn
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
              Width = 171
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Proveedor'
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
              Width = 245
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = '# Factura'
              DataBinding.FieldName = 'NOFACT'
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
              Width = 127
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Monto Factura'
              DataBinding.FieldName = 'MONTOFACT'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 119
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Monto Pagado'
              DataBinding.FieldName = 'MONTOPAGO'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 101
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Monto Pendiente'
              DataBinding.FieldName = 'MONTOPEND'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Width = 90
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 422
    Align = alBottom
    Caption = 'Buscar...'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 84
    Width = 889
    object cxButton7: TcxButton
      Left = 667
      Top = 32
      Width = 102
      Height = 30
      Caption = '&Ok'
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 951
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 0
      OnClick = cxButton7Click
    end
    object op: TcxRadioGroup
      Left = 3
      Top = 19
      Alignment = alCenterCenter
      Ctl3D = False
      ParentCtl3D = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Por Proveedor'
        end
        item
          Caption = 'Por Fecha'
        end
        item
          Caption = '# Factura'
        end>
      ItemIndex = 0
      Style.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleDisabled.LookAndFeel.SkinName = 'VisualStudio2013Light'
      TabOrder = 1
      OnClick = opClick
      Height = 54
      Width = 318
    end
    object cxTextEdit1: TcxTextEdit
      Left = 349
      Top = 49
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 160
    end
    object Label1: TcxLabel
      Left = 349
      Top = 29
      Caption = 'Introducir Nombre de Articulo'
    end
    object Panel1: TPanel
      Left = 327
      Top = 24
      Width = 314
      Height = 46
      TabOrder = 4
      Visible = False
      object Label16: TLabel
        Left = 12
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Fecha Inicial'
      end
      object Label17: TLabel
        Left = 159
        Top = 5
        Width = 54
        Height = 13
        Caption = 'Fecha Final'
      end
      object inicio: TcxDateEdit
        Left = 10
        Top = 19
        TabOrder = 0
        Width = 135
      end
      object fechafinal: TcxDateEdit
        Left = 159
        Top = 20
        TabOrder = 1
        Width = 130
      end
    end
  end
  object DsqCompra: TDataSource
    DataSet = QCompras
    Left = 232
    Top = 200
  end
  object QCompras: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select  a.*, c.nombres_emp, e.descripcion from master_ajuste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join fabricantes e On a.provid = e.COD'
      'Where a.condicion ='#39'Compra'#39)
    Params = <>
    Left = 176
    Top = 192
    object QComprasNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object QComprasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QComprasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QComprasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object QComprasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QComprasPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object QComprasNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object QComprasFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QComprasPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object QComprasMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
    end
    object QComprasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object QComprasMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
    end
    object QComprasESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QComprasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QComprasDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
  end
end
