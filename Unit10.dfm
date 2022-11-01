object FrbBusqCliente: TFrbBusqCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Busqueda de Clientes'
  ClientHeight = 373
  ClientWidth = 255
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
  object Label1: TLabel
    Left = 3
    Top = 305
    Width = 198
    Height = 13
    Caption = 'Presionar ENTER para Seleccionar Cliente'
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 249
    Height = 305
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyDown = cxGrid1DBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dsclientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Nombres del Cliente'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 335
    Width = 231
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object clientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 160
    Top = 144
    object clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object clientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object clientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object clientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object clientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object clientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object clientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object clientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object clientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 10
    end
    object clientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object clientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object clientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object clientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object clientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object clientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object clientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object clientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object clientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object clientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object clientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object clientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object clientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
  end
  object Dsclientes: TDataSource
    DataSet = clientes
    Left = 184
    Top = 176
  end
end
