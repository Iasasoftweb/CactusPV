object FrmControlNCF: TFrmControlNCF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Comprobantes'
  ClientHeight = 297
  ClientWidth = 618
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 9
    Top = 127
    Width = 601
    Height = 106
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 597
      Height = 89
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsQConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data '
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NUNTEXT: TcxGridDBColumn
          Caption = 'Prefijo'
          DataBinding.FieldName = 'NUNTEXT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1DESDE: TcxGridDBColumn
          Caption = 'Desde'
          DataBinding.FieldName = 'DESDE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1HASTA: TcxGridDBColumn
          Caption = 'Hasta'
          DataBinding.FieldName = 'HASTA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1USO: TcxGridDBColumn
          Caption = 'Usado'
          DataBinding.FieldName = 'USO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1TITULO: TcxGridDBColumn
          Caption = 'Tipo de Comprobante'
          DataBinding.FieldName = 'TITULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 232
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Op1: TGroupBox
    Left = 8
    Top = 16
    Width = 589
    Height = 105
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Desde'
      FocusControl = cxDBSpinEdit2
    end
    object Label4: TLabel
      Left = 103
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Hasta'
      FocusControl = cxDBSpinEdit3
    end
    object Label5: TLabel
      Left = 96
      Top = 8
      Width = 122
      Height = 13
      Caption = 'Nombre del Comprobante'
      FocusControl = cxDBTextEdit2
    end
    object Label1: TLabel
      Left = 222
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Contador'
      FocusControl = cxDBSpinEdit1
    end
    object Label6: TLabel
      Left = 319
      Top = 56
      Width = 104
      Height = 13
      Caption = 'Fecha de Vencimiento'
      FocusControl = cxDBDateEdit1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'NUNTEXT'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 74
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 16
      Top = 72
      DataBinding.DataField = 'DESDE'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 81
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 103
      Top = 72
      DataBinding.DataField = 'HASTA'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 113
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 96
      Top = 24
      DataBinding.DataField = 'TITULO'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 417
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 222
      Top = 72
      DataBinding.DataField = 'USO'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 91
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 319
      Top = 72
      DataBinding.DataField = 'FECHA_VENC'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 194
    end
  end
  object B1: TcxButton
    Left = 98
    Top = 252
    Width = 137
    Height = 29
    Caption = 'Nuevo Comprabante'
    LookAndFeel.SkinName = 'Office2016Colorful'
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
      0000000000000000000000000000000000000000000500000054000000A40000
      00D7000000F3000000F3000000D6000000A30000005400000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000050000000DB000000FF000000E80000
      00A80000008E0000008E000000A9000000E8000000FF000000DA0000004F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000200000089000000FF000000CD00000047000000020000
      00000000000000000000000000000000000200000048000000CF000000FE0000
      0088000000020000000000000000000000000000000000000000000000000000
      0000000000000000008A000000FF000000990000000500000000000000000000
      0000000000000000000000000000000000000000000000000003000000880000
      00FF000000870000000000000000000000000000000000000000000000000000
      000000000051000000FF00000090000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0091000000FE0000004E00000000000000000000000000000000000000000000
      0006000000DC000000CD00000004000000000000000000000000000000000000
      00000000009E0000009D00000000000000000000000000000000000000000000
      0004000000CF000000DA00000005000000000000000000000000000000000000
      0056000000FF0000004700000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000048000000FF00000054000000000000000000000000000000000000
      00A5000000E80000000200000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000002000000E7000000A2000000000000000000000000000000000000
      00D9000000A70000000000000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000000000000A9000000D8000000000000000000000000000000000000
      00F20000008C0000000000000000000000000000009C000000BB000000BB0000
      00BB000000EE000000EE000000BB000000BB000000BB0000009C000000000000
      0000000000000000008D000000F2000000000000000000000000000000000000
      00F20000008C0000000000000000000000000000009D000000BB000000BB0000
      00BB000000EE000000EE000000BB000000BB000000BB0000009C000000000000
      0000000000000000008D000000F2000000000000000000000000000000000000
      00D9000000A70000000000000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000000000000A9000000D8000000000000000000000000000000000000
      00A7000000E80000000200000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000002000000E7000000A4000000000000000000000000000000000000
      0056000000FF0000004600000000000000000000000000000000000000000000
      0000000000BF000000BF00000000000000000000000000000000000000000000
      000000000047000000FF00000054000000000000000000000000000000000000
      0006000000DD000000CC00000003000000000000000000000000000000000000
      0000000000980000009700000000000000000000000000000000000000000000
      0003000000CD000000DB00000005000000000000000000000000000000000000
      000000000052000000FF0000008E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      008F000000FF0000005000000000000000000000000000000000000000000000
      0000000000000000008B000000FF000000990000000400000000000000000000
      0000000000000000000000000000000000000000000000000003000000880000
      00FF000000880000000000000000000000000000000000000000000000000000
      000000000000000000020000008A000000FF000000CC00000046000000020000
      00000000000000000000000000000000000200000047000000CD000000FF0000
      0089000000020000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000052000000DD000000FF000000E70000
      00A70000008D0000008D000000A7000000E7000000FF000000DC000000510000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000600000056000000A60000
      00D8000000F4000000F4000000D8000000A60000005600000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    OptionsImage.ImageIndex = 224
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = B1Click
  end
  object B2: TcxButton
    Left = 241
    Top = 252
    Width = 137
    Height = 29
    Caption = 'Guardar Cambios'
    Enabled = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.ImageIndex = 946
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = B2Click
  end
  object B3: TcxButton
    Left = 384
    Top = 252
    Width = 137
    Height = 29
    Caption = 'Cancelar Cambios'
    Enabled = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 961
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = B3Click
  end
  object DataSource1: TDataSource
    DataSet = datos.NCF
    Left = 256
    Top = 216
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select * from ncf')
    Params = <>
    Left = 448
    Top = 231
    object QConsultaNCFID: TIntegerField
      FieldName = 'NCFID'
      Required = True
    end
    object QConsultaNUNTEXT: TWideStringField
      FieldName = 'NUNTEXT'
      Size = 14
    end
    object QConsultaDESDE: TIntegerField
      FieldName = 'DESDE'
    end
    object QConsultaHASTA: TIntegerField
      FieldName = 'HASTA'
    end
    object QConsultaUSO: TIntegerField
      FieldName = 'USO'
    end
    object QConsultaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QConsultaIDCONFIG: TIntegerField
      FieldName = 'IDCONFIG'
    end
    object QConsultaSIGUIENTE: TWideStringField
      FieldName = 'SIGUIENTE'
    end
    object QConsultaCAJA: TIntegerField
      FieldName = 'CAJA'
    end
    object QConsultaTITULO: TWideStringField
      FieldName = 'TITULO'
      Size = 100
    end
    object QConsultaFECHA_VENC: TDateField
      FieldName = 'FECHA_VENC'
    end
  end
  object Numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_NCF_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 152
    Top = 175
    object NumeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object DsQConsulta: TDataSource
    DataSet = QConsulta
    Left = 472
    Top = 207
  end
  object UpG: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 464
    Top = 128
  end
end
