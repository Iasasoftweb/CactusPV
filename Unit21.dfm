object FrmFact: TFrmFact
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Facturacion'
  ClientHeight = 538
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 119
    Width = 1020
    Height = 419
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Tab_SinFact
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    LookAndFeel.SkinName = 'Seven'
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 413
    ClientRectLeft = 2
    ClientRectRight = 1014
    ClientRectTop = 26
    object Tab_Facturado: TcxTabSheet
      Caption = 'Facturado'
      ImageIndex = 755
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 387
        Align = alClient
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 19
          Top = 40
          Width = 1013
          Height = 182
          TabOrder = 0
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
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 105
            end
            object cxGridDBTableView1FECHA_FAC: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA_FAC'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 110
            end
            object cxGridDBTableView1CLIENTENOMBRE: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'CLIENTENOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 321
            end
            object cxGridDBTableView1NOMBRES_EMP: TcxGridDBColumn
              Caption = 'Cajero'
              DataBinding.FieldName = 'NOMBRES_EMP'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 247
            end
            object cxGridDBTableView1MONTOPAGO: TcxGridDBColumn
              Caption = 'Total Pagado'
              DataBinding.FieldName = 'MONTOPAGO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 210
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cxGrid3: TcxGrid
          Left = 19
          Top = 270
          Width = 1013
          Height = 200
          TabOrder = 1
          LookAndFeel.SkinName = 'Sharp'
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsDetalleFacturas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1COD_ART: TcxGridDBColumn
              Caption = 'Codigo'
              DataBinding.FieldName = 'COD_ART'
              HeaderAlignmentHorz = taCenter
              MinWidth = 56
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 56
            end
            object cxGrid3DBTableView1ARTICULO: TcxGridDBColumn
              Caption = 'Articulo'
              DataBinding.FieldName = 'ARTICULO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 211
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 211
            end
            object cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn
              Caption = 'Cant'
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              MinWidth = 44
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 44
            end
            object cxGrid3DBTableView1PRECIO: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'PRECIO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 82
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 82
            end
            object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              MinWidth = 89
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 89
            end
            object cxGrid3DBTableView1COMBO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'COMBO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 78
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 78
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutLookAndFeelException = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group4
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Facturas Emitidas'
          SizeOptions.AssignedValues = [sovSizableVert]
          SizeOptions.SizableVert = True
          SizeOptions.Height = 198
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          ItemControlAreaAlignment = catOwn
          Index = 0
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Detalle de Facturas'
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          Index = 1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          CaptionOptions.Text = 'cxGrid3'
          CaptionOptions.Visible = False
          Control = cxGrid3
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object Tab_SinFact: TcxTabSheet
      Caption = 'Facturas a Cr'#233'ditos'
      ImageIndex = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 387
        Align = alClient
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 19
          Top = 40
          Width = 1013
          Height = 182
          TabOrder = 0
          LookAndFeel.SkinName = 'Sharp'
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsFacturasEmitidas
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
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 105
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA_FAC'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 110
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'CLIENTENOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 321
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Cajero'
              DataBinding.FieldName = 'NOMBRES_EMP'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 247
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Total Pagado'
              DataBinding.FieldName = 'MONTOPAGO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 210
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxGrid4: TcxGrid
          Left = 19
          Top = 270
          Width = 1013
          Height = 200
          TabOrder = 1
          LookAndFeel.SkinName = 'Sharp'
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsDetalleFacturas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Codigo'
              DataBinding.FieldName = 'COD_ART'
              HeaderAlignmentHorz = taCenter
              MinWidth = 56
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 56
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Articulo'
              DataBinding.FieldName = 'ARTICULO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 211
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 211
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Cant'
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              MinWidth = 44
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 44
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'PRECIO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 82
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 82
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              MinWidth = 89
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 89
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'COMBO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 78
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Focusing = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Width = 78
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutLookAndFeelException = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup3
          Control = cxGrid2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = dxLayoutGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Facturas Emitidas'
          SizeOptions.AssignedValues = [sovSizableVert]
          SizeOptions.SizableVert = True
          SizeOptions.Height = 198
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          ItemControlAreaAlignment = catOwn
          Index = 0
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Parent = dxLayoutGroup2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Detalle de Facturas'
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'cxGrid3'
          CaptionOptions.Visible = False
          Control = cxGrid4
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object MainRibbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1020
    Height = 119
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ApplicationButton.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      20000000000000100000120B0000120B00000000000000000000FDFDFD00F6F6
      F600EDEDED00E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900EEEEEE00F9F9F900FFFFFF00FFFFFF00FFFFFF00F8F8F800E1E1
      E100C6C6C600BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00CDCDCD00EEEEEE00FFFFFF00FFFFFF00FFFFFF00F2F2F200A2AD
      B900385B84003456800032547E0032537D0032537D0032537D0032547D003254
      7E0032547E0032547E0032547E0032547E0032547E0032547E0032547E003254
      7E0032547E0032547E0032547E0032547E0032547E0032547E0032547E003355
      7E0035578000385B8300EBEBEC00FFFFFF00FFFFFF00FFFFFF00EDEDED007388
      9F0032557F0091D8ED008BD0E80089CFE50089CEE50088CEE50088CDE50087CD
      E40087CDE40087CBE40086CBE30086CAE30086CAE30085C9E30085C9E20083C8
      E20083C8E20083C6E10082C6E10082C5E10081C5E10081C4DF0081C4E00083C6
      E20084C5E0005E8EAF00F6F6F600FFFFFF00FFFFFF00FFFFFF00E9E9E9004464
      88007393B100E7FFFF00DFF8FF00DEF7FF00DEF7FF00DFF7FF00DFF8FF00DFF8
      FF00E0F8FF00DFF8FF00DFF8FF00DFF8FF00DFF7FF00DFF7FF00DFF7FF00DFF8
      FF00DFF8FF00DFF8FF00DFF8FF00DFF8FF00DFF8FF00DFF8FF00E0F8FF00E6FE
      FF00A6C2D500A9B5C400FDFDFD00FFFFFF00FFFFFF00FFFFFF00EAEAEA003055
      7F00A4C3D600D2EFF800CCEAF400CBE9F300CCE9F400CCEAF500C3DFE900C4E1
      EA00C4E1EA00C4E1EA00C3E0E900CCEAF500CCE9F400CCE9F300CCE9F300CCE9
      F300CCE9F300CCE9F300CCE9F300CCE9F300CCE9F300CCE9F300CDEAF500D5F3
      FB006D8EAC00F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE002F53
      7E00D3F1F900C5E4EF00C1E0EC00C1E0EC00C1E0EC00C3E3EF00ABC7D100ADC9
      D400ADC9D400ADC9D400ABC7D100C4E3EF00C1E1EC00C1E0EC00C1E0EC00C1E0
      EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C3E2ED00CAE9
      F3009AA5B400F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300506D
      8F00B5D4E400BEDDEA00BAD9E700BAD9E600BADAE700BEDDEA0099B3B9009BB5
      BD009BB5BE009BB5BD0099B3B900B3D2E700BBDAE700BAD9E600BAD9E600BAD9
      E600BAD9E600BAD9E600BAD9E600BAD9E600BAD9E600BAD9E600BAD9E700BEDD
      EA00C1CBCF00E2E2E200F9F9F900FFFFFF00FFFFFF00FFFFFF00F9F9F900899B
      AF006688A700BFDEE900BBDAE600BAD9E600BBDAE600BFE0E7004556BB008EA8
      A7008EA7A9008EA8A7004557BB00BFDFE600BADAE500B9D8E500B9D8E500B9D8
      E500B9D8E500B9D8E500B9D8E500B9D8E500B9D8E500B9D8E500B9D8E500BADA
      E600BDDCE700C8C8C800EEEEEE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7C1
      CC003558810032527C0030507A0030507B002E507A002F5477002532C9002336
      970021386500233697002431C9002B517600274B7700264A7700264A7700264A
      7700264A7700264A7700264A7700264A7700264A7700264A7700264A7700274A
      78002B4F7C002E578600D8D8D800E9E9E900EEEEEE00F9F9F900FFFFFF00F1F1
      F1003B5C84002988BB001984B900087FB8000781B80074CEE6002736C8004355
      E8003344D1004355E7002534C70093E2F4008CDAF8008AD9F8008AD9F8008AD9
      F8008AD9F8008AD9F8008AD9F8008AD9F8008AD9F8008AD9F8008AD9F8008CDB
      FB008BD9F90025579000B7B7B700BCBCBC00CDCDCD00EEEEEE00FFFFFF00F8F8
      F8007388A200347CAC004B849900B9651700B2641700B6670D002235CA005064
      F6004458F2005064F6002135C900B2640B00A85D1300A65C1400A65C1400A65C
      1400A65C1400A65C1400A65C1400A65C1400A65C1400A65C1400A65C1400A65C
      1500A85E1700A9621C00A6642200A3652600A3662900EDEDED00FFFFFF00FEFE
      FE00B8C2CD00366E9D00727F73009F622200D7A76200E0AB58001E32C6005264
      F300384DEC005264F3001E32C600DFAA5600D2A15C00D0A05D00D0A05D00D0A0
      5D00D0A05D00D0A05D00D0A05D00D0A05D00D0A05D00D0A05D00D0A05D00D0A0
      5D00D0A05E00D0A15F00D0A36200D0A46700C5965A00F6F6F600FFFFFF00FFFF
      FF00F1F1F100325C8B00926E4100BB9C7600DBFFFF00E6FFFF001D2DBF005465
      F0002E42E9005465F0001D2DBF00E6FFFF00D8FDFF00D5FAFF00D5FAFF00D5FA
      FF00D5FAFF00D5FAFF00D5FAFF00D5FAFF00D5FAFF00D5FAFF00D5FAFF00D5FA
      FF00D5FAFF00D5FBFF00D6FEFF00CCD2C700D9C5AD00FDFDFD00FFFFFF00FFFF
      FF00F8F8F8006B88A700B0631400C4C7BC00CFF1FE00DAFBFA001D2BBC005969
      F000253AE8005969F0001D2BBC00DAFAF900CDECF600CAEAF500CAEAF500CAEA
      F500CAEAF500CAEAF500CAEAF500CAEAF500CAEAF500CAEAF500CAEAF500CAEA
      F500CAEAF500CAEAF700CBF0FF00C1A98300F4F4F400FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00B5C1CF00AF621300C7F0FF00C4E6F200CFF0F0001D2BBC005D6A
      F1001A2EE6005D6AF1001D2BBC00CFF0EF00C3E3ED00C1E0EC00C1E0EC00C1E0
      EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0EC00C1E0
      EC00C1E0EC00C1E1EE00C2E6F700CBB59C00F5F5F500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F1F10093602E00BAD5DF00BADEEE00C2E4EB001725BF003949
      EE00071CE7003949EE001725BF00C2E4EA00BADAE800B8D9E800B8D9E800B8D9
      E800B8D9E800B8D9E800B8D9E800B8D9E800B8D9E800B8D9E800B8D9E800B8D9
      E800B8D9E800B8D9E800B8DBED00BDCAD100E2E2E200F9F9F900FFFFFF00FFFF
      FF00FFFFFF00F8F8F800A98D7000AC906C00B0DCF600B2DDF100B8E3F000BCE6
      EF00BCE7EF00BCE6EF00B8E3F000B2DCEF00AFD8EF00AED8EF00AED8EF00AED8
      EF00AED8EF00AED8EF00AED8EF00AED8EF00AED8EF00AED8EF00AED8EF00AED8
      EF00AED8EF00AED8EF00AFD9F100AEDAF400C8C8C800EEEEEE00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00CFC4B900A6632000A25D1900A15B1600A25C1500A35D
      1500A35D1500A35D1500A35C1500A15B1500A15B1500A15A1500A15A1500A15A
      1500A15A1500A15A1500A15A1500A15A1500A15A1500A15A1500A15A1500A15A
      1500A15A1500A15A1500A15B1600A25E1A00A3632300EBEBEB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F100BE894500D2AB7200D1A96F00CFA76C00D2AB
      7200D1A86E00D0A76C00D0A76C00D0A76C00D0A76C00D0A76C00D0A76C00D0A7
      6C00D0A76C00D0A76C00D0A76C00D0A76C00D0A76C00D0A76C00D0A76C00D0A7
      6C00D0A76C00D0A76C00D1A96F00D1AB7200BC874600F1F1F100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F800C5A37900CA9E6600D1AB7300CCA36800D0AB
      7400CFA87200CCA36900CDA46A00CDA46A00CDA46A00CDA46A00CDA46A00CDA4
      6A00CDA46A00CDA46A00CDA46A00CDA46A00CDA46A00CDA46A00CDA46A00CDA4
      6A00CDA46A00CCA36900D1AB7300CA9E6600C5A27900F8F8F800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00DBCDBB00C1925500D4B28000CBA36800CFA8
      7100D3AF7C00CBA26700CCA36900CCA36900CCA36900CCA36900CCA36900CCA3
      6900CCA36900CCA36900CCA36900CCA36900CCA36900CCA36900CCA36900CCA3
      6900CCA36900CCA46900D4B38000C1925500DBCDBB00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F1F1F100B8824100D5B48400CFA97200CDA4
      6C00D7B68700CCA46A00CCA36800CCA36900CCA36900CCA36900CCA36900CCA3
      6900CCA36900CCA36900CCA36900CCA36900CCA36900CCA36900CCA36900CCA3
      6900CCA26800CFAA7300D5B48400B8824100F1F1F100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800C4A27700CDA67200D5B38100CAA0
      6400D8B88C00D0AA7500CBA26700CCA26700CBA26700CBA16700CBA16700CBA1
      6700CBA16700CBA16700CBA16700CBA16700CBA16700CBA26700CCA26700CCA2
      6800CBA26700D5B38100CDA67200C4A27700F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00DBCDBB00C3965B00DDBF9600CBA1
      6600D4B38300D6B58700CAA06400C99E6100C89C5E00C79B5C00C79B5C00C79B
      5C00C79B5C00C79B5C00C79B5C00C79B5C00C79B5C00C89C5E00C99E6100CBA1
      6600CCA26800DDBF9600C3965B00DBCDBB00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F100B8823F00DDC09800D2AD
      7800D2AB7800DDC19B00C99D6000F3EADB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3EADC00C99F
      6200D2AD7900DDC09800B8823F00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800C4A17600D2AE7E00D9BA
      8F00CCA36800E1CAA600CDA56D00C89C5D00C6975600C4945000C3934E00C393
      4E00C3934E00C3934E00C3934E00C3934E00C4945000C6975600C89D5E00CA9F
      6300D9BB9000D2AE7F00C4A17600F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00DBCCBA00C5986000E4CD
      AB00CA9F6400DEC59F00D6B58800C99D5F00F2E9DA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3E9DA00C99E6100CBA2
      6800E4CEAC00C5986000DBCCBA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F100B7813E00E3CD
      AC00D3AF7D00D9BA8E00DFC4A000C99E6100C99D6000C89B5C00C79A5B00C79A
      5B00C79A5B00C79A5B00C79A5B00C79A5B00C89B5C00C99D6000CA9F6300D4B1
      8000E3CDAC00B7813E00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800C5A17700D6B6
      8C00DEC29B00D2AC7900E9D7BE00C89D5E00C99E6100C99E6100C99E6100C99E
      6000C99E6000C99E6000C99E6000C99E6100C99E6100C99E6100C99E6000DFC4
      9E00D6B68C00C5A17700F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E0D1BE00C89E
      6800ECDDC500ECDCC400ECDBC300EDDCC500EDDEC700EDDEC700EDDEC700EDDE
      C700EDDEC700EDDEC700EDDEC700EDDEC700EDDEC700EDDEC700EDDDC700EDDD
      C600C89E6800E0D1BE00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00CBA7
      7A00B8813E00B7803C00B77F3C00B7803C00B7803D00B7803D00B7803D00B780
      3D00B7803D00B7803D00B7803D00B7803D00B7803D00B7803D00B7803D00B881
      3E00CBA77A00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    ApplicationButton.Text = 'Archivo'
    BarManager = dxBarManager
    Style = rs2010
    ColorSchemeName = 'Seven'
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -11
    Fonts.ApplicationButton.Name = 'Tahoma'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = 8332560
    Fonts.Group.Height = -11
    Fonts.Group.Name = 'Tahoma'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 8332560
    Fonts.GroupHeader.Height = -11
    Fonts.GroupHeader.Name = 'Tahoma'
    Fonts.GroupHeader.Style = []
    Fonts.TabHeader.Charset = DEFAULT_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -11
    Fonts.TabHeader.Name = 'Tahoma'
    Fonts.TabHeader.Style = []
    MinimizeOnTabDblClick = False
    PopupMenuItems = []
    SupportNonClientDrawing = True
    Contexts = <
      item
        Caption = 'Opciones'
        Color = 6248624
        Visible = True
      end>
    TabOrder = 1
    TabStop = False
    object TabInvetario1: TdxRibbonTab
      Active = True
      Caption = 'Facturaci'#243'n'
      Groups = <
        item
          Caption = 'Operaciones'
          ToolbarName = 'BarMant'
        end
        item
          Caption = 'Control de Facturas'
          ToolbarName = 'BarOperaciones'
        end>
      Index = 0
      ContextIndex = 0
    end
  end
  object PanelDesc: TcxGroupBox
    Left = 289
    Top = 232
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
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 1
      OnClick = cxButton3Click
    end
  end
  object opBuscar: TcxGroupBox
    Left = 202
    Top = 360
    Caption = 'Buscar Facturas Emitidas'
    Style.LookAndFeel.SkinName = 'Silver'
    StyleDisabled.LookAndFeel.SkinName = 'Silver'
    StyleFocused.LookAndFeel.SkinName = 'Silver'
    StyleHot.LookAndFeel.SkinName = 'Silver'
    TabOrder = 7
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
    object cxButton1: TcxButton
      Left = 243
      Top = 91
      Width = 97
      Height = 30
      Caption = '&Ok'
      OptionsImage.ImageIndex = 951
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object Panel1: TPanel
      Left = 178
      Top = 27
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
  object dxBarManager: TdxBarManager
    AlwaysMerge = True
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = inicio.RibbonImages16
    ImageOptions.LargeImages = inicio.RibbonImages32
    ImageOptions.MakeDisabledImagesFaded = True
    ImageOptions.StretchGlyphs = False
    LookAndFeel.SkinName = 'Silver'
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    ShowHint = False
    ShowHintForDisabledItems = False
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 561
    Top = 64
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMant: TdxBar
      Caption = 'Articulos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 937
      FloatTop = 8
      FloatClientWidth = 128
      FloatClientHeight = 84
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarOperaciones: TdxBar
      Caption = 'Control de Facturas'
      CaptionButtons = <>
      DockedLeft = 148
      DockedTop = 0
      FloatLeft = 957
      FloatTop = 8
      FloatClientWidth = 173
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnDiary: TdxBarLargeButton
      Caption = 'Diary'
      Category = 0
      Hint = 'Diary'
      Visible = ivAlways
      LargeImageIndex = 13
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 13
    end
    object btnPortfolio: TdxBarLargeButton
      Caption = 'Portfolio'
      Category = 0
      Hint = 'Portfolio'
      Visible = ivAlways
      LargeImageIndex = 1
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 1
    end
    object btnOfferBook: TdxBarLargeButton
      Caption = 'Offer Book'
      Category = 0
      Hint = 'Offer Book'
      Visible = ivAlways
      LargeImageIndex = 12
      SyncImageIndex = False
      ImageIndex = 12
    end
    object btnOptions: TdxBarLargeButton
      Caption = 'Options'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 18
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 18
    end
    object btnSMS: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 28
    end
    object btnClientReview: TdxBarLargeButton
      Caption = 'Clients'
      Category = 0
      Hint = 'Clients'
      Visible = ivAlways
      LargeImageIndex = 4
      SyncImageIndex = False
      ImageIndex = 4
    end
    object btnViewingsReview: TdxBarLargeButton
      Caption = 'Viewings'
      Category = 0
      Hint = 'Viewings'
      Visible = ivAlways
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = 6
    end
    object btnMatchesReview: TdxBarLargeButton
      Caption = 'Matches'
      Category = 0
      Hint = 'Matches'
      Visible = ivAlways
      LargeImageIndex = 7
      SyncImageIndex = False
      ImageIndex = 7
    end
    object btnCustomReports: TdxBarLargeButton
      Caption = 'Custom'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 9
      SyncImageIndex = False
      ImageIndex = 9
    end
    object btnActivityReport: TdxBarLargeButton
      Caption = 'Activity'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 10
      SyncImageIndex = False
      ImageIndex = 10
    end
    object btnValuationReport: TdxBarLargeButton
      Caption = 'Valuation'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 11
      SyncImageIndex = False
      ImageIndex = 11
    end
    object btnMarketing: TdxBarLargeButton
      Caption = 'Marketing'
      Category = 0
      Hint = 'Marketing'
      Visible = ivAlways
      LargeImageIndex = 16
      SyncImageIndex = False
      ImageIndex = 16
    end
    object btnLettings: TdxBarLargeButton
      Caption = 'Lettings'
      Category = 0
      Hint = 'Lettings'
      Visible = ivAlways
      LargeImageIndex = 15
      SyncImageIndex = False
      ImageIndex = 15
    end
    object btnReports: TdxBarLargeButton
      Caption = 'Generate'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 8
    end
    object btnArchivedApps: TdxBarLargeButton
      Caption = 'Applicants'
      Category = 0
      Hint = 'Applicants'
      Visible = ivAlways
      LargeImageIndex = 20
      SyncImageIndex = False
      ImageIndex = 43
    end
    object btnArchivedProperties: TdxBarLargeButton
      Caption = 'Properties'
      Category = 0
      Hint = 'Properties'
      Visible = ivAlways
      LargeImageIndex = 21
      PaintStyle = psCaption
      SyncImageIndex = False
      ImageIndex = 42
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'File'
      Category = 0
      Hint = 'File'
      Visible = ivAlways
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'Applicants'
      Category = 0
      Hint = 'Applicants'
      Visible = ivAlways
    end
    object dxBarSeparator3: TdxBarSeparator
      Caption = 'Modules'
      Category = 0
      Hint = 'Modules'
      Visible = ivAlways
    end
    object dxBarSeparator4: TdxBarSeparator
      Caption = 'Review'
      Category = 0
      Hint = 'Review'
      Visible = ivAlways
    end
    object dxBarSeparator5: TdxBarSeparator
      Caption = 'Reports'
      Category = 0
      Hint = 'Reports'
      Visible = ivAlways
    end
    object btnEmailMenu: TdxBarSubItem
      Caption = 'Email'
      Category = 0
      HelpContext = 1004
      Visible = ivAlways
      ImageIndex = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBoardErector'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnSMS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFindEmailAddress'
        end>
    end
    object btnBoardErector: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 22
    end
    object btnChangePassword: TdxBarLargeButton
      Caption = 'Change Password'
      Category = 0
      Hint = 'Change Password'
      Visible = ivAlways
      LargeImageIndex = 19
      SyncImageIndex = False
      ImageIndex = 19
    end
    object btnWhatsThis: TdxBarButton
      Caption = 'What'#39's This'
      Category = 0
      Hint = 
        'Clicking this button displays the "What'#39's This" cursor which can' +
        ' be dragged to any control to give information on what the contr' +
        'ol is for!'
      Visible = ivAlways
      ImageIndex = 23
    end
    object btnActivePageHelp: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnSupport: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 22
      SyncImageIndex = False
      ImageIndex = 29
    end
    object dxBarSeparator6: TdxBarSeparator
      Caption = 'Admin'
      Category = 0
      Hint = 'Admin'
      Visible = ivAlways
    end
    object btnCascade: TdxBarButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100000000000000000000FFFF
        FF00FF00FF00FFF8F300CA5C0000CA5D0000FFF1E400ECB07400FFF5EB00FFF6
        ED00FFF7EF00FFFAF500FFFBF700FFFCF900ECAE6D00ECB07100EEB37300ECB1
        7400EEB67C00FED6AA00FFD9B000FED9B000FEDDB800FFDEBB00FEDFBC00FFE4
        C600FEE5C900FFEBD500FEEBD600FEF0E100FEF4E900FEF6ED00FEE3C400FEE5
        C800FFEAD200FEE9D100FFECD600FFEFDC00FFF0DF00FFE1BA00FFE2BB00FFE3
        BD00FFE3BF00FEF2E200FFFCF800FFE4BE00FFE8C800FFEDD400FFE8C500FFED
        D100FFF3E000FFEFD000FFFBF300FFFEFC00FFFBEF00FFFFFB00FFFFFE000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202020505
        050505050505050505050202020205013736322F2E2A28273305020202020501
        031E2523201615132905020205050501350B0826221917142D05020205010501
        01380C091D1B211830050202050105010101382C1F2B241A3105050505010501
        010101010D0A061C320505010501050101010101010101340105050105010512
        0707070707110F0E100505010501010405050505050505050502050105010101
        01010101013401050202050105120707070707110F0E10050202050101040505
        0505050505050502020205010101010101010134010502020202051207070707
        07110F0E10050202020202040505050505050505050202020202}
    end
    object btnCarousel: TdxBarLargeButton
      Caption = 'Carousel'
      Category = 0
      Hint = 'Carousel'
      Visible = ivAlways
      LargeImageIndex = 23
      SyncImageIndex = False
      ImageIndex = 44
    end
    object btnChildClose: TdxBarButton
      Caption = 'Close'
      Category = 0
      Visible = ivAlways
      ImageIndex = 45
    end
    object btnChildRestore: TdxBarButton
      Caption = 'Restore'
      Category = 0
      Visible = ivAlways
      ImageIndex = 21
    end
    object btnForceError: TdxBarButton
      Caption = 'Force Error Message'
      Category = 0
      Hint = 'Force Error Message'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000040000006400000009000000000000000000000000000000000000
        000000000000000000050000005A000000050000000000000000000000000000
        00000000001D000000F40000002C0001121300087286000BA4C90009A2CA0005
        6E8C0000131700000028000000F8000000260000000000000000000000000000
        0000000000000000009200031B4E0016C2E20020DAFF0017C9FF0014C2FF001A
        D0FF000EB2E700011E4A0000009C000000000000000000000000000000000000
        0000000000000000011B0017BBFA0028F1FF0028ECFF001ED6FF0019CDFF0023
        DFFF001EDAFF000DAAFD00000328000000000000000000000000000000000000
        000000000000000B5F5F002DFDFF002FFCFF0031FFFF0026E4FF0020DAFF002A
        EFFF0024E3FF001EDEFF0004596C000000000000000000000000000000000000
        004D00000021001CB4B4033BFFFF0D3FFFFF1045FFFF0B34EAFF0327E4FF0033
        FFFF002AF0FF0026E6FF000EA7C1000000190000004800000000000000000000
        00D3000000C2052CEBEB1A4EFFFF2556FFFF2A5DFFFF1E44E9FF1236E2FF0D42
        FFFF0031FCFF002AF0FF0018D5F1000000BA000000E000000000000000000000
        0001000000190B37EEEE2D60FFFF3D6DFFFF477BFFFF335CF3FF2248ECFF2058
        FFFF073CFFFF002EF9FF001BE7F9000000230000000600000000000000000000
        0000000000000E36D2D23F75FFFF517DFFFF394AD4FF17219FFF101A9FFF112A
        DAFF0B3FFFFF0035FFFF001BD8DF000000000000000000000000000000000000
        000000000002011FA6B72A50FBFF191251FF38351FFF393621FF322F19FF2722
        08FF0F083EFF0023FAFF00139DC0000000020000000000000000000000000000
        00010000009F00032A9D1D2B9DFD4F4C37FF4B4B48FF454543FF3A3A39FF302F
        2CFF25230DFF0A1274FE0005329F000000A10000000200000000000000000000
        0006000000CA0000003E191B188F58584DFF5F5F5DFF525251FF444443FF3838
        37FF282720FF0404049C00000038000000D30000000A00000000000000000000
        000000000000000000000000010218191F8A4E4F4BFB595958FF4A4948FF2C2C
        2AFD0A0C13940000010400000000000000000000000000000000000000000000
        00000000000000000000000000000000000003040B1F0A0A0B6108090A630203
        0A23000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btnViewingBook: TdxBarLargeButton
      Caption = 'Viewing Book'
      Category = 0
      Hint = 'Viewing Book'
      Visible = ivAlways
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = 47
    end
    object btnFAQ: TdxBarButton
      Caption = 'Frequently Asked Questions'
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnTroubleshooting: TdxBarButton
      Caption = 'Troubleshooting'
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnPropertyReview: TdxBarLargeButton
      Caption = 'Progress'
      Category = 0
      Hint = 'Progress'
      Visible = ivAlways
      LargeImageIndex = 25
      SyncImageIndex = False
      ImageIndex = 48
    end
    object btnFindEmailAddress: TdxBarButton
      Caption = 'Find Email Address'
      Category = 0
      HelpContext = 2250
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B57B
        7BF4BE8989EEA87979D7C3B4B4D7726F6EF172645CFC6F6D6FE1777474832A28
        2831010101060202020A0000000000000000000000000000000000000000C797
        97FDDBABACFFFFF2F2FF7C787BFFD9AF8BFFFFD19BFFC7A386FFC6B7B7FFD0C2
        C3FF7D6E68FF817369FFA59E9FF17C7070AB3A3636790000000000000000CB9A
        9AFDF3E4E5FF857F7FFF707274FFEECDB1FFFFF5DBFFFFE1B4FF606064FF6766
        66FFFFDAA4FFFFD9A2FF867B74FFEBD3D3FFA38484FD0000000000000000E6CD
        CDFE828181FF686868FFABACACFFAA9F9EFFF7E5DDFFBFA593FF5C5F62FF9A99
        99FFFFEDD7FFFFFBDFFF887A6DFFEED9D9FFBE9797FD00000000000000008980
        80FFB5B5B5FF6B6B6BFFCDCECEFFFEFFFFFF666565FF5E6062FF828283FFECEF
        EFFFB1A6A6FF877C77FFABA29FFFFFEEEEFFBE9797FD00000000000000004343
        43FFB5B5B5FFD5D5D5FF979797FF6A6A6AFF4A4B4BFF3A3A3AFF999999FFD7D8
        D8FF868686FFC6BFBFFFFFF7F7FFFFF9F9FFBF9B9BFD0000000000000000847C
        7CFF737373FFABABABFFB6B6B6FFAEAEAEFFA9A9A9FFAAAAAAFF797878FF7977
        78FFE2D4D6FFFEF3F2FFFFFFFFFFFFFFFFFFC19D9DFD0000000000000000E4C7
        C7FEE1E1E1FFE1D4D4FFB2ADAFFF8C9496FF676969FF82898CFFC9DBE1FFD6F5
        FFFFBBF0FFFFBDB9C6FFD5B0B0FFFFFFFFFFC6A1A0FD0000000000000000DF9F
        9FFDE4B2B2FFBFCAD8FFDFFAFFFFE6F6FFFFEDF8FFFFE7F6FFFFDAF1FFFFD6F0
        FFFFD6F1FFFFD6F6FFFFCDEDFDFFB78F90FFC19393FA0000000000000000B16D
        6DC2B99D9CFFC0CBD6FFF6FFFFFFF3FEFFFFF3FFFFFFF3FFFFFFF3FFFFFFF3FF
        FFFFF3FFFFFFF5FFFFFFF0FFFFFFC1A2A2FF805F5FA900000000000000000806
        0608905E5EA6B7BDC7FFBEC3CEFFBCC0CCFFBBBECBFFBCC0CBFFBBBFCAFFBDC2
        CAFFBDC0C9FFBFC2CBFFC4C8CDFF7D6767A90000000100000000000000000000
        0000010101026B454570DA9F9FF9EAC1C1FFF3C4C4FFF9C8C8FFFFCCCCFFFFCE
        CEFFFFD2D1FFEFB7B7FD7D595994000000000000000000000000000000000000
        0000000000000000000033212133C08484D2EFC1C1FFF4CACAFFFCCECEFFFFD3
        D3FFD7A2A2F15F43437100000000000000000000000000000000000000000000
        0000000000000000000000000000030202045A383866B98484D5CE9797EC8D61
        61AA160E0E1A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Productores'
      Category = 0
      Hint = 'Productores'
      Visible = ivAlways
      LargeImageIndex = 28
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Insertar'
      Category = 0
      Hint = 'Insertar'
      Visible = ivAlways
      ImageIndex = 39
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar'
      Visible = ivAlways
      ImageIndex = 45
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      ImageIndex = 256
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Anterior'
      Category = 0
      Hint = 'Anterior'
      Visible = ivAlways
      ImageIndex = 52
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Primero'
      Category = 0
      Hint = 'Primero'
      Visible = ivAlways
      ImageIndex = 58
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Pr'#243'ximo'
      Category = 0
      Hint = 'Pr'#243'ximo'
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Ultimo'
      Category = 0
      Hint = 'Ultimo'
      Visible = ivAlways
      ImageIndex = 59
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Refrescar'
      Category = 0
      Hint = 'Refrescar'
      Visible = ivAlways
      ImageIndex = 788
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 9
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Consultar Por:'
      Category = 0
      Hint = 'Consultar Por:'
      Visible = ivAlways
      ImageIndex = 23
      Items.Strings = (
        'Nombres'
        'Direcci'#243'n'
        'Telefono')
      ItemIndex = -1
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'Entre el Nombre'
      Category = 0
      Hint = 'Entre el Nombre'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Articulos'
      Category = 0
      Hint = 'Articulos'
      Visible = ivAlways
      LargeImageIndex = 524
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Caption = 'A'#241'adir'
      Category = 0
      Hint = 'A'#241'adir'
      Visible = ivNever
      ImageIndex = 943
      LargeImageIndex = 8
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Consultar'
      Category = 0
      Hint = 'Consultar'
      Visible = ivNever
      ImageIndex = 258
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivNever
      ImageIndex = 45
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Creaci'#243'n de Factura'
      Category = 0
      Hint = 'Creaci'#243'n de Nueva Factura'
      Visible = ivAlways
      LargeImageIndex = 411
      OnClick = dxBarLargeButton7Click
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Cotizaci'#243'n'
      Category = 0
      Hint = 'Cotizaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 475
      OnClick = dxBarLargeButton5Click
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Imprimir Copia de Facturas'
      Category = 0
      Hint = 'Imprimir Copia de Facturas'
      Visible = ivAlways
      LargeImageIndex = 452
      OnClick = dxBarLargeButton8Click
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Listado de Articulos'
      Category = 0
      Hint = 'Listado de Articulos'
      Visible = ivNever
      ImageIndex = 101
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Articulos'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 525
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarButton15: TdxBarButton
      Caption = 'A'#241'adir'
      Category = 0
      Hint = 'A'#241'adir'
      Visible = ivAlways
      ImageIndex = 943
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Consultar'
      Category = 0
      Hint = 'Consultar'
      Visible = ivAlways
      ImageIndex = 980
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton17: TdxBarButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      ImageIndex = 997
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'Inventario'
      Category = 0
      Hint = 'Inventario'
      Visible = ivAlways
      LargeImageIndex = 526
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'Facturaci'#243'n'
      Category = 0
      Hint = 'Facturaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 464
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'Mantenimientos'
      Category = 0
      Hint = 'Mantenimientos'
      Visible = ivAlways
      LargeImageIndex = 475
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'Cuentas x Cobrar'
      Category = 0
      Hint = 'Cuentas x Cobrar'
      Visible = ivAlways
      LargeImageIndex = 418
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'Gastos'
      Category = 0
      Hint = 'Gastos'
      Visible = ivAlways
      LargeImageIndex = 511
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 429
      OnClick = dxBarLargeButton16Click
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Modificar Combo'
      Category = 0
      Hint = 'Modificar Combo'
      Visible = ivAlways
      ImageIndex = 988
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Caption = 'Anular Factura'
      Category = 0
      Hint = 'Anular Factura'
      Visible = ivAlways
      LargeImageIndex = 512
      OnClick = dxBarLargeButton17Click
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Caption = 'Buscar Facturas'
      Category = 0
      Hint = 'Buscar Facturas'
      Visible = ivAlways
      LargeImageIndex = 179
      OnClick = dxBarLargeButton18Click
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Caption = 'Cuadre de Caja'
      Category = 0
      Hint = 'Cuadre de Caja'
      Visible = ivAlways
      LargeImageIndex = 295
      OnClick = dxBarLargeButton19Click
    end
  end
  object facturasEmitidas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion =:opcion2'
      'and a.tiendaid=:opcion3'
      'and a.condicion =:OPCION4'
      'AND A.ROTULO =:OPCION5')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion3'
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
    Left = 136
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion3'
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
  end
  object FacturasHold: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion =:opcion2'
      'and a.tiendaid =:opcion3'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion3'
        ParamType = ptUnknown
      end>
    Left = 680
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion3'
        ParamType = ptUnknown
      end>
    object FacturasHoldNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FacturasHoldFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FacturasHoldTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FacturasHoldCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FacturasHoldCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FacturasHoldNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FacturasHoldMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object FacturasHoldHORA: TTimeField
      FieldName = 'HORA'
    end
    object FacturasHoldPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FacturasHoldTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FacturasHoldMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object FacturasHoldCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FacturasHoldRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FacturasHoldCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FacturasHoldTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FacturasHoldVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FacturasHoldSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FacturasHoldCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object FacturasHoldNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FacturasHoldRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FacturasHoldNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FacturasHoldNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FacturasHoldDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FacturasHoldROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FacturasHoldNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FacturasHoldMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FacturasHoldCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FacturasHoldINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FacturasHoldDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object FacturasHoldPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FacturasHoldLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FacturasHoldCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FacturasHoldTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FacturasHoldEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FacturasHoldDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FacturasHoldRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FacturasHoldABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FacturasHoldCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FacturasHoldNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FacturasHoldPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FacturasHoldMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FacturasHoldDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FacturasHoldPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FacturasHoldESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FacturasHoldDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FacturasHoldCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FacturasHoldFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object FacturasHoldCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FacturasHoldCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FacturasHoldQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object FacturasHoldUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object FacturasHoldCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object FacturasHoldCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object FacturasHoldNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object FacturasHoldTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FacturasHoldCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
  end
  object DsFacturasEmitidas: TDataSource
    DataSet = facturasEmitidas
    Left = 464
    Top = 144
  end
  object DsfacturasHold: TDataSource
    DataSet = FacturasHold
    Left = 728
    Top = 224
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 728
    Top = 65528
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
    end
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 664
    Top = 65528
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
    end
  end
  object DetalleFacturas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo from detailfact a'
      'left join mtartuculos b On a.articuloid = b.cod_art'
      'where a.masterid =:master')
    Params = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    Left = 256
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
  end
  object DsDetalleFacturas: TDataSource
    DataSet = DetalleFacturas
    Left = 360
    Top = 440
  end
  object Anular: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 312
    Top = 112
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = False
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
      'CONDICIONVENTA=CONDICIONVENTA')
    DataSet = datos.FbqMaster_Fact
    BCDToCurrency = False
    Left = 456
    Top = 88
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
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
      'TOTAL=TOTAL')
    DataSet = datos.Zdetalle
    BCDToCurrency = False
    Left = 504
    Top = 56
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
    DataSet = Dcombo
    BCDToCurrency = False
    Left = 520
    Top = 88
  end
  object Recibo1: TfrxReport
    Version = '4.12.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41440.780885324100000000
    ReportOptions.LastChange = 41450.008173159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 120
    Datasets = <
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = combo
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = ''
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 76.800000000000000000
        Top = 192.000000000000000000
        Width = 585.600000000000000000
        Height = 134.400000000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13421772
        Font.Height = -133
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'COPIA')
        ParentFont = False
      end
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 153.600000000000000000
        ParentFont = False
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 578.309030000000000000
          Top = 60.974830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 565.231850000000000000
          Top = 9.600000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 194.000000000000000000
          Top = 19.200000000000000000
          Width = 374.400000000000000000
          Height = 38.400000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Impact'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTADORA DE COMPUTADORAS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 199.600000000000000000
          Top = 48.200000000000000000
          Width = 374.400000000000000000
          Height = 38.400000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Eras Light ITC'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VENTA AL POR MAYOR Y DETALLE')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 578.000000000000000000
          Top = 37.400000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 0.400000000000000000
          Width = 200.000000000000000000
          Height = 110.000000000000000000
          ShowHint = False
          AutoSize = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000C80000
            006E0806000000621D5C6D000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC61050000001974455874536F6674776172650041646F62652049
            6D616765526561647971C9653C0000032269545874584D4C3A636F6D2E61646F
            62652E786D7000000000003C3F787061636B657420626567696E3D22EFBBBF22
            2069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E
            203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D65
            74612F2220783A786D70746B3D2241646F626520584D5020436F726520352E33
            2D633031312036362E3134353636312C20323031322F30322F30362D31343A35
            363A32372020202020202020223E203C7264663A52444620786D6C6E733A7264
            663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D
            7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F
            6E207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F
            2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A786D
            704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
            2F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F
            62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566
            232220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73
            686F7020435336202857696E646F7773292220786D704D4D3A496E7374616E63
            6549443D22786D702E6969643A45363137433230444346453331314532383733
            384639423741373443323941412220786D704D4D3A446F63756D656E7449443D
            22786D702E6469643A4536313743323045434645333131453238373338463942
            374137344332394141223E203C786D704D4D3A4465726976656446726F6D2073
            745265663A696E7374616E636549443D22786D702E6969643A45363137433230
            4243464533313145323837333846394237413734433239414122207374526566
            3A646F63756D656E7449443D22786D702E6469643A4536313743323043434645
            333131453238373338463942374137344332394141222F3E203C2F7264663A44
            65736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D65
            74613E203C3F787061636B657420656E643D2272223F3E54F3AED00000779E49
            44415478DAEC7D077855C5F3F67B6E4F2795F440E8BDF7264D4410698A8082A0
            0256548A08020A22D2C10282D2A537010105A4F7DE4B20A4F7DE6F3FDFCCDE84
            9A0B4181FFEFF3717C22C9BD7BDA9E7967DED99D9D95A64F9F8ED4D4541C3F7A
            14AECE2EA85CA50A942A1536FFF61BBC4B97868F8F376A54AF8980007F94F6F5
            45626222F2F3F290999585D898185CBA7409CE2E2EF0F7F3830488630D06034C
            2633542A259A376F010F4F0F1C3D7C182165CBA249B3A6183B7A0C2E5CB8805A
            356B521B15B2B3B351A94A6594A6EBC5D0391D1C1D51AA941B1492023A8D16BD
            7ABF86B3E7CEE1B5D75E83B7A7275C5DDD60B19861B1CA68DAB409921212E93E
            2EE3C5173BD2F59548484C8252A98424CB70727616D7B05AADF84F9E8EE4E4E4
            A045CB9668D6A239366FDA8443070FA14C9932080E0E86C96C41566606DCDD4B
            2123231346D20D8D560B7FD2A7A8C848D215A37837EE1EEE080A0AC285F31750
            BB766DC4C4C6C2CFDF0F51E111082C1382EB972F23A06C059C387DC92FCD80CA
            593905AE2E4E1A67D990EF1E1676435BA572159DB78FA7C3858B17B56E3A9583
            7729ADD66A2E7030E80BD40A052495024A19B2D26296956AAD0332F215792EDE
            41D9C682BC148DA34B52BE59BE66CA48887CA377F7B0409F525029AC58B7710B
            A4FF00F29FFC53F9A70091E93D31402A57AE8CB367CE89771A1E1141EF50E172
            33EC462D93D150232C3CAA497EBEB166198F82B27E8A6C572F07254AE92C7073
            B4A294AB03AC5969900C66D2C352705559A1918CD06995D06854E21E95B67F20
            5B25BAA619397A09379373912369906A744458928C14592727E4BB5D5597F28B
            70F1F0FF4BCA8D99FF1F40FE937F2C8F03104341019C485F82820211171707B3
            D90ABDBE00AE6EAEAEF4CECA5FBD72B50EA97183B4F48C1A294949D54C66935B
            666636F4660DD6BE6645D77A5AA8D56A80155E966C3FAC78D6A21FD9F6AF85BF
            2FFC8CC52AD93EE07F14F4A3A41F15FDA12C3C98BEB2E45B119E9087F36926EC
            BD6EC0B6A4C00DFF01E43FF9C7620F2021212130921EE80BF2E9DDFA088058CC
            66E4E5E76B7C7C4B573F7DF2643583DE50232539A5BE55B654494949F555487C
            BE5C68C9CBE8743AF2025A24E52B50C9D38AF31F901617C8F4DE15302B4C90E8
            5C1A527459260EA526AD971800F4AF4A6103020384C12015DEA8C480926D1F14
            7D5FF43B0B83464B3F1EF4419E0175BFD1A5FC0790FFE41F0BBFBFD66DDAA0C5
            732DF1DB868D022055AB55435060200A0C46E5CDB0EB951D1C74D5C3AE87D537
            99CDD51212E2EBD0ABF1CDCFCD257DB5D2FB5143498102BF33B3C5223C4A7E7E
            01CC360D16F26EEB40CCED61856C94B1EB8A848FFEB2C2539503078A15F4460B
            64B3110E8416BDDE42BA47182165B792175190A7A15393AE005EA4FCC4CC40CD
            E14C4E484DBF13C6445BA91030DC5EA2EF9C5DB5D8931818217DFBEDB7E201CF
            9C3A05371757D424A555920B5BB572257CFDFDE1EBE78B7A75EA91BB0C22DE18
            80580A9EF2E8C152D3D21071EB16CE9E3D2B943080DA160790162D5AC2D3CB13
            470E1E444868289A366F86D19F8DC2F9F3E7FF03C8BF44D883346BDE9C3C480B
            F620FE7BF6EC695ACACDAD4A7E7E7EA3BCBCDC4AE421CA9B496B4D4613BD330B
            29AC0246BD0106D972CF79E88DC1DBDB1BFEA44BE52A94175EA85AB5AA381B99
            8B6A9747E39D360EA4D16A4C599B8C45CA5E98FBEDE7A4EC32AC661332B273A1
            D2685040C69BE819144A7EE7160280ED7AAC8F668B49E84201814FCFB190468D
            ACEC2C41FB54D4DE42E0640FA322DD59BF661D8C69E1B7A405F31720322A3270
            D58A95835D9C9DB3C92D4A0AA5D2B06FEFDEAC521E1E702FE526970B2D974537
            6EF4F0F454929BCC361AF479E426E5B4B4545378F8AD7CFADC4200613648F7A5
            32114072E8860C6A8DDAD8FAB9D6B297B797F5D0810328532E146DDBB5130039
            73E60C1A376C286E383D2303B5EAD4262F1580F0F070E1913CC9EB28154A3839
            3862D090C13872EC189E6FDF1E2E4E4E041E77DBC3935978EEB956488C4B20A0
            9E43F71EDDA052AB10179F20CECB00717175159CD5F21F409E9AC856ABE86F66
            1C070F1CD874E6D4C9AE56523673316D35A47CBEC43682828251B64C5954A854
            0165CB95832F1DEB41FAC6EF9E95958D6C6E5E2ED2C9106FDA750CE737CDC0F6
            7E8EF0F05561C68A78ECF61B881D6B173EB5677A6BC0002C5AB2E496B46CC952
            AC5AB56ABAC1641C56A56A5564A4A7D30313CF23C49B2DB647E47FF93346A1A4
            24BE47FEC8992CB38383035B6A360316112E291414F24846B2D639844683D96C
            36723B855261CACCC834383A3A5AB51A8DE9D6AD5BA9C4450BC8F2C8E45DCC1A
            B5C6E04E80707171316467E7A493A793C925B343CAB39A2D86FA0DEA4B31B1B1
            390B162C48F774F7A0EF1CAC46A3810C8EC250B3668DBCE4A4E46C0296BE59D3
            A60A999C70524A8A9EEE572214098068D4FF7990A729AC0FACD02EAEA5F417CE
            9D5D79FED2C596C1414114839441F9424F5096D8431005EDE45984DEA8C86899
            48C732C8DAA72427233E211EE1376FE2465818A2A2A3111D1545314BC6ED181B
            0E813839D08AFA0D801F96C7638B4B5FECDCF4EB537BA65EAFBC8AB5EBD7DD92
            BE18FB85E2D2F98B4941C1415E07F6EF87AB8BB320645AA236AC54EC9E48EF61
            95F95625C1D5D8153175D1904BB39295E6D88841C41D25F1A0736104C4EDF2C9
            7DB12577A6F8865D6C7E7E2EFDEE446D156845BCF5FAF53024C4C789B626A351
            04674CB12C4C1A255BE73368095C6254C46AB59D973D020774FC377B0D029978
            496672B7747D99E89DC49FEFDDBD1B57C252C9B739D802B6FFE4E98939CB5426
            3444FDFBE655D0393913F5B1C0A0D7239B287962428250FA888808DCB8711391
            B7C2919894840C8A65EF168E939D1D9DA02310B1E7679A6DB44AC8A1C0E1487F
            500820E1FB5F0920AE7DB1EBE9032442FAE8A3A16FDCBA15BE2C8302F5C34463
            DC290EE171695642564EFE9D5D68D108000F02F0AF1C4C31806E0F06148A2C17
            FE25D96052741CB7E56F540C20FAD193222F21EFB564D142EC23FAE5A4D50940
            F0F162180F367030088B7E2FBA1FFE9768A0F06A7C7AEE44FE9CE31F0168FA90
            CF612227A2CFCBC6ABD5CC7074A0EB9A1FA387FE93C7127ED71665010E27F8A0
            42BDF6888F89C0AD8848FA37163905F9F7B4D55224ACD369852751D3FB558A77
            69F315AC23B775A85038A8CE35C9384C00A9F5AC01125AA6EC998A952AD6C9CE
            C842D8F56BC2D2DF1EF6BA5B8AEE59BAEFEFFB7B49BEBFF15DC36A459FB2A253
            8764E56493E23A92F557DF7B3AF9CE2F72F15FDCFB49216A058D2ABC1C77B2C1
            6C459A5E895B9F0065AAD2E76978F0D918613C346835022603BD65A3ED332501
            53A5B50D6BFC1D7A26CECB96C4603BAFD544E7E4F17B3EAFCE76CFB2FCE87314
            FB32EEEB81FBCF53A2E38A39F6EF1E57F422FC94787B8E110B0F2643474ACFBA
            A4D5E944D0CB8C415248B7A92EBF1F66256C46D9C0D9BF12BF4719D9061987FA
            CBA85B4781598BE3B1CB6F00B6AF5EF4F8EFA58432E0CD0158B2744984543638
            642FC51ECFC9E411F6EFDB877C93F1A95DF4598B8F872792F58E58F98A19BDEB
            02F9C4B4EE1913A71726672640CEB18AF16FC9C90D92D6490C3D429F0B99E820
            48AF25177AC16EBEB649A8472935D1510699352D994C1FFDEDA4A5F3BA4052EB
            209BF490C9A3219FBE20AC283CBD08343AE6ACF7EA259FC34CE7484F2EDE10DD
            2712F17AC9C1F5F679E4F478C825F09612DF9B4B699B0120005BD393EE4CACD9
            3D088207493C43ADA3EBAAB5A25F98663BD0E30CDE2061C1090DDC55A9C8206A
            654F1CC973F8F9FA8B403C292DF5A197F3F30B4266810587FA5951A7B6024BB7
            A6637A5C538C1FF11ED2E858A6D6EC85046E8B2CE443CEC7236945ECA3B8EEE5
            73ADFC7539AE5EBD162955082DF753858A1507EB0D7A5CBE7809433FFD448C10
            592DD6423D9260A4608A4725D8023C5437143C0EAD1737CC54E761C25685E393
            6CE2A0E2E11EFA526C344D0CC33DEAFD49B67B3411853B7BEA0CAE45A462E96B
            5AF46B0414A414F6908A3C565E3AE4D45C28CA5687AA564F28429B42F20A2545
            73A7176E2670F0F7B760B97504960B1B618DBA0A853729A1831BF5B01DEDA398
            474E8D814CFAAFACF11254F423F9D782C2DD9F14C9853ECF8135939437E1222C
            17B7C27CE977EA53EA57EF40E6AC77CEC35E4CED044550E33B03F4765FB702D6
            F833401E3D1CC5613CB0AF086A488077836D3AD9DEA174AF19119093AF517FA8
            045015418D6CE0B4773DE16949B90A92C8B050FFA4DF849CAD27806A20B9FAC2
            C1DD848F37499873408FC6B543115AB122DDCE837DC5235E713C8746FAE6E5E5
            893AF5EB0B8595EFBBAE52A920FDC8C1D16327506051E0E89B12512C0536D2F9
            DFD9E98DE60D2A23875888D9648B7F998928948A0728DAFD22C286C236623A40
            71EF311C075FB97891E76222A59AD56B7CE5E7E73B2E2B2707F171F1888A8E7A
            A412FEFF223DBA77C3C64DBFE1E7DEFE78BBA98CFC149E042270A4C712823450
            77F906EAD61FDA14E4611D4A14C9BC7B0E4CDBC650EF91E5710F204534DDDB48
            A524458D85C2A70234DDE74059B3E323EFCF72652F8CEB3F8035E10A14017740
            22E7261218AB43F7D985123DA771ED4730FDF53D79242752F052D07D1949FAAF
            7AE471E6C3F36158360452291D24E710388CBD56E2BE958DE40D93AF13C8FF80
            E5F0CFE431C3E1542310A336015376C562C2575F62ECB8F1768F5FB172255EEF
            DB176D5B3D87DDFBF6DA6D171119890AA11560D1BAE2C0002D5A3494F003C520
            DB3DFB63FB9A2525BEDFC79521830661FECF3F474A2F77E9322A3D2D6DB2A393
            13F6EDD983E4B434B8BABA3EB50B3F4B79A5670FACDFB01153BB0560445B2B51
            2C529A5C428951826EE83EF21A0D1FEB7C96F0A3307CDF9EC04056DFD55B781A
            21A48C72420C24BF3AD00D3F0449E758F2939285D5CF6A076BC47E480141ECFA
            C8BBA540E15109BA11E71E095E16D3EE6F615AF739E0A6229054B51DA778742C
            61DA3B9DC035020A37BA5FA7003AEE2CDDBBD363F7B39C978982792FC331E700
            BE38138249BF47E1F3CF46E29B6FA7D83D66FEFCF9183264085A366D86FD870F
            D96D77FACC193469D80426A52B76BDA946BB6614A42F8FC706DDABD8B775CD63
            DF6B4965C8A0770820BF444A5DBB76FD302B2BEB3B6702C8D6DF7F47427C8298
            3DFF37C83B6F0DC42F8B16E3CB4E0118FF220124D104393195C0B113CA6AEDFF
            D6392D57FF827E4E3B284A7BD972129876E46710457084C3F830B2C4EE8F7F52
            7D1EF2C786D22F3974BC077990241B40869D0234BA471E6E3EB30A865FFA88DB
            5154690FDD909D25BAAC69CF3418D78DBC039061272139BAFDAD7EB11A8D50CC
            AB882F36A560D2FE7C8CFA6C04267F3BD56EFB79F3E6E1BDF7DE7B24404E9E3A
            85668D9BC1A472C5FE016AB4240FB2647D3C7E95BA63F7EF1BFED6BD96440A75
            27526AD6A469374747C78D5AAD06BF6FDF8E1B376EA07CF9F24FEDC2CF52860F
            FB043366CEC6D8170230A18B849CB3B1D0B47C0BDAD77FF947E735FE3A80E8C9
            12F21801220CB046C541F3E62F50377FEB6F9FD37C74390C0BFB4111E24FBC3E
            F9B10062B97110861F5A91C6CB5035E90FCD1B4B4A74CD2709102157E7E2EBD7
            DFC7580A893E1B3912DF4EB1EF411E1B204A17F2201AB46B2C61F5A6782C937A
            60FBE6F57FFF5E1F21B701F27A9F3E5DC3C3C337F9F8F860F3D6AD387EFC381A
            367C3CEAF1BF2AA3C8CD4F993A0DEFB60EC0DCAE06E4DF48876ED479E2FBD5ED
            1E23A7C7D84665BC82EDB6B15CDB435EA42D14BEBE14B0665270EC09C7F11122
            F8B727D6A41B145794B365CE157B522B0ABEA90839278673371E0B20D6D47018
            66D58535311BEACE23A0E936F591C7B03C7180982F61C60BF531FC2FC3130548
            8B26CD60905DB1A1BF1ADD5B2AB07C6D1CD6EA7A61EB86D57FFF5E1F211FBEFF
            1E7E983B2F529A33674E875F972FFF23243818EB376EC4BE7DFBD1AA55CBA776
            E16729DF7C3D0963C67E81579B0462CD8B7130E9EA403DFCB4DDF6724A24F227
            568164B54237EE1A05DC658B6FA7CF867E72457225B990B3F2A06CFC3AB4FD96
            DB3DAFF9E44A144CE80BDD2773A06EF391DD76C6354360DA371F928B1A0AF78A
            2506082C26E8A75687F94A18B46FCF86BAD5D012F5CFE3004436E4C37C681994
            E56A4351A6B19D3316E0BBD7AA63E89A5B4F05209BFAABD0B5A512AB7F4BC0BC
            BC17B178FEF7C8CFA7FE279ACB732A9C5561778457B68D58F1682D67A38BC949
            3109FEE0313C023B73DA34665491529FD77A57B97123EC4A85F215B072CD6AFC
            F9E74E3CFFFCDFE3E7FF6BF2CB82057867F060F46C148875ED62610EE90AD53B
            9BECB6B79C5806FD4FFDC538BF76C81AA8EABD6AB7AD7E7A2358134E52BC2043
            D3F54BA83BDA1FB131FC3A10C6158BA1E9F32AB46FD80F2C4DBB2793C28E16C3
            A60AF70A250708DFCFACE604C4C370F86C0394B5BA97E898C70248762AF28779
            4336010E132E40195CA3D876F3DEAC89F7965E7CA200694E0031C215BF910779
            B939B0FF98095D37B9A072397FE80BF2C4E4A386BCB756A7B581C48E302838F5
            25BF205F0C0B735224A723C9F71DC3939B09F1F130190C9152C3BAF5424D66F3
            8D2AD5AB2956AE5C89756BD7A2E72BAF94A883FFD765E58A15E8FBFAEBE85827
            10DBDBC702B50702BDED67809A8F2C20651E2CA61EB403574159EF35BB6D0D0B
            BAC07269AB5018CD2BB3C8337C6CBF2DC52CA6AD4BA07EB127B4FDD7D9BFFE51
            BAFE32BABE3301C4E33101B2A82BCCBB37C3E1CB0350566C51A2631E0B20B9E9
            307CD79858D40D68DF9C0AF5F3238A6DB7707013BCBDE018461240A63C01809C
            6280501B83C515ABDE50E3B5E7246CDB96842929ADB166D572B1A482E7C7785E
            8DD38B1E360722D291A89D6DF9832CE64CC47CDDDD8714E6FFBD3B7808962C5B
            1A29F57FBD9FFFD5EB57AF57AA52D979F9B2E558F4CB420CA000E5DF201B376D
            448FEE3DD0B04A008EBC1007651B7AA99DEDF373F3811F6058FDA10D20030820
            F51F029065BDC8E3AC159DABE9BB08AAA603ECB72D02C80BDDE9BCF6475E2CE7
            3742BFA00729A9EAB1621016E33AA267BFCF87C3348A757C4A36C8F2D80099D5
            08E69B37A1ED3311EA0E5F14DB6EF17B2D3070DEA1270A9016D4464F0059DE47
            85D7DB29B08982F4B986CED8B5636B899EF3EFC8071483FCC831C8C811231CF7
            1F3870AD5AB5EA418B162DC4EC1933C56CFABF41F6ECD983B66DDBA246A82FCE
            744A84EAC551C00B93EDB6371F9C0BC3CAF7C5C8AD76E06AF220BDECB635AC1A
            00CBC125828E69FAAD80AA411FFB6D570C8469CB62A261E441DEB4EF412C17B7
            C030FF65B1EC4DE151F9B10062DAFA054C3B26C1714E1EA02ED93CCCDF06C81B
            DF42DDEEB362DB2DFFA019FAFD78E4A90064455F15FAB45560F3E678CCCE7901
            7B77ED28D173FE1D193F6E1C264C9C1829BDD8E105E5ADC8881B0D1B352ABB6C
            D9327C317A34264E9AF4D42EFC2CE5F0E1C368DEFC39540CF4C4F99792A0EBFA
            39F0FC3776DB3F0E404C9B3E8571E72CCED82080AC2480F4B6DBB6C400B9B40D
            869F3A1340C8F57B54793C80ECFD0EE61D5FC1616A5A89FBE7EF036432016454
            B1ED367CD20C3D673F3980700CD2F2B60751E3F5F6127E230F3231AE054E9F38
            F0C867E4F8C468348A14A8A214137D41017273735140FFE614FE2B52AAA81DFF
            CEC72C5DB418E43822A5C58B1629E7CDFBE9AAAF6FE90A5BB66EC5271F7F8C99
            B36695B893FF97E5CCD9B3A857AF19BC3C9D71E6E51404F51E0DB4B50FFEC702
            C886A130EEFE4E241D6ADF5C0D55DD87789B1203642B01A44B0900F260429EF9
            EC7A9877CD866EE47DCA2616662B50DCF0CEDFA7589388628D2EB6DDF6E1CDD0
            69C6110C1F3112D3A63E4180985DB18400D2BF1D7F6640E78D6E68D1B209714B
            BD50F67C7D01CCB797F42A8592DB964DC8221F4CE40752FCC139861CAF7077F0
            822D5E922B17AE7BE278C6DDC343AC3DBA151E8ECC8C8C4889D773F7EBDFEF2F
            3A699B3FFFD821467D7EFAE927FC1B242A2A1255ABD7858902B2733D3351F54D
            7AA9AD9F024006AE81AAB6FD11AF1203E4CA7618E67502740F0788352D5ACCE0
            2B3C02EF1C7B7527CC141369FBDF9904958D0562FE451958A330E9F1BE67786C
            8034A4203D1CBAF7E741D57248B1EDFE1AD502EDA61CC23002C8F4270C906504
            90370820278EE5E3959DBEE8D6B5335C9D1D854273E0EDE4E804074707A1EC3A
            AD0EA54A9512235B5A8D46D4E22ACAF8757271168BF678911D2F0C642071F7A8
            C4BFB67EFA7CD4281E858B945A366F81B0B0EBBFB57FBEC3CB9B376E40BB0E1D
            B061E3C612A8DFFFBEA4A5A6A152D5EA484BCFC1F95E79A8398800D2AA0400B1
            928E0EDF07458556F6DB6E1F0FC3A60964ED39A0270F52E70978902B7F10403A
            F28A22283CED03C472EB18248B89EEEFCE689525E238AC370F40DDFECEE8929C
            9D00CB8D7D50D52B9EFE3D164072D2903FD24B643B3B8C3E0BC92BA4D8760747
            3541CB29C7306C380164DA9305C8D2BE6AF46B27E18FADF11817D50C274EDA3F
            EE9F0A33A9D973E6444A5D3A77E60A23BFD5AD5FFFE583FBF7A36EDDBAF873D7
            AEA776E16729F9F9F9A85CA51A62A29370E09502B4F89000D2A2040021EBA26A
            D40F8AE0FA904D05F75A5F5ED1A87610234E966BFBE8FBBC2708901D0490171F
            0D90ABBB453AFEDDF33472563C79965B508636BFF3597218CCD7FF82BAC5BBC5
            5EEFB166D2CD4658C2F6529FD4A6FE296DF7198E8FA88EC6D32FE35302C88C27
            0090DB41BAC915735F51E3DD4E1276FD118F8F2FD4C5994BA7A12DC9FAAEBF21
            63BFF8025F4F9A1429CD9C361D6BD7ADFBC9C3CB73F005E2ECBCB8FEC0A1A787
            CC672D75EAD4C1B97317B1B58B059D4712409A3D1A208AC03290D32249096177
            75A554CA8114C58B284C8CA063CF1420D776C11A739EBCC5F0873EBBF5E62158
            6E1E84FA85CF8BFDFE89A79AC8A938F5613534F831199F0C1B8999D39F2C40BE
            EFA1C6072F49D849001971B521CE9F3BFEE85BA2F8C250187C73AD2DD17F16B3
            08DA8BD62EB121150549E85DEB0BF462769E62731C3A7C983DC84B387DFAF4B4
            D66DDB0C3F4700E1C20957AE5D7BE482A7FF5FA479F3E6387CF80836BF28A3CB
            180248D31200C4370078E8CA3449E44BF1F23B6B5AE2330788953C97F9DC2668
            5E9BF3D067379F5A076BF47968BA7F5DECF74F1C20097B7171441BD45C010CFD
            742466CF78B20099471E640831D0F3178CE8B8DE15F5EA9137E325075CC88380
            C08ACF0ACF81382FBEE2209C8B7F88CFC4726C5BDD02060DC72D5C438D47B58A
            C0C1EF9503787216B876E50AD77F8B94C68D1D871D3BB64F0A080C1C1D1F1B2B
            0AB785716D2AA7C75F17F0BF286D5BB7C69E7DFBB09A82BB5E1309208D4B0810
            B924EBD0E5FF1B80DC384CCA3D03DAC10F8F154D7B7F8435210CDA3EC503E989
            0364595784EDDF824A8B647CF8C9487C37F3C90084DB14104066930719DA59A2
            B82417DDB7FAA0FF9BFDE0A0515070EE082D05E55C088E8B40680A8B7E70751C
            1767170AD035707470282C53A5122B15B9FE169736E5009D0B83303084492CA4
            D35F8C1E834993BF8994121212F1EDE4C9EF9F3E73E60743411EA2A2A2702DEC
            A62836FC6F90EE2F77C1A62D5BF13DC5B31F4C2380342A0140FC78759FDE3644
            6A8F6329D49CDC036B6AC2B30748D47118D67F04DDC7872029ED67101BB78C16
            6BEEB5FD1617FBFD93048871ED28688E4DC12D9D1FCA4D4EC0FB1F8FC40FB39E
            4C90DEAA1901C4E88AC95DD418D51DF8F3CF048CB8D210174A40B1FEAE8C1C3E
            1CD366CC8894A67EFB2DB66CD9D2CBC9C565B59EB818A7BB87DDBC29F66AF837
            C8807EFDB064F9724C69420F3DAB8400F1A7672FC8862CD65317E349B858B2D6
            819457036B4AFC3307889C7009FAB95DA1FD8482660FFBEF49BFB82F8158019D
            9D4CE3C706885866CCD49B088C210772560CC53947613EF92B2CD70FC1A99C37
            A273B40899148BF708203F3E61804C7D598D115D81C30792F1D6B1CA387AE234
            DC9DB58FA10D2597E19F7E8A19B366454AB56BD4E05AB6AF346BD97CAD818298
            6D3B76E0EAD5AB62AF867F830C7EFB2D2C58B808131A0063BF2F19402472D59A
            AE53A0A8FC3C1E2C60C07F2B61DE3B1DA6A3A47892F9C98D625DFD0386B98F1E
            E69553C251F06D5DE886EE8122B89EDDF3E967B7013C83A1B3B380EAB18679F3
            B260F8B113647D32249D03E4827CC8B971F45340FD45DDE0E54F740788CD9510
            F4751CDE1D3A1273673F618074D560446719978E27E3ED5395B175FF6978BB3C
            65807CF0FE07888C88686BB69877734DC4ED7FFE210A4173D1E07F837C3EEA33
            7C3B652A3EA901CCFC8500D2B00400210C683FFA03CAAA1DECB7DD320A86DF49
            01743C0FB28600F204260A4B986AC28BBA0AC607530CB219CAEA5DEC9EAFE0EB
            CA508436A718A4F815948F3B0F52302154942D921C15A26E98A471B4D50EB315
            228303FD1AAF5720600203E43302C8B776EFED71621006483E01E4CB4E6A8C27
            8A75E15832DE395905DB0E9C82D7D306C8A0B7DE466464445D2212A7B988DB96
            DFB7E2F0A143684A37F56F902953BEC5A8519FE39D8AC082250490264F68267D
            D3301877CEB4E562F55F0955FD27918BF53B01E4A5470324331E059F0540DD7B
            0ED4CFD95F80953F9282D28603A1EDF963F1CFF09833E9FA190D21E7C7D94A23
            15230C9024A302BE5FC661D04723307FCE3F5F937E3740C67554E3AB9EC07906
            C8A9AAD84100F174D6E069C8D7132660ECF8F191D2CB2F75417C7C7C3D4F2FAF
            53BCFDC0D2654BB161FD7A74EFD1E3A95CF859CB8C69D3307CE448BC590E58BC
            F473A0D993495634AC1E08F381C51424535B0288F28902E4E1D9BC725602F23F
            F587FAE5CFA0E952BC95E64A23F9C3DDE99AC3A8CDF462DB3C7180A8816C8ACF
            BCC7C6A1DB80F7B17AD10F769FF56F799017C983905A9E3F9A8C81C72BE2E485
            2B4FA5DCF25F7FFD85E1C386212A2232529A3F7F01E26263CA9F3A79EA068104
            CB7F5DCED5DEC55E1CFF0699FFD34F18F2EEBBE816086C5CF629D07A86DDB6E6
            033FC2B0EA83920164D9ABB01C5F27D8052FB755367CDD7EDB22803C6A3DC885
            CD30CCA728D4F151004924E5F783BA551F685E5F51ECB9E4E41BC81F5111EA5E
            63A079F19FCF83940820E44DF50A095E63E2D169C00758B3E87BBBCF5A049066
            0D1BE1D0F16376DB9D3B770E2D1A3746AEC1993C88065F11C54ABC968736EB9D
            3074FC747468DD14C121C10F2D5F5A123978F0200F56F1F60DA220BBD9684462
            4262A474F8D061DE29CA79E9D2A5D14E4E4EEEEB36ACC7C25F1662E0BF64D1D4
            FA75EBF0CAABAFE2B9D2C0DEB9A4C4DD1FB276FCE03C02C87B255B30B5A8272C
            673788E2859ADE3F41D562B0FDB60C90CD0490CEBD084CF60B0D984FAF866161
            6F484E0F5F302528D6E800282AB5A040BDF8946FCBCDFD2818FB1CD1BFAFA079
            615CB16D9E06402C2A09DE049086DDFAE38FF54BEC3EEB0F3FFC800F3FFC101D
            DAB5C31F0F496DDAB76F1F9E6FDB1626D91B635E50E06B02484E9419ADD639C1
            E44446C2AAE7BB03D7750B0C08101BF078797923B45C287C7D7DE1E1EE2E6A04
            AB35EAC28D744C62CF91F05BB7C013E337C3C3111616262612438243D0B55B57
            0C1A34083F3180DF7F3F523A76EC18E2E3E2B4F3E7CF8F717373F35E4B0A3595
            82DA112347E0DF205B7EFB0D2F77EB86A63EC0E1292F026F6EB3DBD67CEC1718
            97BE039969D35B0F0FBCF5735AC31AB94FA4A3687A4E81BAFD48BB6D0D2BDFA6
            986521D45D5F83B6EF2ABBED4C07BF8371E550482E0F5F932E00323E00927705
            387C1156FCB39C580EFD947ED00CF91A9AF6638ABFDE1306888EAB966A2494FE
            221E553BF6C6BE2D2BED3E6B51E1B86E5DBB62E326FB7502B69255EFF2F2CB80
            C20F635F0026740322CE2463F0B9EAF875E769183313C4A8EB952B57C4AEB9A9
            29A9484C4A14BB5EF1525CDE84C968B26D35CDAB711562AB37DB961EBC6F62C5
            4A95D0AA652BB469DB064E774D8E8F1F3F1E13264C88943EFDF4139E8E972E9C
            3F7FD5CFD7AFD2CAD5ABF80B8C1D3B16FF06D9437CB26DBBF6A8E125E3E498BA
            D07E6CBFAA89E5E276147CD5895E3259C3AF0E4259A179F10D652ED15399A84E
            14FD186D3CBFEB74BBE735AC7E0FFA69F3E030EA3D685EF9D16E3BD3F671306E
            9908C9F5D100D17F1D0259A581C3B8F86295DABC6B1AF43F8C84E6C349D0B42B
            7EEDC69306889600A2D04A081A1F0FEFC65D7066EF66BBCFCA7B607625C3F562
            C717B16DBB7DA3B58EE2E157B94682D20F63DA53F04C3148ECA54CBCBCC30BEB
            F75D4059BF874F68F35A91BCBC3C51AC81B7ECE3FA6F9C06CFA9260F932FBFFC
            125F7DF555A4D4A17D7BD1382E3EE144D932210DD6900719337A346732E2DF20
            972F5F46F59A0D11E46AC6F1C15AF88DBF4EDAEF577C6372BF8695EF4022A5D4
            F49A6BB7869535F13AF4536B4072762380A44251AE15741FEDB37B0FD668B274
            6BA7D039BF8022A8A6DD7686F99DC5502F731585FBC329967E6A155873B2E130
            F21C9DB3D6838FB269280C4BBF83E6FD6FC883FCF364C5120184BA4B41B75B73
            561A6E9A839193744D58F0E2243333537890375E7F039D3A77B2DB27BC87E6E7
            9FD3FD6B02F071332B66515898129E8776EB7558BCED18EA56298BA721B70132
            EC934F0547DBBB6FCF7E77F7522D376FD98A81FDDFC4C2258BFFF955FE0784F9
            6595DA8DE0E5A0C0892EE90819BE06A8F6EA3F3AA7E9AF5930AEFA148AE040DE
            5C1B72463674A3AF42E1FBF72B527255F882AF2B11BDD242D6E73C3C486780CC
            A849404D83F6933FA1AAFAFC036D0C0BBBC3B463133483C983B47F361E847762
            56D1A93AFE2AE38FF389D8B97327DAB7FF6725A4781FCB7367CEC0A0F4C5C7CD
            0920E44CD22372D171B333E66F3E86DA9582FFD1F9EDC96D800CFDF023B8BAB8
            E2AF3DBBB7060587745EB3760D7A102F5CFF105EF8FF93DCA260AC66DD4690AC
            169C7D2D0BE5EB3603863C7A2DB35D319B913F3684809141CAE46ECBC78A8B81
            AAC1AB226EF9BB625C4E71CAA18550040689854E8F0AD2F533EBC21A9304CDA0
            05503779E7813605B35AC172E2003403280679FED9C4204A896ED715E8B55A89
            B52762F15CCB96D8BB7FFF63F745D12E629B888675271A56C6DF1F9129C0F096
            32A6F504D21820BF3963C196670010AE3EE8E1E189D5AB57AD28EDEFD767CBC6
            8D14B0B415757AFF0D929E9E8E3AF51A223A2A0E173E71470D6B028CCF13DDE9
            38F26F9D4F3FFB0558C2FE84C2FFAE3D3D240BACB1C9D00E580A55D37E8F7D4E
            F3998D30CCED41E0F0A6BF5477AABB970420DD3F87FAA5FBE6762C26141005B4
            5EBD0EF5EBCF0E204C48795B92DEAB81D5E7E80F6302267DF30D467F5E3CC5BB
            E75E88DE6E239D3B71FC38BEA163788D4668D9B2C8A560DBC7D30B11C9160C6E
            2CE3A7DE400601A4C326272CD87AFCE903E4C0810328EDE383F1E3C62FC9C9CB
            ED7FFCC81154A85809478E1D7D2A177ED6C28B62EAD4AD8F6BA42C473F288DC6
            C1F9C80BCB80A6E72CA83B7C5CE2F38835D90BFB5120BF4D149886E5AE1C2DE2
            D95C8E1469D9A4904BA06ED1BFC4E7351F5B09C3F2FE503813109C4AD936A8E1
            FD41BC6A883AC2C5DF0C7988F1A50920C9503FFF0E34BD17DCFBBD211F055FFA
            C19A900DCDC0EFA06EF961F1D73EF2330C4B0651BC43D72EC1FE20055F5520F0
            461188BC8AFD5E0084B0D36FB58CE5E754F075D62331351563C78EC384095F15
            7BCCA953A7B17EFD3AECD8B60D172E5D42B9D0B23874F808BA138B394A60090D
            0A16EB3CA252E9BC0D80A57D656445E7A1CD3A2D7990E3A857F5E9C4203C5035
            9E67D2CF9D3B2B76AC9D32F9DBE97171F1C3CE9D3D23C6912F5CBAF8542EFCAC
            8517D2D4A95D17172F5EC0EEC1BE685B558582E45C589332A0ACD11A2A521E55
            D58E76CBEBC8D929B09C5E0FE3EE2990D3A2C8CAB3E7E00CDFFB92189564F9F3
            3321A7E74059AF1BD4AD874279D79AF6F0F030942B57D1764EFE093F0AD3BEEF
            613EB10A92BB1324278FDB3B57A90A3221B90543C52922BC3F88F5AE9DA2788F
            C3BC5458D7BD4B9E24038A72F52075996ADB0351B6C2A2246F107D16F296E190
            4C66285BBD053420AF66CA2FBC70E18E6B142C58CFAE8269FF4F503A69A173F1
            015EF98134DC4978A07B848B72E7E7A060F587B664458D8B6D55E57DBD204679
            E93106AE03169F94105A5A89BCFC02B1C55AD3264DF0EE7BEF89AA9D3AAD16BF
            6FFB1DF37E9C8B1D3B76DC3E87BF970FFC02FC919D97831B37C305384CBC6316
            5D8801F25623E0975E32B213F2D07E83163FAE3F8EFAD59E0E40A64D9D8A919F
            7D1629B56DDD46547D888C8A1C56A76EBDE9C78E1C16ABAEAEDFB8F134F5F699
            4AD1A2A97503FCD1B3B68CFC741E6EB1424E4E10D9EC8AC06A50F8D5003CCB13
            7D60A048A4ECA450A95761893A0D39310A70554351CA1732299DDD4D4E790F79
            52544B52B26DEB909006700C6D802C8D37CAF45B8C69C3BBE0EDD61A180E1F83
            39FA38597A0B245F1FDBDA128B95991A1C78D4D2412136D2414E52F1BBA1F1AE
            F42EBE22FE812197009369FB9CB747CCA17F9CE817EFD204643A4F6E162CA4DC
            B0DD9EA8C20255D18F335DA714F406194A8D0596AC44DBA3DD7F4D85B83DBA2F
            5F7A3E251C9CE90F173CB8C31B1F47B7F5C92F3266EF9610E247FD2836E90422
            E3E24493DA356BA26CD9506CDAFC9BF89BAFD79262150B01E146D80DDB725802
            9537B19AA2EDDB8A00D2BF818C257D80CCE81CB4A6207DFDEECB2817E0F15474
            A67BCF5ED8B461AD285E2D560F9E3E73E6D390909019B7C26F2026261611D1D1
            707171793A1AFB8CA5478FEED8B8711336BFE38F2E6DE92D122E6CDBFB296C2B
            0779D7A97CB3ED85DF6D1659895C1C000EC685D328C18E9A2CAC896C85B39201
            3A740659D4E1074919918B3F28C8ECC0C548ACDE366F60B96BBD0981633B31DB
            998788F1F0B6D5F21D0D14FBD183B3506424E54982D615AD7E630F6332F3D251
            194786CAF8EDBC02330F2BA0D148D0D363992CB63DEEB574AC0B01C4DB4946D9
            5256D4F655A0434D05D474AB55BFE3C7B340A751DC630038604ECB96D1B40CB0
            7EB05200EC26D9CEC9FB64B167A55A79775BC2904EC6B16809379225DEBFF476
            57DA6AE0CA484949111BC586040462F0FBEFE139325E4D1A37C6A48913F1C5B8
            71284B5EC336A977671F417ECC680248CF3A32D6F5A5E7A187AA3A29039F2FDA
            8581DD9F7BE2FAC2DB11960DF4875A52464A1C8CF0C4C9DE3D7B06D38DFD949C
            90883367CE203C321241C1FF8E45536FBFFD36162E5C884F5F0840077214A6CC
            BBBF95EF6CD92C44BAF73B6B212F29D1F6C8F79E57A9946024900DFB9D309941
            169A2CBF86BCF3AC6E66043892421B6D7BBA0BE7A3B42293AEF5D12615529279
            7BDCE47B4FA7F513348E01CDE7B5E4C6DEFBBD92299A1326BD62C6BE9BC0AEB3
            9CE5CA5516EDED34EB4A7CC81975CA48A8E76FC18A33BC4DB30AF999D1F79ED6
            C18BEEDB1135034D98D19DCE48A71BB35D81F068B6EE49F79D933DB32F4AB94B
            F0A4E733DEB57FA79A9E9BC191A3B7154EA858A102AE87DDC90278A36F5FFCBA
            72E5DD6742706050E1B6D1B200C82B0490B59C134AA89CB73116A3C2C93B479C
            78E2FA326DDE72AC19DE0F95EA968D943E1E3A54ACCF3D7CF8704F3717D77539
            D9D9F86BDF5EDCBC79933873B9277EF16725494949484C4C443479C219D3A6E3
            FCD9B3C8E42A25D69C677B23CAD2F0F6D440830224A7A442EBEC855CB303D46A
            09A6EC786A50A8453A5FDE5B19CEAA7C48E62CB4EBF0A2286CC6FB5E70918153
            274E8AE203FC59726A32DAB5EF4034C48B3C874580EC0051C882823C24E76AE1
            EA40965DCE41B9F295D1E2B95602DA66A22EBC636C765626921213442E526C7C
            42E1B50311E261454E5E2EBA76EF813265CB88C10DBED6C6F51B101F1B05A5D6
            0549590C6515FD970385399362BB7A42F1B93A6129F752F0F0F0104B25F89EEE
            DEB9983D9DAD04536554AC5C594C1256AA5409DF4CBE532779D1A2452259D095
            74912B20666664E01805EBBC665C419EEA364088625908F7CA40096586C4A3E3
            E8399837F1A392BE8D1249FD66EDD149B51B612813296DDAB0115E9E9EF8FDF7
            6D1DAF5DBFB69DDD1AAF09E134E37AF5EAFDF3AB3D45C92630F31A7ADE993726
            2A1A91E4F5C2C3C3114B14312525190909092820A5F2240FC933BA2165CB9E6B
            D4A4C9D1DCDC1C27E2B772E1C6DA82BE3C49E13E244A61717575CBDBFBD7EE01
            519151CECD9A3747AF3EBDF10E7933BE1F33B5E9DCB933CA9325E5F62B962F47
            767A065228F0E699631EEABC5BCA136F4FA6E7C935E851BD7A755CB878EF20CA
            E04183B1E0E70528C383080489C8D8183154C93945C54914F517E7E1FD34F747
            EC3B70005EA5DC919B9F8798B878B1357391346AD408274F9C40A09F3F140486
            740AB87348D9A7CF988E619F0EBBE79C9F7CF209162EF8D9A6E477652170A66D
            547C2C66CE9C29DA9444AE5DBB866A55AAA03405EE6AB50AD1E91417D492B181
            28963195070314B81293836A33F371E8CC4534ABF36456C06E3B780E9F76AE83
            FDC39DF1F22A8F4869FAF4E96257DB23870FD7CFCDCD3BC97BA473F2D85FBB77
            8BF990FF6B49274BC29B99C444C7E056C42D9190C6A0888D8D452C79877452AA
            1C7AB1770B870E9C1DC0952CD87AF14856626A0A3EFCE083D1DF7DFFFDE4F3E7
            CE8B0A170E5AADD8135EA7D3404B2F213B375F302A3371763E467A5C5A25E217
            1B657327101C38743068D05B6F87A76766A8A7F1BA94E1C341D7C7D08F3E8292
            DAB46AF51CFEDABB4714D96E4F7DCD60EEDEBD3B366CB837253E9FAC7975B2BC
            8964F10B88BF73D5FAD6C4DDEF964D9B36D2B13D10EC1F206E232A3E0E9327F3
            62B1CF1E79DBFDFAF5C37202A89FB70F4E9E3D83808000F1397B115652BEAE9F
            AF2F62A8CF4DD45F2B57AFC66BBDEE2C0560EAD4A3470F9132EEEEEC8C02BD41
            F43B0385D398B84B22E362B852A178F692C8CD1B3751B16205F87A790B2FC200
            E956CB8A8D7DC9F3A68BF95A3884AA306D450C461E0A456EF6358A79D4253AF7
            C3A472B36E78DBF41B86BFE983EAB374915283FAF5C50BA5872CDFBC59B36B86
            02BD72DDC60DF8E3CF3FD1E1F9E7FFF1054B22FC22980A45464592D2C7222232
            0211E1B7380D1F094989E20565E7DDCBA519040E0E8EA2E48B5AA58644813157
            ED1605C10CB617A4268AE053DA475844AEC74A167B0FD19C6F3C3C7D6E397A97
            893876290A413EAE28E74FD633271B15CA048AA0D3C9410B376707188C2661DD
            8D2633F169AB50BC87791BCE1E2DDAD0DEA77469BC3B78F0FEBD07F6B7747773
            C34DA2344C4158264FFE06A347DB26EFAA57AD42B4271BD17171080D0D159653
            ADBEF745E7E6E5A17EED3AB84ED131D731DBBC75CB03D74E4B4F473502913E2F
            1FAE74BD988478FCF2CB2F78EBAD926D2CCA2C82975CC727278A9D97586E10CD
            6E58B71E74D48F89E9A942D9FF24BDE05A6345C2E9E8BD7BBD86C4645B3CE2ED
            E129866A8D062319B568E451CCE14AEF49A3D3A266EDDAA843E7CBCECE12A9E8
            5F7DF595E8AF0C328263BF182B68A04AA516E57B92881EEFDAF107B464C478A3
            9B68A2553D6A5BB1BE4F2140E85A0A5E1A1DAA44CF2F63B157F702D2AEFEB3ED
            10D6EF3A81D79F6F04FD6C2FA4A5C968BBD629527A4180404256565650406040
            183946DD5AB260EBD7AD478F9E4F6E55611EB965F6046CF939FD233222521497
            E6BF991EB115CA2225BD5FFD5C748E70747214B58BD86D9B39A1903A3F8FBC06
            CFBE32D7752DE54AD6CA0D7EFE7EF0F4F4100AEAE9E383DC02234C920E790620
            83FE17131983E80B27E017E88AE76A856C8D3278AE91435A6F29E5E2989370E3
            1C6A572F0F9D4685001F37E4D24B2B1BEC070F5747B8D0F53D5D75B65D89E885
            9A6549048F3C0CC9006260F0BDF070396FDFC516F8F4E9D375FBF7EB779A69CB
            A7C38661C6F47BB37D478F1E4D40990C27523E3D79052D29DFE933A751B9D283
            5481DE0DAA54A88804A28D97AF5C4155B2EAC509A765707A067B9168F2201B89
            3E77EBDE4D7C77FCD8718CF9628CB8FF175E7841DCD3DD42F78AB56BD792F5D7
            DFFE8C076B5AF06A3EFA8C9F6937B18ABB8B79FCF0C38FF8F0C30FC4EFF548F1
            DF7EE72DF47CE555013616063B7BA6450B1722916242179DC3ED20BD4D9B3662
            E51E0BAF602D6E57B3B262929047F2640190AE35646CEA6B1B646180B0ADD2F1
            D6D7BE121A7D168FA8801710796607748FDE5AFE01E1A10065A9AAF8A9C9550C
            7E2D10E157F2D163B33305E9ECEE49F17272733D535253AF9395F4DC489DFCF3
            FCF9787BD0A0C7BA082B493C8120922910598F08A24311111188A6BF13893F73
            27A5A5A53D000227AD0E0ED4793A075B212F2B750A2B1FEF25C7A52079B2883F
            670BC620600BC92EDFAD949BA0434E6EEE48CBD6239328524E4616D20C1438EA
            B3A1C8A56B19D3E08E2CF828B251A9B4124D2B7A21C4510F2F4DB6483D3D981B
            9C70282774F3A9ACA0350EC175F6950B226F2367E2CC89D3080AF08183AB3B24
            433E5CB40A3897F240F550BAAE5686467BA7E818D335175717F1C37C9BAD639F
            3E7DD6AF5AB5AA87137D77F9EA5584843C58EC99F9F8ECD9B3C5EF9B376F4697
            2EC51760C826C3E1E6EA868E1D3B62FB5D29407BF7EE15314251EAF6F7DFFF80
            8F3EFA1041A57D9148603A4C314683060DC4774CA5478CB8B3C687F78279E38D
            37EEDCCBC79F10B8368938AE4876EDDA85E7C980D6AE554B780EF68A45F2FEFB
            EF63EEDCB9E2778E99267D33E936256510B391AA40F1154B0279830FA8FDC68D
            1B6F83772EC53EEFBEFB9EF87E16C5260C5831C47B7BD85BBEEDADF9ACD1048A
            172AC8D8D1DF36D7632C54221EE4727260AD053A4F8EC73E4B3DECDAB2124D6A
            577C2CDD6DDCE55DE0C04F383693E86582155164505FDEE86C9B0761CB9C9B9B
            AB32194DD79C9C1CCBADDDB09E82B7B918FCEE83458F19D1B14407E2C8F24790
            1788206F104D9E80F929C706BC9D42766E0E29EEBDB3480E6429F9453210C482
            15A56D6FB9A2FAA8056459F86F2E5BCF7B34942210F8070690F2E90420384ECA
            A19B56904749A4403253764676BE11B90971447F72A0C90883B7B200E5AA5587
            57EC45D4AAA24475EAB46A21A5E1C6D33962FE4FB6991E03FF286C9366C88021
            331FA7B23C702CAFECA56B9ADAEB921CAAAD4BC8305F2D1FE00C0F2715626E84
            D1B5F4D039BB0B809492D9DBE50A6B2A5B6478F978C39780CB14CFCDAD149293
            93FCDFE8D3272E858C413F52C2A5A48CF68415B07CB972983B6FDE03DF590BF7
            AD602F5B9FA8F0DE7D7B51A5B2CD7BF002A11644752E5EBA047F7F7FF1D9CD9B
            E182B2A9C5E6946A1C3B79428C16B14CFAFA6B7C31762C2A972B8F6BE137F1D5
            975F61DCF83B2B0D3FF8E0031C3A7808E7CE9FBBFDD9D7740C57FA3F41DE8757
            E4B1F0C820D72B387AE488F87BC5CA95E8D3DBB61EFF3732AC5F8DFF1257AF5E
            119EB549D366983367366A11B562F9980CC21C3208ACF03B097CEDDAB5139F4F
            FC6A02C67D391E65D86398CD0FF44311403A56B4627B3FF2E039624BF8DBC253
            598E5CDCC45785CF97C660EA71177C38EA2B7C33FA23FABCF874FBBBE5A537C7
            62DFD2AF9131CB074A32AE9259BE0390111438F24BE0DD75AE5EBE728DAC72A5
            B5E4F238C1EC0D72BBE7CF9F17B140F8AD70444746218ED09F9C982C3ACA729F
            2F1020208BA92D2CE9C8E7157552798111C706A4405C489885BFF72057CC8522
            DCC8F2FAF8F94145EDB58E0EC4571D91929A0DB3DA11F18999C8E0E1493ADE9C
            1A03257984523A19A50D69A8488A5FBB0C50B3BC3BCA386620A8F71CC0BF2CB0
            8302D3AE64DD2E1057FF6336AC2E7E3058E4DBB319B2746756833BD781020FC9
            D144A0C94052BA1927724AE38CA1FC9F17CD95D7E7956EBC392F2B2BC555910B
            67070DAA847841AB4F443C79C39A356A0A83904CD6BA798B168282952D5B9695
            60E6CA552BC570CDF11327D0B0D08AB3701D581E95799830DD5CB3668D582FC1
            FB5EF03AE90DEB3760F677774A88BE4BDFFD445EFE8F3FFE40870E77CA133521
            8F728CAE5936A48CC865E255730200EFBD871F0B41C814E8D4E9D3F778358E37
            F97DEDA0F315098F7255AD5A5518279643870FA3D7ABAF104BB00D0F8F193346
            808865E6F4191836C2564C3B803C98810C5E2A51431E4CE0418522F98880F8FD
            8F3FE2E2850BA85EC3B653EECC1933316CF83084F0BC87E5FEE9F93B00E954C9
            8ADFDF781020E23DCA367BA70E56E3D4C5540C5C9E8F34F7EA78A5EF5BE8FDEA
            CB68544C4ACAC94BB730E4E33188DDB71A572678C193509697468C841C72544E
            2140D84D735D52EE9CD9B3665F329A4DD50EEEDB0FA6063C3A94999D7DCF4935
            D4CED9C959D435E594148E01D8B5F2783D532CDB3656F9F4AF49DCB58BB0FE2E
            284DB483D30734A41CC2551370CCC487AD4A1D6213D351609210939C89FCD464
            E2BC5990F292E165CE80BF3305B25E400D8A6FAB040155EBB784EF8B1F93E20F
            25F34BFF26DF227EF223D08EE8A0DB73305DFF138A06DD490B6AC2727836CCA7
            7E81E4E44E9EC30039371512E71C29540FD6DE15B94512C520F4BB9678B82107
            516912CE1ACAE4EF49F6DD76C55A65559E63856D9D5B55317A1BC371F5C62DD4
            A0179C4301F6D973679952A11A79AFF88478D75EAFBC92141115A56BD7B62D76
            116FBF5BB66DDB2668D28F3F16BFB2302B3313356AD614F4A488A3EFA74078FB
            8E1DB7B734E318AE0A792F23F5378F0AF1E85091B0D2F210716D02EF51028A4E
            67AB1BF54ACF9E384A0ACF60E2D5A265CA94B9E7BA0C442EA2F0DD77DF3D704F
            EC0DD8038D1D370E6AA290BC34D593BC26A723313DE7409D81E04140F2E2CC5B
            A26926EADFC18307E3738AB542826D19B77B48D7BE9E380117CE9D47181DEB51
            18AB14ED461CEC1F288C6971008925356C5956C6DE7E743F14C6E8ED954EE6D1
            2D4F3A422761D3A1382C3804C458DDA00DA889D24115E1E8EC220606128905DD
            3AB7136DBC33B17C902FE9A35280835583CB17DD06C8D713BEA60314F4A0128E
            1D3FF63BC5019D76EFDC0555E1F028170066F014E5E8330D12D4A870C488E303
            AE92CD80F1F1294DF4C89D02652F78797B913530A314D12593D98A3C0A980BAC
            4A84C7A4C0906F20DA1049C713654A0F072761540C56A1A2CA8C1A1554A859CA
            8C506F15CA56A80C859F17AFE32464BA91698D042A933BCF36C2EA1D00E3CD0B
            507A9787F9E45C483A6728AB3341A59E2C4884AC37C11AB91FD6A4B336E577F6
            82E44DF424331232D7DD55146FC5C5BA65EA7C8D4A82820DA76316711DA27F99
            CE5811EB1379D6D47443AECA636DF910BF135C5C2F2E26962CEB21F4EDD3171D
            28F89D3469D2C8B1E3C60A4D66A5EE489FDD2D4B972CC19B0306880098B766B8
            5B7814EFF9F6CFE30629CFB714C07F36CAB60F20675CFFB66993D81A8F8D50EB
            56AD70F8A82DDBBA3A5978CE822D4A3BD94F6D9FA3EF5BB76C893D77ADC5E058
            900B1A383B3B3FF0CC83070FC18205F345A511F65AC501A477EFD7C8ABAD4568
            60306EC5468B98E2FB1F6C657D7AF5EA2502FC320181888C8B851FB18139DF7D
            4FA0B40DF2F0D6033CC45D14B3D4A598E6F4B93B548E63131E260EF22BAAAA5F
            3C409A04CB38F426B5D03F0420B0D93EE14D3C24B15B575A6C0E8E5CCFC2F958
            2035DF966B5A966C66CF26AE0829C77A65469E5E64EF08B90720B56AD4BCDD09
            CE2ECE6BAA55AFF1EAD6CDBF89A13D5660BD412F1E9087E0786695674CDD383E
            080810730D4E4489DCBD3C61CCCF8796FECE2120A4A6E721879EE0464C120AC8
            2266C55EA22B18E143F71B4CFA5EAD4C2954F351A3AA3A05959FEF4ED62C00CA
            C3DFD3DB6E4E0A1C4F6E823A36976BEF10B82E1D86AC5342D97122E494CBB05E
            2193E0E24DC00920E58F87A49461B9B0823A8DD0EF5B519402359F262F12540E
            0A9F0A90DCFC44994CC9C95BEC446BF8A51B512C3D249563D19405F721010CB6
            38455DF88EC84AC5D14BB9950ADCC8A03820CF82F8B42CECBC508078B3336AD5
            AC7A8C02E0F5A16543376464A647FAF9FA8BF233A3478D8ABF78F9B25F438A19
            8E9F3CF9C0CBE36AFA13BF9E886A858AAD2854ECBFFEDA836EDDBA8A62032CCB
            962E151457283D293A7B7A9EF88B8A8EC64B2F7612EBAC79B6393D2B5378240E
            E05918404C739B356D827D070EE261C293AA7C2F4B972C157FAF58B982E209FB
            BBF5729C52E4F9A64F9B4AB4C816F4777DF9656CDE621B7AEE4DF10803C7B370
            489B8B80509F8899FBD21E9E6216BD6ACD1A62FFC822E101003624FEC42C14C5
            2CD1E51E8A610F5246C63E0648FEC301720729B6B053B0021EC728CA33E31F5E
            AE902313F507EE2FAE750F40B8701CEB03A72027A7A46CF5F2F2ECBC99AC155B
            A4400A9A820203293EF015DFAB79489500C2E3F60AB516299979888ACF406E9E
            91AC4A3CAC39E982C73B290A50C14B816A7E5A54F5B1A246ED06A810E483204F
            473825FD65AB3036F834308D82B726EF02157AC2BCE253487DA6C172743914FE
            35618D3A0645E9CA301D580755A317A1AADD15C63FBF869C9A0445B9DA301FFC
            1E0A527A6B562C544D064251B6198C4B0740D3F33B582EEF80A2666702592AE4
            8C04285B7E04F3DEA9D054EF0E2996ACEA81694010592B95D50606EAA404E2B8
            57E8F6AF26D30F81E20AFD446750479103B1E8255B3B723ADE6E4A38284D1423
            A5090FEBEBEF6F20BAB2A3458B96F3F2F3F343E6FDF0C302BDD92472BF060E7C
            B074D24B9D5F12A9DE2C63C67C411C7E22D69112BDFAEAAB82BE707FDF8A89BE
            C7FBFC497101F3FF891327DE0EDC19201C07B2B709A4637876BD489A12381492
            5278B687C9D4A953F1D9679FC1DFDB478C7AEDDCB51B6DDB3D7C72B828AF6DC2
            575F12E5B2CDD2CF26CF369128184F82F6ED6303585272B228BEF6EBAFBF8ABF
            FD895EEB740E88898D41CD5AB571EACC9DE2190C96E68D1B8B8945DEC640BE6F
            AE89F5398EEC46A320F220BC1D7D410901722F560458E4BBCE696F1EF81E802C
            5E645B7BCE6E911E7C8246AB1ECB5CBC2AD1070EA4F7523CA275F541425226C2
            A213909D9943C13207693970214A14E2A144550242CD400754F6219AE4A9007B
            2D4727BA15530A50AE35D07A0CB0E167F2104D600EDB0FD3A975D0BCBF87AC7E
            2EE4C4AB6221B3E4E044C06800E35FB3A1F07080F5D601FABE8080D105E60B7F
            8AF59C726A1854CD3E20EA748CDABB5260ED0DD9980145790279DC05282A37A1
            EF6E4056AAA1F20C81F21C05A5BC8F5FDD4E146172DE0F3D796A22C2AF5D4244
            BE332EA4C8B84680B84660B8992E21852C8A9947B8D8AA93D571E375441A5BD2
            AFA8697E77074BB6414D9EDF61AAC91493877C53D3521934C26232AFBF5B78E8
            BA2AC50EB1D13182EA700CD7B3D7AB584EDE823348DD88DB3B39380AAF7088E2
            857A75EB8AE3B8F4CDD1A3C7F0CD64FB5521EF169EB5670AC705008B84074792
            1212C8CBDD09CCF9BEDBB76B2F80E44671E5C1A347445CC572E5F26531BA58A7
            F01EEE16A68171C4E12F5FB92CFE66B072F590D285C3C08B162F165E8341C233
            EB65CB9747BD860DB18B40CFA39D1C639DBD8B62F1E867BDDAB5850273CE1653
            F800A26BCC5A8AC092944BEAE32BE324D91C0585B7050FC6F24F4CEE01C8D123
            362ECBE3EC274E1C77DF7760FFAD175F7CB1140FC73568D404678FECC7FEE3A7
            50D15B8BEA7E1A54F1D5A286AF0615C983FA13104A3BCB366AC29E9147E87890
            8A94CC42FF1A0800925705683A4E8161F13BE409BA42F22D03C3EC8FA1EED013
            AA7A6F9207B801EBC58DD411260AA2CD44855C608D3D4EE7B34219D200725A32
            7D4794C8BD8248E6533F3F1A96EB9B090857A07EE95B625469B09EDC0A15EF67
            A2A31BF02B47A6FF0091D62BB01A0B101195866B0486AB6191B812938FEBF98E
            88327A212EC36C1BEEA5B7A2D44A70A16770D4D8BCB0B51005F626CD05DFE79D
            8948E139B99395CFDDDD5D8CFDC726258A20F9F36296999EBF70018DEAD5871B
            594A237919CE0048C94817DFD5AA592BB24E9DDA2757AF5AF50A9FEB3CD12F6F
            2FDBCA3D2E9173EDDA758A491E9D3622DA6FDE8C4B172F8989C122E1009F29DA
            F764E5D90B140927750607058A6C0156DEC0C23493BD7BF68879131EED2A4E5E
            265AD5A953275164AD484E12A5E4E7E6C105478D16FE6474390BC097FEE53E13
            A023A5AF5AB50A2E5FBE72FB380644D5CA55101519814E2FBD84D4D4541C3878
            106E8E4ED4AF1E626BE744F220B5FC651C1FF08C01B26EB5ADD000BBEEF2E5CA
            63F417633E8F898FFBE6257AF895ABD6A2E76BBD30B32E3D4CD856C0933A8FB7
            80B5DA40C060E0650FBC349B954ABE9D352E176912E4EC54687AAF841C1F0639
            2752ACBAB3849F81E6A54F60DA3D9DCE9355B80587198A4A2F53CCE00F494196
            83B8B4C2B73651ADD304ACD760BE718C62895C280BD2A112C974C48BEAB623CF
            4081A2EC8CF06C27241F598E4C4500CEC465E24A1479BC1C1744645390964137
            AB72132B6F248D15EE5A1B18D83348F21D40D813E12DE887272D73F3728565E5
            494A0F0F2F31731F181C24F6D5BE7E3D4CCCDBF0FE2AACE4F7CB8A152BF0FAEB
            AFA36AC58A1921E5CAED3CB0776F2F4EA2F4F1F78BFDF9E75FEAEFD8BEBDF7D4
            695367D5AD531BA7CFDCE1E83B89A3AF5EB38614FE0B91AEC2795E0F13A6409C
            BEC18171910C193418F37F5E20E2134E7BE189D622594701F6200ACEC3E8FEBD
            BD6DA06465AE46B48D271887DD37EBCEC27169CF1E3DD1F3959E18306080F88C
            57079271B57B5F010494016FBD0593D124E299C0A03BDB58F39C0ED3C8FEFDFB
            93075A84450B178902D251313170777545BEE48E1AA58DFF070059672BA6CCB3
            043EC445CF9FBFD064E8D08F8EB46DD306EDDAB5C18F4B56A35BC776F8AE5112
            707115AC3A5F149878A2CF8E56719A735E96ED5F2B7985FC3C0A98EB40F22E43
            B4E918699B2B59FE71B09CFA03D6CC335056EE22EA5129BC097C4E15614DBC22
            EE5055BA3AE493ABA00CAA4C813351353772DF2AEA99DD3FE096A60E6E8485E3
            E4CD14E833D3889F9A51DA055815EE83E8445E2EAA11B5A5B4C4709CB5B2D8B7
            4225DD59DAF1A8DC5D06836DEF3A93C8186657CFFC3920C01F2EF4B278229379
            BF9F7F002A56AA281229E791658E4D4CC0471F7E8839C50C95B28CFA6C14A64C
            9D82D0326512366DD9123462D8F0333B77ED0C5CB66C79F537DE783DA14DABE7
            0EEC3DB0BF45C70E2F60FB1F77F28AA22926A95CA1A2C82DE37B70772B05AEA3
            CC13940C449ECFE0FAC34CF15866CE982186DF877E7C67CDFDDDEB2D38A8E694
            94BB650405DC8306BD830A156D33D07BF7EC15D50679D11CCF81797B793FF03C
            3CA0C023583CC4CDC06761EBBF64C91241F172B2B2C496685E74AF4D9A351331
            1567194C9AF4355AB66885162DEF6C63FD16C56B4CCD380E6BD6AA0566CC9889
            3265CB8A94A72F467F0E9E740D0D09C2F54166113A163C389FF83400122FCD9A
            39EBF6171C206565657A7C3F7B765A7C7212AA54AA8C37DFE88DF96BFF806770
            15CC2183DD386911E9B80FF14ED5832061C5CA4A135B28CBA9D11443648A1F5E
            61A7F0AD4681F57AA83BBD45BFB740FEC76F42F7C95B903C6BC292120E5DB3FE
            C05FC4B115D43EA81A9045FCB6FEA7883B7910C7967E8B1B96D2084FC9450175
            A03E2B873ADD159E3A152AFBEB50DB5B42850099DCB08CD984C1D5A7883AA449
            6047C30B02CD8FB036451E827737654AC016CED3D353780906038FD7F3DC0D97
            A964DAC3590222AFAC30AD3EFC66386E51B0EC4ED6F7C25DD4E87E79A973670A
            D0B7F11CC6E9DFB76EABEFEAEA12BC6DFB36C9D1C9294AAF37287F983327E2C4
            E95341EF0E1E82B93FDD9959E76DF26A57AF26E65C0A2CC56BC6E12347C4BA6F
            966FBF9D2C8674DF7AEB0E95EAF462270AFCB723C8D71F3189F1D8BA75AB48B7
            67E15C2F31D34E1E8AB3165878D8B65761C62E07DEBFAE28BE48367BAABE043E
            06489F3EF647C0EE16A67BE5292EE971D70E021C0B733DE8F2C121B8151D2548
            0553389ED7A956BD063E1D3301B9BB6661D5206F98B21E5CEDFB2485C790928D
            0674DAE09C288D1B7D87A7B2D56417BE61D3C6CDC78F1CEBC233BE3CD1F7EE7B
            43B0F7E829441B3DF179EB52E8AE9F074F8F5228C8D1DA522AEF681A05DDF150
            779D28A63AAD44AB9435DAC112730EAAEA2FC1F4C724C89117A1EBF50D31B53C
            2085B4D9932C53293FE0E0321878C9E8F5741CBA6EC2E5D402E84BD7466EF869
            387BB8C3CF19A8E2A944655F051A933371759345CCCD4C8B47354C743A35BF5B
            8E1389D6CF26902C3EC2A31F129C34F77A0D1E5A654A69141E224BCC80F37C8F
            3F5B672E764C5633B45C39040707C38338B08994922DE38DB03031725440204A
            4E4A16F965B9FA0294727611E7E280F6D091C3C5763A07F3F56BD5C6B59B37D0
            B7779F05A48C837958988B2EF362AE3D7BF70653DC779328859A1568E4C83B65
            8978E69AB379332978AF52B5EABEE0E0A0AB0505FA8A69E9E96553921243A328
            7658307F01DE1964AB8FC56B403847EB6EBAD3AE4D5BECDDBB071EE47DD2E83C
            9C7C187E2B4264CEF270EF2CF23A3F14CE53B014555FE7420AF1A9C92225BF69
            D3A6C53E1B9756E2F4F701E4057AF7B6BF0D449170EE150FE70EFD78E8EDCF92
            2916AA485E921787797B7A21233303E9F46E58D81366191CF142DA0CF47ACE03
            B90985EBEB9FB0F0FC090FF92B822424C41AD07289D327D2B713EF94C66725E2
            F4E2ECFC3C2551AFD5F131B13D391BCC481673D0E07790969E8A13310A74AEED
            86BEF2CFA81DE40013717F9E352D5AB12AE7244151A58B28C7698DBA055DE771
            448B3EA208AB2B907F89082F81C7AF0C327CDB21FCE41E5CB87A0B573235084B
            A7002CC10115FD1D5127C40A2F8B1A353D535037D40DC1DE1C3D5B6D6623EFCE
            FE9A223D88C7B78B0609E8F3940C209358D675FAFDBB7D74CE0805DC9D251170
            E79362B3A272BE8F27597B5757379109EC4F542980285368683991566132DB52
            B5E362E34431644EFDC8484FA320328A22251BD418147E7E7E11A4E0C9147F34
            E214094EB1F1F62D8DFE6F0EC0E02183C5B065919C397D064D1B37120A30F8BD
            F786D4AC59733EAFB0F3265AEBA4E39A00A7DAF5EED56B17AFF7E08AF43D7AF6
            BC7D2CAFEE6C5CBF8150EC6953A7F67FADF76BCB56AE58C9D65EFBCBCF3FC79F
            3E73C6E3EE89BBCF467E26AC73C3460D6F1BBE3AB56BE3F2C58BA859AB566246
            7ABA2FD71CF8E083F74582E3F9F3E7C45C084F44164951C9CF7264D123C8A213
            3071E9F265BBCA95929C2C2640DFA41882ABE91727EC9D972D5B8AF1E3BE24BA
            3912C386DFBBCFFB474387E27BA2A73C245CAE52C5EBF9B979A68BE7CE57378A
            D97505FA340FC48A5E2698936D855638DDC464B96BB5F463A1A1B0C88B6CAB91
            A1E0BAD56EF44B9E092B2E1830E94FF38FF1F9AE1F4893273EB877042F8A4926
            A5D8B767EFD45B376F8C7072744206A1B937B9502F775752BA3C94F7754607E3
            72F4A9C5459ADCA0D75BC0CB18940A0A883D7936F0790AC0499BAD2EC8B87C90
            3C829A82C0EBB894E7886B3179088FC94694D50B067321076265274BDE3454C6
            FC5E12AAF32473123D79BC4C0085D8B343CD1E831F84A9367D66CC05C2C95B9C
            A70EBB4421D279FAB999469F652A08B856A8757A68654E9C94447A84AF9F2FD1
            252F9E104525A28FBC6EA114595403B9D3448A1F780D0AC7139C52CF142A3E21
            9EFAC236E0CEAB00C9B3A40504041EF3F2F63EA156ABF7BBB9B91EAB52AD9AE1
            E4B1E32F5DBD7A6558746464ABAC3CDBE22DCE851AF8CEDBBC484B4CACAE5EBD
            5A58571E4EFD79F1A226B56AD63CC62FE8F8D1636268F3DCF973EF2FFE65E10F
            2AAD06C78E1FBF3DDCCAC2D5CB9B346888ACBC5CAC5EB57A68AFD77A7DB76CE9
            32EA0F35162F5CB47FD7EEDD2DDBB76D879DBB6DDB08F0DC06CFB1708A4F9154
            224AC3DB7B8F1B3BF6FDC8C8C86ACB962F17A9B4D11404B35198FBE38FF78CBC
            8DFD620CBE9EF48D28AEC05AC40BB08A167DD9936402098F9071EE192734B257
            351A0C2235E6085140CED0B87ADD567BEB0DA264740FF71E4F3A57A15C7991BD
            5CA766ADB090D0B2B3A89F3DAF5EBE32303A3E2934CFA046EC08C0B73CE944AC
            044DE1DC942DF7FD2E2B6F4F44A18EC26334922D30E541A75C332E2618B123DC
            8C2D37B4B89A1734DF62CA1F425A8F0700C29350BCA4923B2E333D8383F70F0E
            1D38F0BD96B43F955C69BB0EED51A7560DDCF87FED5D077CD455B63E93369329
            E9BD57420981841A12EAD23B2B2245106C80AE65759B8AABA88BA0A280E80A2A
            2E0202224A2F167A2801D348427A427ACFA44D26C99477BE3B138C0A0A79FADE
            EE9AFB333F21CCFCCBBDE7BBA77FB7BC959AF59614A5FE985E18A6216B443FD4
            7A2A6AB4A0DC8A564A2D6FA36B254D94596CA0EC762595F3BFB58128007C38D6
            0652322EC0B06165F95D8E0169835216786DB391E6B339FDEA0423F9794B4CA1
            6336A38AD4A69C45220321B59CE82A03E37A2D7A3DF80AE8A035A0E95CC3EFAD
            27573767612EA95476ECEC05B153ED2D720038660E95C3A84646F56BBDE8D12E
            A79AEA1A419B6F30CF214C110727A772854A99E8ECE474D23F20209EAF75991D
            4E0DB46C417E3E353435B02D1D4AAD2D5AA19958938C292B2BFD4B7E4EEE84BA
            2653463C98EFFD37763253AFA6F0EEF83685F50853BFB676AD4FBBAEBD399EC1
            317CC4080AEFDB07C47D9BFFB575EB4361A1A194909C2CA24D1D23933796A12C
            746A768A37BFF7FE130F2D7D70437E5E8158EF356B56AF7B6FF3A6270279A707
            5DAC5C6E2BCA541E5ABA5464B3E15BA1EBF21E16583451FDF9E9A7174F9A3A75
            F7EC99B35A906F81E33C6AD42891C7B877E12241BB0307FFC5E79FA7CF3EFF9C
            BCDC3D840682D06A58D891C9F7E854F6FE232DC1D7018D4F229B8D2A365BE1AF
            A153B26328CCE799EBF99AE9FC5EDEE64AE48E818A01F48A60B8B9B8B4C6C4C4
            6E96D9CA94F117E21694546A6D86855A5180A3055DCEAEA735932414C06267A9
            6925256F1652FEB1B69488600CA8309067426003EFC4DA4824B7EBDA0CA46E36
            5061751B95EAAC28B3D292B235B674AD4A9EDC60E17AB44790D7EE00579BA4EC
            8C74C640F1AD0162EAE928A2C95326E365A71CD8F7C5E7B652A94D436313F589
            E8CB4EDF446AD082AFA895EC0B7693ADBE8AB21BDD29BF5A2FB2CF06A43A2DD8
            9167A42AA506E10780FDBB8323E4563906D896FC0E8482514F57233DCD73D5C8
            727FB600651F122A0071401B44D860AA5AD337F1A49B0E86470D98339B2CF0A3
            60BEC06C42893D1259454585E27D6026A1D214366F0903A3E3315CD9D7607FAB
            C6D9C5394E612BBFCCCEF9397B078704A94CDA80C3E7952C78987844B6A08D50
            E18CF83C42A155EC8FA035D88AD1EEEEE1C9DAA7645C7AFAB53F67A6A78D5337
            993A21DD9C9CA98ACDB4B973E71E5DF3DA6B93B77CF801C55F8C275FF6737E37
            6E2CFDF3DD772F9D3C756AF09449937E44FBDA1920EF6FFAE089071F7E60C3F1
            63C705A0539253EEFFE7C68D1FA23D008D4D583F74592237C32014FD29F0B754
            FCCC45AC253FD9F9C9F27973E7BDC79A8497FE95BF296DA4D4CC1AD493851E05
            A648660220286045F504AA0590A710DC6925C5A2E8F1D33DB73E46AE63002468
            C1F5E6F54084D4DDDB3B9F4DD22F6D6C6C8A2E9C3BF74A454D0D2DC541359B36
            FDE8BBDF9C3841F7B2E30F7F0F43860638472783D4C6D2A2A8D1929DF406923B
            286A7A053856B468358E0E322B7B7E70697B5B9BA5C15CECA8D3B5EB64B6F296
            365DBBAA5DCB32AA5234B6EB8C1ABD8DACB9B1CDAAAA45625FA8D7B5E72B9C3D
            137D5DED5255527DAA935C2AB4725969B9E86A458EE827015258504823478D20
            353B4C69E9E9FD72B3B38FD455D77821ECE9C9C287D378208C59AC4DB67EB483
            B78F427275F766EDD52E04DDD4A2FAB37379D301CD52AB3152BDDAC2E45F5819
            F8BF66B2D46984B905E7D9C9C555F48D0406B386F0F5157D11707A510A53C202
            0C5A997A7EF61AF623F0B235EA3A01088412EDECED90842A552A9589FCBDD36C
            6EC53B39395F361AF49A66DE0450D0D6DADA22722728D9777274E0FB9AAA9E91
            3587D30E9F46C6C0A965ED23E31D1F756A467E613C07B44C717191477979C5B2
            CB972E2ED5346B3C00D41977FD7E637050E0AA9CEC5C39EF372CBB46CDB80913
            64AFAF7E352D252D4DF15776CE57AFF9FEF1C93703484E560E192D8C742DED5A
            D4BC3973BE05A715D845B0DBA302C244BA6634D79B49C433372277317BF6BD0F
            3EF0C08E112347C2E92E484A4AF257F1B303F8F88E39074A366CEAE13A60E3B2
            E10DA289352242DD6A36F3503B35FE36DAB1F119345DA1E5B6DF80A8E36F6DD8
            30D19FE5E6FEFBEF3F75F0D0A1911D1A031AEC8703355B2079387AF888D0F678
            162B16AA86FA7A52F066F8F7975FEEB975EB8ECCD8E1A36C962C7BC4EECCB938
            DBFCBC7C99BABEDE52ABD51A4382432B0E1F3CB8F3EC977B270E193575CBAAD5
            AFFEF1B5D75E6FAB2D2BD2FA7B232219CA32729D64E85465ADC3EB24CA73144A
            39A9EBD482FFE06701825658C4AAF3F9C3D8457C7C7C3DF77CFAE9614D636324
            DA5E2D5955CEFCFD2C3611C205C930DBC36297F66561D5E9BA1EA8B630571243
            005B901CC40E2E1C6A47BEB60F9B4FAED4B3672FE15C8312A6B959C3FE43AEA8
            86C5AE53C72685BAAE962A58883B869B137C0F056B08D7F3EC83C4B3EF714E69
            A7BA62AFB26B4228D760AE5246D816FDD4028580135F1F42EFC080B2B4B21682
            0FBBBA910506820733AD8D77606F7E96FE5151C2CF4287A1B59595275FCF9BB5
            4DC891C3875F2E2D2E0E81E611BB3C2F34EC7E241C218C4A8542D3D2DC242FE2
            67BFD9F9909D01B2E99F9B9F7C78D943EB2BCA2AE9ECB993FCFE5656E7CF5F58
            CCF792B12CDF72D2F959253CAFD67AA3619F9F8F5F219CE92FBFFA2A8477EBA9
            4AA542FBA3FA27AC814E6FCDE650BDB3B373B18D54E6FCEEC68D9FE4E6E759A1
            C10BA5EE16B7E11D8F64E13F73FAB4305BA7CD98B177DFBE7DB31312133C070F
            18580A33CB81CD60F49D84F5B8750720BA1C7156E1E2458B4449CEC30F3FBC6B
            D3A64DF3268E1B43830647D3CBFFF8079DE27B24272689DE779C5A959199E5F1
            FB99330BDA5BB5D2BFAF5CE93963C6F4F2375E7F93AE2627920FFB9EDE7E01AC
            298AD9DC938A43751089EB3240D03B8E1D73F0E0C1E804B4DCB16DFB9E92A2C2
            59B0E71199183B7182A826D5F34EBB61FD3ABACEF6B9B7A7D78FBA0A6FB170E2
            073B189C55FC58B0FA806640F9BC83938320D3F60FF02777FE3B5EA81611257E
            BE1C5EA4AACA2A014EEC32E8FF160C9968DC522A713E5DB9AD429E181212728A
            4DAD7816CA785B5BB906406866D347D3CA4EBC95A995B7A3E71DDAB295553200
            82F53730489A58A3787AB83348ED44CE03E7DEE1582FECCA85BC21585A59B0BD
            EF82DEF9A1A9A9A9332BCACAA6D4D6D484D7A84D0C75760C0CCC15B40CDFA34D
            DBDA6A64BBA79DE7D28237126B068A3584AD859F27F9EA559123E83CB2B2B219
            2003A9AEA1818E1E397EF798B1A33F5BF5CA2A06A6563434216F632BD8438C37
            38EE10BAEE2CBF9863F4EAC81432B6D3ADA927CF696E6E9E084400AC370308AE
            0B30C36C41546CDBB66D8F2D5FBE5C64415F5AB952F487DCCE18356A249D3E6D
            3A7262D2E4297BF6ECF974CEE6F7DE9BFBD4D34F8B62315821C8C243BE6E35C0
            DF86042C0830FEF5F1C7C123860FCF5BBFEE2D6AE4B559FDFAEB8285073E3398
            1ADD79AD468F1A759541133E71FC84B7A64C9BFA146ADFE2CE9D678D7B55ACE5
            2F0E105C008B8156597CB1F87AE1BB274F9E580EA105A3C590E86811C100A3C8
            3B6FBF4D591919E4C3BBAADEF0FDB2CB8EBE05ECD88D2CA42D7C2F38538ECE4E
            22DAE3EF1FC0BE833705B390B8B8BA0AA60D9039E4B090A0560761D76A103CB0
            AA45D8B363B8B3B9C58E6D8DABBBDB055B996DBCCACEEEB4878747929D837D83
            3B3B9AD59595027C28D083E4400BF06E4A52061376F61F0204E61412870D0C3E
            C4FFFBB2AF018A9EAC8C2C0156482218297358C8D8E758A2AEAB7B94B5C48026
            BEBE9281C05AA9CECFD7EF34033FA1475858566D5D6D7E497149FDC44913EAD5
            EA8696A4C444033BFC92BB66CF36ECDDBB77D3E12387E74746F463073DE947C2
            F1EDB7093432369635999EE62F5CB4D3DBDBEB39D694F9ECC08A928F560616D8
            40000014484ACC791EFCC0493598C9AFB109A91C54E460E740FD712F76A49103
            41B6FC660041340FEB0D908C633F2930288806460EC84A49BD1A0A93E71AAF71
            30FFEE76C622D6587B583B6AF99A3366CED8BDEF8B7D73972D5DF6D4A6CD9BC4
            B1C3725B19AD5ABDE6A6B44019AC41C37BF5128E3DFB4F9FAD5AB5EA6EB0E0A0
            B94CC3FE6468680FA1F9FBF5EB275A329E7BEEB917DFDBF4DE0BAE2EAEEA75EB
            D779D9CA642DF0ABB66EDD46A5C585E4CBF2E5E5EBFFCB03A44F9F3EC2F943CC
            3B7A68349CA9C78F1D39BCDE5E654FB5EA5A0A663589126FB0C36FD9F2019D3B
            17472A50F3B00076946843486DD84CC1A2A0880DBB47183BD4607144F61AC25B
            C1F6606E6E8EE8C5862F010D515A524A2823C750985B7A3DBDBCCAE572454260
            60D0195B5BE945B6C1E3BD7C7C5A90C86B665B194263CD2F8F038260AEC1EC13
            4C247C0D0004DA0100C4F3418B003C6A7E0FB9AD826DEE66A125A6CF9C214E49
            02B1F2C7DB3EE6E729A19050D30E5F565676FF95F8F815C525C5816817F6F1F5
            CBE767DA1A1ED1F7383F5FBC4AA93240CB01EC15EC505F387F9166CC98C68B59
            2D840BA01BCC1BCB3FDFD998F66D42426FD4348161F087E3E2C54BA201CA8535
            57316F460060BFFEFD0FC48E18B1DDD7C7F70BF6797410108019E0C6BB83201A
            A0AFA9A916262AFE0C8D0080408886F1FA5DBEF22D9B88D96263129B16B8C0CC
            1B580740340CC0C8A84882CF82C85ADCF9F38347C4C45CC267FA47F6170760C2
            C4BD2585184FB61B18667833DCB17DBBE8282D61C16333E98377366E7CE89967
            9F7D6CFD9B6F6EE808A78F1E339A9E79E6591A67EE57C798BF603EEDFC64A7C8
            3DBDB571438FC080C06C2478B1BEA8A9463020A27F3FBA67CE1C1C1D38F3F915
            2BC4E94F8F3FF6F8B8C993267D0DD9C5FBE37D9313AF083E34BFA0905F072088
            6D2389161D3D4C082EABC6D9B939397B8CE83264DBDDCED19E1E7A7829F5E707
            06E54B6E760ED5B07986564A8001F53508B72229276C7FFE7D1D5F1BB1F2CC8C
            6BE2E110768586683653D048798151EEC12F53E3E8E810E7E4E2728505E36C40
            6040229B26F51070082048B77194433B8318BB2A8347D8A4A854FE1E40CC7556
            5854B40F77D06422738EFAA2F3E7E34474EA1EF605F03B7C362539850E1CD84F
            75FC7CBCE001A74E9EDC949D95391E72D1BB4FF8999EBD7BADB7B2B4FE5C6A2B
            1502D1DC64A22582E9879DB7BABA4A5C033B314A47209448BEA5A7A50DDCBB67
            CF65648DDF79F75D7AE4264419D93C8711E17D88FD2544E6AEF07A0C60F34D62
            CD421CD223AC302636761B9B653BFC02FCAF21A286CD25B25F7FB264614C4D4B
            1549512B5EFC7A36D1609278F0F3410B22F2A6EF54870393111B18FC2C98A1E8
            080509DC889123A817EFE0F837D4522D5AB870FBB6EDDB17DC96EAE834143652
            01425C1BC9BF9933661CF962DFBE291B36BC3DE5C5175F78BF595DEF89DF5BB1
            793B6DC6747A78E93241AF3A66C428C18B3679D2C483CF3EF7DC74F899A89183
            49EFECE42CAA88E7DFBB00BF8B9E3675EA79C8EAF098D857FEF4A73F3D0F161D
            AC03360570A77D79EC08D5F37B87F4ECFDEB010421CE4183060B1F0026556050
            E0E0CDEF6D3AA86F6F73839AC794A33667289B2610C6C68646117244E5ABAE5D
            2F8439E35A8648CEE15A883AC16C6A35D719C9050D900C3DECA52C48896C7E9D
            7672748AE7C98D57AA542D4A167C7B366FD8901726062A621165A9647F04B544
            D00E3703089ECD683A0B98DAF93368DE99307E0283C05F0815DE352F379F56AC
            789635E103F4F0F2A5C2C7C1B320EF1077218E0E1F3ACC3E46E9AED28A0A69A0
            7F4056D480A827D9543A0A6082D402513B3F7F5FB193E35E783F94ADE09D4F7E
            7382EE9937979FDD516C180C767660CFBC7CE4F091150836A4A4A5DDD45945F9
            FA3D77CF6630AB78871DD3CF566E5BCE5AF691DCECEC85F9D70B82B0F7BAF106
            3260E0A0230C92EDAC89F70D8F19DED2A2D5A08D5A7001E8DB7502109823E45A
            405184927B477B47112C80C0A182C0C9D159043A9043C1F3C32F8296C02604F3
            13D641754D8DE22F7FFEF3497D5BBB03FB78B7D7BA64FC8EC647708BE974929C
            BC3CAFBF3DF3B7D5F72D5AF48FFD070E3A7CFEF9DE97E22F5C585E57536BD56E
            0EC023FC0E4D066DBFE19D77C2D9CC4F4342129509D0FA48A8A2E2A141D3346E
            E50B7F3F565B5B67C1FEC9CED56B5E9B0F33BEB5530E06327370DFE774EAC409
            EA3F70F0AF0F109478C3594691D9D7DF9CF0DBF6F1BF8E482DACFAC06104F58F
            3F6B0B38A7A81045156C5A6AAAE07605AAD5B56A6A33E8445253CA0F899A2FDE
            C1AABC7D7DE27807BEE2E6EA7A9A7D90643BA5B2B18C774503EF746846428899
            4D17B6FF1DD9E9958A09B03287216F051064CB111E6C6F6F138082B38DC46056
            5626CD9C3993860C1E4A19ACBD22FA458893A8DE78E3355ABC7809DDB764B148
            90A16E293D359DD6BEB9F6D103070E887A8E11B1B11BC2C323FE646565D90E56
            13BC1FC2BD3011C18ADF1920FE010142E8B46C2FA3DF013E17CA5D50EAB26EED
            1B49571212FA4D9C3041308AE05AA04605AD4F4A72B2D848F2F27205C905126E
            AC35A7F5EED5FB100381AF5D4285850533790E16B3CF37033917E842D6D265C3
            878FFC24AC678F3D5299F41234350A1D4BCBCA44D23098D7C5D9C5599864303F
            A1C56BAA6BF9DF8B59F3475252621205B0962F61B316733C6AE42842BC052631
            4C2594F4A3FAA059D364C13ECE1DF6F699C002396B6F6BB56021F4626BA094AD
            0C43667616D9D8CA42CF9D3EB33C3DFDDAC2A2EB052E1D56C4C489130FBFB26A
            D554D4BF81730DDCC2BD7BF7A12836FFB67CB4E581B56BD77E80CF797978EC7D
            F40F8FCD9E356B16CB59ED0DFF0B0356C8FECF3FA3E3478F5214AFF9FF09408A
            F8CF60EF3B73E62C7628594D55D5FEA4846FC7C3CC68D1684D1D620613115C47
            1D139A69144A054CAC5285ADFC5B6737D733CECE2E1759A0AF84F70DD7220B8A
            1D1F113224AC8A79A1D08C04B3ABC32CBA1D8028603ED95813340EE2EA83060F
            12E160446FACD98C60134990B5F58BE8CF664C96B0A9B332B369FDFAB768DAB4
            E9B460E1BD623EE0A8AE5FB7EE49F60FDE82593379DAB4077AF408DB0227B1A3
            5F1F0041BEA5334030703F94A60F1E3A447C060937F83A70F0D9AC0C7DF59557
            B260EFF7EE1D4E4E2E4E7499FD8DD2CAEF1F2B60CBDF41F24F69675F3D2C3666
            8A8FB777BC8E3502E6DF8ADFCF8177D982BCFC6089A5647E416EEEC2A2C2A250
            F86B36FCDC03070D4A60F36F6F6848E87E2B6BEBB46A161A6F36939007025D29
            B42BD6A78E37ACEA9A4A5182035022C30D93D5D1C9417436EEDF7F00755C2C90
            034542B6ACACC41CEA3645FB508746669649131BA2C44C606D349FF5D171CA44
            E7C3474CE6164AE9711A31B45DCCF0582A4506DBC25259DFA01ECF609D909696
            3EEC85175FBC9FCD48B6A6E28525803A37849EBFFEFAABF5ECDB2C80644D9A38
            E95DDE8C1EB5532979E39B25644EDF29928A90F2812FF6D2375F7D45918386FC
            DF02E4E8D16322630ADF64C7F66DEFB0FA7F04A60F08C7202CE0C665E1A8F2F1
            F3BBC8763D0E7538E360EF982095D934E9F5A603535A342D824B1755C4C28946
            D28B77DB92D2B22E0104111CAC0AFA25D042ECC2A0E5DD4914E781D717A0B819
            403EF8F07D512232E79EB93478C8107AEAA92767B0ADBC4FCACFB260E1C25901
            8141FB30070088A023B59488FB76D620C8A5C0F62D2F2D15047843D919477E06
            8B0B19410EE7C0FEFDCF7FB6F7B3977C3CBCA8BCB28CDACD59553706945C66DB
            CCBE43069B4B498E8E4E8972853C49D3ACB9B668C9E25AB04BEEDFFB055DBC70
            4124F4640C1ECC1DFCA55AD6CE7ABD6E426545E5FCFCFCFCD98525C582761151
            BEA090E04406E63E5EBB6F4243432EF226A147140F0C964585C50C982A62E0DF
            0048319B2EF60E76BCA6D1A22F03CC973379676E50370839C0DAA27A00C26F7A
            2F1328E0D3613D3B9CFECEA0F85EB4CC68A26F850581EB41F8038202E97A7E81
            28D7C7E902A87CD0F2B571622EEAB9047F2FDF37FE52FC1F0E1D38F0526171B1
            A33D9BB7A161618F4D9830712336640457EE5D70AF98FF7F1B801C3FFE253B81
            F53466F4188A8F8F07DDE82C1B1B9B51FCBD505F5FDFB361BD7AC6B1A913EFE8
            E0A0C5EE95CAE696A6B9450817D8531065C0AE8892734C7A5701023B13A163D4
            5841838C1C335AF475200E8E88C7B9B36728332353F4BEC0C4BAFBEEBB79871C
            48999919C4FE045D4BCFA08DEFBC4D2141C1B4F0BEFB10A6F65A7CDFA212E44D
            962E5DB6283A26661BCEC080CD8EAE3C2C308E5940461D1440B66CAB8395BC5E
            5D2F16A8834C01A689E86247BB3BBF4B9B4EE7F4C1E6CD35083FF3A6D16223B5
            CE542954C9BC415C912B14A9818181C94683B10ECE31EABE242C74A957AF0A67
            147374F490E9445808A9ADB97A008D49784E686FBC6F9D5AAD6C6ED14C29BE7E
            FDAEDCDCDCE9E5959582240B2DBF0CA6AAE0E0E0E33D7AF63CE3E2EC7249A954
            5D6580182323A3207CE260D702164E080C00B27FDF7E51DB3679DA14DABAE523
            E1EC0F1838506C2A988B0FDFFF40044810F68DE47944240D00C3FA415BB2A927
            2A12E007897C0C48A9D1869B7E4D846811D8B97CE5B2D0C83DC3C2443004F30B
            933324B48708BC2424263AB15C2D4849495ECE7F161493117DC34F30A89F604D
            96EAE6E62A362C2BDE60C1CEF26F0710A8DC986131A2EF0011112F4F2FE1A30C
            1C34509480608220BCE0CE42FCDDA037EDBEC8CAFF520081AA6FC0012DBD7B09
            7200D8DFB82704198E66DCD9B382090414A1990C907163C7CAD9A6B7CFCACE96
            0D181059979B93A7DDB573BBB67FFF28F2635B7DFBB66D67AFA6A6C64E9D32E5
            B19898D88D98F4ABEC1BA0C30DEC86587C1155617B1EDC537020AD055FAF4C80
            0CBB7A93B91EAB23730773A9A8B878203BA5F739393AED777072CA5429954528
            ABEF111A2200871AADF2B272C1F88ECA624B7E7FCCF7BC05F3C51C1D3F72EC96
            0041E20F846E7867BFC0006106F11CB8F27547B30D3F352B33633CDFCB1D3909
            2138EC873020AFDB39D8A78487F73DDFD8D898C1CEEFD5EAEA9A223F7FDFB691
            BC7B6FFB789B00C8EC397713035B44D6A05D87B0E928CA425E7F43F87610EE21
            D143C57A00605837442FA17DE04762DE3A0082232012D8DFC1679F78F28F825A
            158EF5C89123458502B4086F5CBCB3598C4E4A4898919C943427B7205F942887
            06055DEBDD37622DFB871F6AF8FBD70B8B44AFFB7F04404E9F3E2554296C4BB0
            5FF48DE82B1E0E8573704E51B3F44B0204E40788B0145E472D983B0D1D3A943C
            D9AC81EE87C0482C2C849A4709C86516AA1C36A7F28B2A9E4ACA28BCBBB555DF
            830CA420891171C026BEA9868C9286F030D7EBF9551A5D7359DE44B9BD836ED6
            F40953350D7579919103B20B0AF2E93A6B8BFB162E146C301DC71E2037830E3B
            3438C1898589D071DE5EE78177454531E89540458A39C5EF40FC1DC4020D81F3
            15E6526D970102DF4D9049383B894620954A21225088962527A7209D1FDDD8DC
            185D525CF2BBEAEAAA41A5C5C5CE784A88133C07D0932A55760D0C9CABEEEEEE
            B94DCD4DF9BCA3170C8B892DBD78F142299B7BB5915151EAA1C3866A10D2DEB0
            6EBD3033C1F78553ADA0C121E45273CB2D360C98D2D840B066580BE48E2E5FBE
            C273564BCB963F42A74E9F523280FDD8E208FA36216170637D435446C6B5F1F9
            0505D678365B9E035F7FFF7341C1C19BA2A2A2B6A3DA0129072D9B8875ACB1C3
            C27A7403E4660081EF8F30716048B0688B458E01F90C71BEDD0D125E1261D5B4
            D4345AF3C6FADD95651573C6F5B5A5BE0E465E444688D48AB4CDECFC292D4927
            B5A6F7CF6969A80F9156628F3E13635E7193045D354E3E6E89BECE56FBFCBCBD
            D72FB96F513D1291A276CB3C0012FCE0B9E0DC8B82BF9B0004C7377CFED967A2
            C0109F43EE019AE3D70008DE1D4200BF0BA5DF088B8244DC9D7D1954356B9A9B
            E56CBBF76D686C886473294AD7DE1E7EBDA0600083D7A6CEDCD567AE9FA60E13
            0DD12FBE4F9D4AA5AAE377ACAE6F68A864EDDDC6C0D2F807066874ED6D8D7CAD
            160B7E39B9AD5CC77E250A3325FCDE562CB4467E3E2B365FED594B3AF2E666AF
            902B7C59307D4ACB4BEDEBEAEB6FCC954AAE804F97C966E8176E6EEEFB1A1BEA
            2F815E08F767F351A410DAD8DFACAD537703E48700B195CB44B816F67604DBC2
            F03F1033871D2BE97C30A7D1281C47770F377A6DF5DA778F1C39B8FCDDB99EB4
            7CA244B0EB89D587B5E1C242506549DB2FD6D0AE244BDAB2D0813CBCF4545F48
            94CCFEF7E5621DED4F69A4B3B97AB273722C79E58515E3070D18985E6BA6EEF9
            E1309A05B3A364BCC359FDFF0408C29ED0B4D0BA4A3B959853CC354C51F890A0
            FD81BDCF732FE7EF05E5E4E686787B7A065ECBB816D4AED305488CE457555DED
            C5DF71AEA8AC9068CD64E47264EAF95DDA3B85552DCDA0EABC3D74101B768E0D
            4333B4A00C864D4F77778F3A36E572F9B9AFD82995DFB2563AEBEEE19989A2D1
            26060398E3E16379B87BB0F3DE2ADEBB1B203F0008760FE45710D1E0DD4A9452
            605781ADDFC121FC7D413592B79707EDD87F7ACCA9ED6F7D73DF280F7A798C05
            D9E8D8046B33ADA04C4194D56C4533375651A8B70BF5F455504BA39A5E9F6841
            7291AC31FFF0F39E48B3A4BBDE2EA221E3276F7BEED9671641807F342474E328
            6394D5A046CA602EA7F8770208EE05402077859E7738E7E05D467211514838E0
            387067F7AE5D22F13B7ACC18D004C98A8A0A554D8D8DCEE3C68F77C82FB8EE92
            70E58A3DDF5361656D6DA3AEAB53D6A9D5F6BC3EA87434B69B2BBBB12EEC1B49
            90D18683EEEAEAA6B6B35355F1BCB446464615A55F4B2F0B0A0A2E1E32784833
            FF59C8002C03299B6388B421EB0FF316BE4937407E022068F847220B9F454908
            6ABCB4E666A19B6DE388AED43468242B9E7CB430CAB5D6E7DE68179AD9DB409A
            4ABE9C799BB3F5247AE26335A536B9D2272793E8D489D3F4D2925974EA494F72
            65F0B4B4993FE74094572BA1451F95932C6CE4BE7B172F995557534D371FA692
            161F6F1F0160C178FF1F0090569E4B6863AC17D63D26264664F387F1FFC78E1B
            4707F61FA0FCBC5C52F2771EFFE3939490944C5F7DF9A5F83BDE030725959595
            9A72603A83C8DA8B024A739046C26B8E40465060A0608387A9848A86037C0F38
            F403060C64E73DC1540BC66B8BCA6CF874908F6E80FC0440B09BE19C11947EA0
            C9C6D7DF4F1038FFD419E6D8B58383FCE9F937B63D6148787FDDB4586F9A13A4
            274F1BBEAF79EEA4FCF52616A839EB8BE9C1175FA6D98FAEA0179E78942EED7A
            978E3CE3453AB591F4665341EE48F475A6849EDC5E4A83A62FD8F8F29A371E43
            41E54D87F9504F31A7EC13A13A18A6DE7F22407044337239D020870E1E1487A9
            626D16DFBF8452D3D245CF87AD997E55905CA8EB0408502B05A67F6C62D00030
            47A1A1B0597878B8DFE004C081A627BEF946984F083527A7247703E44E008268
            08AE05B23424F750C9A96DD17E278837DFC05978E45451D360BD61E51F2BA3DC
            1A1DC686DAD3826823694ACDDA0336B092E84C4E3B2DDD5647571B7564C58AC8
            576147CF8ED5D3F209F6D45C21FAA6844F2167793B966A412B8FD592322C66E5
            F871E35E44D7E2AD8684BF084732BC6F8438231C02FCDF0C10BC070E59AAAEA9
            11217071A49EC160096DC23261D489ACB041E4C0706E0840828AE16E80741120
            D01C45C525A4E18547A946FF0151A2A51595C4C68E23A36E850FD61E0101FEF4
            DAA62FEED75DDEF8E1A4A13E744FA09E3C64446DBA1B1618C9DD89D61F6BA7B8
            A2367AFA8DCD94999C4EEB57BD4CC71FF322672B0369DB3B018E4DAC9D49125A
            73A2915C22C62DED13E8B9B9B9B9997E6AE0DF7BF709A7D81123C47BC11FF96F
            05080A082113478F1FEBDC55DA79956EF8EC2869C7F926B5FC0CDD00E90A40C8
            14602A2BAB106DB6FD222244D30CC071537FE3070342A0E7977E7FFDEA8C109B
            EB6133FA39D3BC41AC3DCABED31EE27C3B17A207F758D0AC9E461A1A504A6F1D
            66A15679D35BB38CA42D6547DB7C2B71EC3083EB9D0403BD73BA9E262D5B397A
            C6EF869EAABEA50F62960EC1EBDB22CE5301106066FDC60072D3C1DA579056D7
            D57703A4CB1AC4D497DE4A4387458B8514C4023F0B0DD379E698ECA371E9C38B
            8EAF39332EC2991684B2E9C4E694B6D3BAD9325040F43E7E27D117F3887CFC24
            347D93919E89268AF601D9DC77DB1F58596AF9B3EB2EB4D18942EB36AF415302
            FC5C9465EDEDED3FFB3C8D8D0D141C1C2AD83E10F60509F67F33408E7FF5A5C8
            98779C4ED67974FCBD1B205D04088A15B1D0D865274C9824EE2984DE5C257A3B
            03D9736727475AB1F21FDB2DF34F2E78749C37CD1B68A01614CA76523EF037F4
            D644CF7D43940D1A6106C0E81E448F8F6420B1A631763AE20354552955442F1D
            A9A666A77E99731FFD5B4F636BA358949F1B3A5DBB105C94DF407010B6EC0648
            3740BA04104196A0D78B6ADC8993268B10AE4EB4DBDE3EC72416AAB8AA41FEFE
            CA07AB7C65F5F20707A82826983542C3F7AF02D90685A9B59CE8548E29B73832
            D0C4DAA8EB7447E1ABB029F675BA845E385041CA5EC33F5DFE873FDED328B87D
            7FBE25026616B2EBA84943320E49B96E807403E48E0102C2065366D75150FD88
            30EE4D927F3F3530FD6EAE2EF4C9E10BF7185376EC5A10EB410B7B1AC8466F4A
            98FFE8F346130BA58DDCF4656D8B0938DFBB2572202C6BDB932C68E3D795A488
            BCEBCF778D8F7EA3BCA2F2B69F0D408770A3A702C2B877CF9E6E807403E4F600
            2288CD1A1AC9DDD39D703609EE639A5CC31D698E8EE1E9E9417F7D66E55E9BDC
            E3BF5FC6E6D55D91066AAE341D9AD39521635FA55C4BF4719A814E65B790E3B0
            8762470D0C8DC333DF0970DB79512322FAF1225AD3CE4F767403A41B203F0F90
            0ECA4B9490A03D170D4E985C53C3CD9D0B33163BBF4CED786CD33365E1CE1AE9
            D820394DEA45D4D270E7D7EA106C24088F5E253A90D14CD9CDAABAF0DF2DF6B0
            B7B568BB53823C44B3505019C082BF8B01826ADE6E807403E4960001E95A03EF
            C2A8FBC1BD5078F85D5EA16BBCF668B4D9B0F5C86279E6A68F260EF0A6C9EE06
            F2B5A31B99F33B1E30AFDC883E8AB7A0DDE7CBC910347EF7637F583617FDD177
            8A60080D8400A5E13BB7EF10E47ADD00E906C84D0102EB09EC803037507FA350
            C84525AEB9F1AE6B8305D6C9C99956BEBAEEC040C98569A37A7BD1E2FE06D2D6
            D38D7CC69D0E94A254B5117D962FA15329D5541DB2E8A1BF2EFDFD0798C03B7D
            524B4B0BD2685A8449793EEE9CE0DFEA064837407E0C909C1C615AA1D215272D
            C1AC42B391C9E1ED323C58F058D0EA9AE5273E7EB57C806B83AA87938216C792
            A930B18B9745F6FCB36F890A5AF474B54C4BBADECB22A3FBFA242161D995810E
            3F7B7B3B3A73E6B42087969A89F0BA01D20D10D3E94E2ECEE2B4A23A16009843
            D5D595226A743B64C83F3730395965DA31511697BE0977B7A048670B11B66DD1
            74ED7A469E5FB927D19B5F11E90C4D74F8BA4BEDEFEE79D45B25B5D07695A01B
            EF09620138E830D3709E38AA587FAD8EC26E80FC8701048B8A441E4A9CB1E3A3
            4AF74EC2B83F35C02CFFD2DAAD4B5ACFBFB225B6AF274D773792AF43D74F45C5
            41446AFEEEAE3C0B6A6D2CA50DD9D1C75E59B17C12E6E3678FCBBD15E884DE90
            88CEC7BC9C5C71C41AE858ABAAAB2928C0BF1B20BF6580200108A23294428387
            D5426271E3D8E55F62F831409E5BF3E152A794D5EF0DEEE5456136061A0A0DA2
            ED82209B93839FC73348A4967439B598521C17CD5B386DC82E1C1726F95F9882
            E2102183411CFC0342B9AB575385700706766B90DF3440B01858181060230908
            DBFB971C48386697350DB42B3974797CA88C46FA5A522F3F226DA5D949BF4D99
            16E04099898391DE8CB3A4E28A4ADA9DE155FED1F68FBC64569646ADB60B88BB
            C58050E0BCBE8B7171E2E04DCC7537407E8300C18E0B0D121AD64350F99BA8F9
            BB9608BCD540A52C5E72CDEAD7BFCC4BBC34EED9595EF4C050223B392F0AC80E
            EBD961379B5BB7B2EA105D93E24052D61E5BCE5B524E9586FE75AA96262F7D7E
            F45F1E9977AAA2B2FA17D37818086D836AF4D0A143A4522A44494A37407E8B00
            319A0418C46225C545A297FC971EB8AF0B0B45726A86F2BD8FB67F515B5A3A36
            CCD39AA6F595D2F45ED614EBC730B525938AE86813BCF165329F822A11FDE77F
            D9ADA38357D464C5686975EE3FEFB5954FEE92CA94A232F797F2993A9E19473F
            E01099F2B252B106DD00F98D0204D7EFDB2F822A2BCA7F15806020A7909F974F
            3AD64E29C949F393D372979494348E207D934D6F3F6B1AE4ACA150370979D8D9
            909DCCCAD4B7004201FE6944F3B9753B5D28B4A10F2F59537844E86E570FCF55
            4E728B94B16327527070E0774470BFD0E8A0EB3C76EC18A1F81173D70D906E80
            FC6A000129595A5A1A3FAB8E743C8938B0C62831061A2DACA3E22EA747B41865
            A13624716B68AA73D4B5B72AAD6DACAC85A96730B6CB9576354AA92CDFCDC3F5
            D2907EFEC7ED94AACC8AF232CACB2BA0F9F317B0C07603E4B70490FF01242FF2
            FE6B6FBC010000000049454E44AE426082}
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object titulos: TfrxMemoView
          Top = 124.800000000000000000
          Width = 720.000000000000000000
          Height = 28.800000000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 124.800000000000000000
        Top = 230.400000000000000000
        Width = 718.110700000000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape2: TfrxShapeView
          Top = 96.000000000000000000
          Width = 720.000000000000000000
          Height = 28.800000000000000000
          ShowHint = False
          Frame.Color = clNone
        end
        object Shape1: TfrxShapeView
          Width = 720.000000000000000000
          Height = 86.400000000000000000
          ShowHint = False
        end
        object frxDBDataset1NO_FACT1: TfrxMemoView
          Left = 86.400000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'NO_FACT1'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 9.600000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '# Factura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 86.400000000000000000
          Top = 28.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 9.600000000000000000
          Top = 28.800000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 86.400000000000000000
          Top = 57.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 9.600000000000000000
          Top = 57.600000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Condici'#243'n :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 576.000000000000000000
          Top = 19.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'CONDICIONVENTA'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CONDICIONVENTA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 576.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Condici'#243'n Venta :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 220.800000000000000000
          Height = 86.400000000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 316.800000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'CLIENTENOMBRE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTENOMBRE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 240.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente      :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 316.800000000000000000
          Top = 57.600000000000000000
          Width = 220.800000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 240.000000000000000000
          Top = 57.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cajero      :')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 316.800000000000000000
          Top = 28.800000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 240.000000000000000000
          Top = 28.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RNC      :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 566.400000000000000000
          Height = 86.400000000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 576.000000000000000000
          Top = 57.600000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 576.000000000000000000
          Top = 38.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '# Comprobante :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 96.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 96.000000000000000000
          Top = 96.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Articulos')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 345.600000000000000000
          Top = 96.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 432.000000000000000000
          Top = 96.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 518.400000000000000000
          Top = 96.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ITBs')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 604.800000000000000000
          Top = 96.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 124.800000000000000000
          Width = 729.600000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        Height = 19.200000000000000000
        Top = 374.400000000000000000
        Width = 718.110700000000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset2CANTIDAD: TfrxMemoView
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'ARTICULOID'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULOID"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          Left = 86.400000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD1: TfrxMemoView
          Left = 345.600000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          Left = 412.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset2ITBS: TfrxMemoView
          Left = 508.800000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."ITBS"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          Left = 585.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 220.800000000000000000
        Top = 489.600000000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Top = 37.000000000000000000
          Width = 729.600000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 412.800000000000000000
          Top = 45.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venta')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 412.800000000000000000
          Top = 67.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ITBs')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 412.800000000000000000
          Top = 88.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 412.800000000000000000
          Top = 109.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total a Pagar')
          ParentFont = False
        end
        object frxDBDataset1MONTOPAGO: TfrxMemoView
          Left = 537.600000000000000000
          Top = 111.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTOPAGO"]')
          ParentFont = False
        end
        object frxDBDataset1POGXITBS: TfrxMemoView
          Left = 537.600000000000000000
          Top = 68.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset1DESCUENTO: TfrxMemoView
          Left = 537.600000000000000000
          Top = 89.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset1MONTO: TfrxMemoView
          Left = 536.600000000000000000
          Top = 45.000000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 141.000000000000000000
          Top = 57.600000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 19.200000000000000000
          Top = 57.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cabtidad de Items')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 48.000000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 460.800000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          Left = 76.800000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despachado Por:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 499.200000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 28.800000000000000000
        Top = 729.600000000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Left = 403.200000000000000000
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact V. 3.05 :  Iasa Soft Developer')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Todos los Derechos Reservados')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 19.200000000000000000
        Top = 412.800000000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = combo
        DataSetName = 'frxDBDataset3'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset3ARTICULO: TfrxMemoView
          Left = 107.200000000000000000
          Top = 1.000000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'ARTICULO'
          DataSet = combo
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[frxDBDataset3."ARTICULO"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object Dcombo: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a'
      'left join MtArtuculos b On a.cod_art = b.cod_art')
    Params = <>
    MasterFields = 'ARTICULOID'
    MasterSource = datos.DsDetalleMaster
    LinkedFields = 'MACOMBOID'
    Left = 376
    Top = 104
    object DcomboCOD_MANCOMBO: TIntegerField
      FieldName = 'COD_MANCOMBO'
      Required = True
    end
    object DcomboMACOMBOID: TIntegerField
      FieldName = 'MACOMBOID'
    end
    object DcomboCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object DcomboPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DcomboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object DcomboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object DcomboARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DcomboCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object DcomboCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
  end
end
