object FrmComision: TFrmComision
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Comisi'#243'n a Dise'#241'adores'
  ClientHeight = 463
  ClientWidth = 420
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
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    Style.LookAndFeel.SkinName = 'Blueprint'
    StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
    TabOrder = 0
    Height = 105
    Width = 407
    object Label26: TLabel
      Left = 11
      Top = 8
      Width = 57
      Height = 16
      Caption = 'Dise'#241'ador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 13
      Top = 50
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 139
      Top = 50
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton5: TcxButton
      Left = 269
      Top = 16
      Width = 28
      Height = 29
      Hint = 'Buscar Nombre del Dise'#241'ador'
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = cxButton5Click
    end
    object cxtextEdit1: TcxTextEdit
      Left = 11
      Top = 23
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 1
      Width = 252
    end
    object inicio: TcxDateEdit
      Left = 11
      Top = 62
      Style.LookAndFeel.SkinName = 'Blueprint'
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 2
      Width = 118
    end
    object fechafinal: TcxDateEdit
      Left = 135
      Top = 62
      Style.LookAndFeel.SkinName = 'Blueprint'
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 3
      Width = 128
    end
    object cxButton1: TcxButton
      Left = 320
      Top = 24
      Width = 75
      Height = 73
      Caption = 'Procesar'
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 463
      OptionsImage.Images = inicio.RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 119
    TabOrder = 1
    Height = 298
    Width = 404
  end
  object OpBuscarEmpleado: TcxGroupBox
    Left = 8
    Top = 38
    Caption = 'Buscar Empleado'
    Style.LookAndFeel.SkinName = 'Blueprint'
    StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
    TabOrder = 2
    Visible = False
    Height = 173
    Width = 252
    object Edit2: TEdit
      Left = 11
      Top = 135
      Width = 230
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit2Change
    end
    object cxGrid3: TcxGrid
      Left = 2
      Top = 14
      Width = 247
      Height = 115
      TabOrder = 1
      LookAndFeel.SkinName = 'Blueprint'
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = cxGridDBTableView2DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsqusuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
          Caption = 'Usuarios Creados'
          DataBinding.FieldName = 'NOMBRES_EMP'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 235
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
          Width = 235
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object dsqusuario: TDataSource
    DataSet = QEmpleados
    Left = 250
    Top = 296
  end
  object QEmpleados: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtempleado')
    Params = <>
    Left = 338
    Top = 352
    object QEmpleadosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object QEmpleadosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QEmpleadosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QEmpleadosCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object QEmpleadosTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object QEmpleadosCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object QEmpleadosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object QEmpleadosLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object QEmpleadosPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object QEmpleadosMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object QEmpleadosELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object QEmpleadosIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object QEmpleadosCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object QEmpleadosMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object QEmpleadosMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object QEmpleadosIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object QEmpleadosIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object QEmpleadosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
    object QEmpleadosINICIO: TDateField
      FieldName = 'INICIO'
    end
    object QEmpleadosSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object QEmpleadosCOD: TIntegerField
      FieldName = 'COD'
    end
    object QEmpleadosCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object QEmpleadosFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
    object QEmpleadosESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object QEmpleadosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
  end
  object consulta: TZReadOnlyQuery
    SQL.Strings = (
      's')
    Params = <>
    Left = 120
    Top = 320
  end
end
