object FrmGustos: TFrmGustos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Gustos'
  ClientHeight = 417
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object op11: TcxPageControl
    Left = 8
    Top = 3
    Width = 633
    Height = 406
    Enabled = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Blue'
    ClientRectBottom = 401
    ClientRectLeft = 2
    ClientRectRight = 628
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = 'Datos Generales'
      ImageIndex = 0
      object Label2: TLabel
        Left = 61
        Top = 25
        Width = 34
        Height = 16
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 36
        Top = 57
        Width = 59
        Height = 16
        Caption = 'Descripci'#243'n'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 61
        Top = 89
        Width = 34
        Height = 16
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 45
        Top = 119
        Width = 50
        Height = 16
        Caption = 'Categoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 512
        Top = 105
        Width = 65
        Height = 13
        Caption = 'Stock M'#225'ximo'
        FocusControl = cxDBCalcEdit2
      end
      object Label7: TLabel
        Left = 434
        Top = 105
        Width = 61
        Height = 13
        Caption = 'Stock Minimo'
        FocusControl = cxDBCalcEdit3
      end
      object Label1: TLabel
        Left = 358
        Top = 104
        Width = 26
        Height = 13
        Caption = 'Stock'
        FocusControl = cxDBCalcEdit6
      end
      object DBEdit1: TDBEdit
        Left = 101
        Top = 22
        Width = 84
        Height = 24
        TabStop = False
        Color = 9626332
        DataField = 'ID_SABOR'
        DataSource = DsGustos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 101
        Top = 55
        Width = 340
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRIPCION'
        DataSource = DsGustos
        TabOrder = 1
      end
      object cxButton7: TcxButton
        Left = 299
        Top = 110
        Width = 27
        Height = 25
        OptionsImage.ImageIndex = 943
        OptionsImage.Images = inicio.RibbonImages16
        TabOrder = 2
      end
      object Edit2: TEdit
        Left = 299
        Top = 319
        Width = 121
        Height = 21
        TabOrder = 4
        Visible = False
      end
      object Edit3: TEdit
        Left = 103
        Top = 327
        Width = 121
        Height = 21
        TabOrder = 5
        Visible = False
      end
      object cxGroupBox2: TcxGroupBox
        Left = 27
        Top = 141
        Caption = 'Datos Opcionales'
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 180
        Width = 558
        object Label4: TLabel
          Left = 44
          Top = 27
          Width = 60
          Height = 13
          Caption = 'Precio Venta'
          FocusControl = cxDBCalcEdit4
        end
        object Label24: TLabel
          Left = 46
          Top = 52
          Width = 60
          Height = 13
          Caption = 'Ultimo Costo'
          FocusControl = cxDBCalcEdit4
        end
        object Label25: TLabel
          Left = 32
          Top = 82
          Width = 75
          Height = 13
          Caption = 'Costo Promedio'
          FocusControl = cxDBCalcEdit5
        end
        object cxButton1: TcxButton
          Left = 281
          Top = 143
          Width = 152
          Height = 30
          Caption = 'Agragar Fotos'
          OptionsImage.ImageIndex = 863
          OptionsImage.Images = inicio.RibbonImages16
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 113
          Top = 23
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = DsGustos
          TabOrder = 1
          Width = 121
        end
        object cxDBCalcEdit4: TcxDBCalcEdit
          Left = 113
          Top = 49
          DataBinding.DataField = 'COSTOS'
          DataBinding.DataSource = DsGustos
          TabOrder = 2
          Width = 121
        end
        object cxDBCalcEdit5: TcxDBCalcEdit
          Left = 113
          Top = 77
          DataBinding.DataField = 'COSTO_PROMEDIO'
          DataBinding.DataSource = DsGustos
          TabOrder = 3
          Width = 121
        end
        object cxDBImage1: TcxDBImage
          Left = 276
          Top = 24
          DataBinding.DataField = 'IMAGEN'
          DataBinding.DataSource = DsGustos
          TabOrder = 4
          Height = 113
          Width = 157
        end
      end
      object cxDBCalcEdit2: TcxDBCalcEdit
        Left = 512
        Top = 117
        DataBinding.DataField = 'STOCK_MAX'
        DataBinding.DataSource = DsGustos
        TabOrder = 7
        Width = 73
      end
      object cxDBCalcEdit3: TcxDBCalcEdit
        Left = 433
        Top = 118
        DataBinding.DataField = 'STOCK_MIN'
        DataBinding.DataSource = DsGustos
        TabOrder = 8
        Width = 73
      end
      object op1: TRxDBComboBox
        Left = 101
        Top = 84
        Width = 123
        Height = 21
        DataField = 'ESTADO'
        DataSource = DsGustos
        Items.Strings = (
          'Activo'
          'Desactivado')
        TabOrder = 9
        Values.Strings = (
          '1'
          '2')
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 101
        Top = 115
        Width = 196
        Height = 23
        DropDownCount = 8
        DataField = 'COD_CAT'
        DataSource = DsGustos
        LookupField = 'CODCAT'
        LookupDisplay = 'CAT'
        LookupSource = dscategoria
        TabOrder = 10
      end
      object cxDBCalcEdit6: TcxDBCalcEdit
        Left = 357
        Top = 117
        DataBinding.DataField = 'STOCK'
        DataBinding.DataSource = DsGustos
        TabOrder = 11
        Width = 73
      end
      object cxGrid3: TcxGrid
        Left = 3
        Top = 61
        Width = 336
        Height = 278
        TabOrder = 3
        Visible = False
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
          DataController.DataSource = DsConsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellTextMaxLineCount = 5
          OptionsView.GroupByBox = False
          OptionsView.GroupRowStyle = grsOffice11
          Preview.AutoHeight = False
          object cxGrid3DBTableView1ID_SABOR: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'ID_SABOR'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 61
          end
          object cxGrid3DBTableView1DESCRIPCION: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'DESCRIPCION'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 256
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object Consultar: TcxButton
        Left = 4
        Top = 345
        Width = 70
        Height = 30
        Caption = 'Consultar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Blue'
        OptionsImage.ImageIndex = 980
        OptionsImage.Images = inicio.RibbonImages16
        TabOrder = 12
        OnClick = ConsultarClick
      end
    end
  end
  object b2: TcxButton
    Left = 253
    Top = 373
    Width = 115
    Height = 29
    Caption = 'Guardar Cambios'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OptionsImage.ImageIndex = 256
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 1
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 374
    Top = 373
    Width = 118
    Height = 29
    Caption = 'Cancelar Cambios'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 2
    OnClick = b3Click
  end
  object b1: TcxButton
    Left = 132
    Top = 373
    Width = 115
    Height = 29
    Caption = 'Nuevo Registro'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OptionsImage.ImageIndex = 146
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 3
    OnClick = b1Click
  end
  object btmodi: TcxButton
    Left = 544
    Top = 370
    Width = 87
    Height = 30
    Caption = 'Cerrar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OptionsImage.ImageIndex = 996
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 4
    OnClick = btmodiClick
  end
  object DsGustos: TDataSource
    DataSet = datos.ZqGustos
    Left = 368
    Top = 40
  end
  object dscategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 488
    Top = 48
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id_sabor) from DB_SABORES')
    Params = <>
    Left = 504
    Top = 16
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object BuscaImagen: TOpenPictureDialog
    Left = 576
    Top = 232
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, c.cat from db_sabores a'
      'left join mtcategoria c On a.cod_cat = c.codcat'
      '')
    Params = <>
    Left = 296
    Top = 16
    object consultaID_SABOR: TIntegerField
      FieldName = 'ID_SABOR'
      Required = True
    end
    object consultaIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object consultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object consultaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object consultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object consultaCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object consultaSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object consultaSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
    object consultaSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object consultaOP: TIntegerField
      FieldName = 'OP'
    end
    object consultaCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object consultaPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object consultaCOSTO_PROMEDIO: TFloatField
      FieldName = 'COSTO_PROMEDIO'
      ReadOnly = True
    end
    object consultaCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 408
    Top = 8
  end
end
