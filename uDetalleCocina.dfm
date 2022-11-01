object FdetalleCocina1: TFdetalleCocina1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Detalle de la Orden'
  ClientHeight = 654
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 72
    Width = 513
    Height = 582
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 36
    ExplicitHeight = 608
    object Label58: TLabel
      Left = 42
      Top = 503
      Width = 51
      Height = 16
      Caption = 'Preparado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label59: TLabel
      Left = 133
      Top = 503
      Width = 61
      Height = 16
      Caption = 'Sin Preparar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 511
      Height = 488
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = dsDPedidos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1PRODUCTOS: TcxGridDBColumn
          Caption = 'Articulos / Productos'
          DataBinding.FieldName = 'PRODUCTOS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 401
        end
        object cxGrid1DBTableView1CANT: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'CANT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 87
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'ESTADO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel5: TPanel
      Left = 18
      Top = 501
      Width = 18
      Height = 18
      Color = 12295752
      ParentBackground = False
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 109
      Top = 501
      Width = 18
      Height = 18
      Color = 14811129
      ParentBackground = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 513
    Top = 72
    Width = 425
    Height = 582
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = 529
    ExplicitTop = 42
    ExplicitHeight = 608
    object cxGrid2: TcxGrid
      Left = 8
      Top = 8
      Width = 409
      Height = 561
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsIngredientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1INGREDIENTES: TcxGridDBColumn
          Caption = 'Ingredientes'
          DataBinding.FieldName = 'INGREDIENTES'
          Width = 248
        end
        object cxGrid2DBTableView1SELECCION: TcxGridDBColumn
          DataBinding.FieldName = 'SELECCION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 61
          IsCaptionAssigned = True
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 857
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 269
      Height = 33
      Margins.Left = 5
      Caption = 'Pedidos en Cocina|'
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
      Left = 303
      Top = 6
      Width = 142
      Height = 21
      Margins.Left = 5
      Caption = 'Detalle del Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 944
    Height = 36
    Align = alTop
    TabOrder = 3
    ExplicitLeft = -8
    ExplicitWidth = 970
    object Label1: TLabel
      AlignWithMargins = True
      Left = 26
      Top = 6
      Width = 88
      Height = 19
      Margins.Left = 5
      Caption = 'NO. Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 257
      Top = 6
      Width = 55
      Height = 19
      Margins.Left = 5
      Caption = 'Mesero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 529
      Top = 6
      Width = 54
      Height = 19
      Margins.Left = 5
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object cxDBLabel1: TcxDBLabel
      Left = 120
      Top = 6
      DataBinding.DataField = 'NO_ORDEN'
      DataBinding.DataSource = fPedidosCocina.DsPedidos
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Century Gothic'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Height = 21
      Width = 57
    end
    object cxDBLabel2: TcxDBLabel
      Left = 332
      Top = 6
      DataBinding.DataField = 'MESERO'
      DataBinding.DataSource = fPedidosCocina.DsPedidos
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = 'Century Gothic'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Height = 21
      Width = 189
    end
    object cxDBLabel3: TcxDBLabel
      Left = 604
      Top = 6
      DataBinding.DataField = 'CLIENTE'
      DataBinding.DataSource = fPedidosCocina.DsPedidos
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 33023
      Style.Font.Height = -12
      Style.Font.Name = 'Century Gothic'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Height = 21
      Width = 293
    end
  end
  object QDpedidos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from D_ENVIOCOCINA')
    Params = <>
    Left = 632
    Top = 300
    object QDpedidosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QDpedidosNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object QDpedidosPRODUCTOS: TWideMemoField
      FieldName = 'PRODUCTOS'
      BlobType = ftWideMemo
    end
    object QDpedidosCANT: TIntegerField
      FieldName = 'CANT'
    end
    object QDpedidosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QDpedidosIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
      ReadOnly = True
    end
  end
  object dsDPedidos: TDataSource
    DataSet = QDpedidos
    Left = 248
    Top = 180
  end
  object QIngredientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.ingredientes from d_ingredientes a'
      'left Join ingredientes b on a.iddetalle = b.id')
    Params = <>
    Left = 537
    Top = 128
    object QIngredientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QIngredientesIDARTICULOS: TIntegerField
      FieldName = 'IDARTICULOS'
    end
    object QIngredientesIDDETALLE: TIntegerField
      FieldName = 'IDDETALLE'
    end
    object QIngredientesIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object QIngredientesOP: TIntegerField
      FieldName = 'OP'
    end
    object QIngredientesSELECCION: TWideStringField
      FieldName = 'SELECCION'
      Size = 4
    end
    object QIngredientesINGREDIENTES: TWideStringField
      FieldName = 'INGREDIENTES'
      Size = 40
    end
  end
  object DsIngredientes: TDataSource
    DataSet = QIngredientes
    Left = 649
    Top = 152
  end
  object Qupdate: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 400
    Top = 288
  end
end
