object Form138: TForm138
  Left = 0
  Top = 0
  Caption = 'Form138'
  ClientHeight = 653
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1028
    Height = 653
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 384
    ExplicitTop = 152
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1CardView1: TcxGridCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
      object cxGrid1CardView1Row1: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
    end
    object cxGrid1DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsPedidos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.CardSizing = False
      OptionsCustomize.RowExpanding = False
      OptionsCustomize.RowFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CardAutoWidth = True
      OptionsView.CardIndent = 10
      OptionsView.SeparatorColor = clWhite
      OptionsView.SeparatorWidth = 1
      object cxGrid1DBCardView1Row1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'NO_ORDEN'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row2: TcxGridDBCardViewRow
        DataBinding.FieldName = 'CLIENTE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row3: TcxGridDBCardViewRow
        PropertiesClassName = 'TdxBarCodeProperties'
        Properties.BarCodeSymbologyClassName = 'TdxBarCodeEAN13Symbology'
        Options.ShowEditButtons = isebAlways
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row4: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row5: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row6: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Row7: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
    end
    object cxGrid1DBCardView2: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
      object cxGrid1DBCardView2Row1: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView2Row2: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView2Row3: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView2Row4: TcxGridDBCardViewRow
        Position.BeginsLayer = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
      Options.DetailFrameColor = clBackground
      Options.DetailFrameWidth = 2
    end
  end
  object QPedidos: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select * from ENVIOCOCINA')
    Params = <>
    Left = 552
    Top = 328
    object QPedidosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QPedidosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QPedidosNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object QPedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object QPedidosCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object QPedidosORDEN: TWideMemoField
      FieldName = 'ORDEN'
      BlobType = ftWideMemo
    end
    object QPedidosTIEMPO: TIntegerField
      FieldName = 'TIEMPO'
    end
    object QPedidosTIEMPO_RESTANTA: TTimeField
      FieldName = 'TIEMPO_RESTANTA'
    end
    object QPedidosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QPedidosMESERO: TWideStringField
      FieldName = 'MESERO'
      Size = 50
    end
  end
  object DsPedidos: TDataSource
    DataSet = QPedidos
    Left = 608
    Top = 336
  end
end
