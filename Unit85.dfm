object FrmPagosRealizados: TFrmPagosRealizados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = ','
  ClientHeight = 486
  ClientWidth = 521
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
    Caption = 'Buscar Clientes'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 65
    Width = 505
    object Label23: TLabel
      Left = 95
      Top = 22
      Width = 90
      Height = 13
      Caption = 'Nombre del Cliente'
    end
    object Label22: TLabel
      Left = 11
      Top = 22
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object cod: TcxTextEdit
      Left = 10
      Top = 35
      Enabled = False
      TabOrder = 0
      Width = 57
    end
    object cxButton2: TcxButton
      Left = 67
      Top = 36
      Width = 25
      Height = 21
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.ImageIndex = 947
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object caj: TcxTextEdit
      Left = 93
      Top = 35
      Enabled = False
      TabOrder = 2
      Width = 174
    end
    object cxButton1: TcxButton
      Left = 273
      Top = 36
      Width = 32
      Height = 21
      Hint = 'Buscar Cliente'
      Caption = '.....'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.SkinName = ''
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object OpBuscarCLiente: TcxGroupBox
    Left = 19
    Top = 65
    Caption = 'Buscar Cliente'
    TabOrder = 1
    Visible = False
    Height = 266
    Width = 310
    object cxGrid3: TcxGrid
      Left = 3
      Top = 16
      Width = 304
      Height = 181
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Sharp'
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsqCliente
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Nombres'
          DataBinding.FieldName = 'NOMBRES'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 300
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Edit1: TEdit
      Left = 13
      Top = 230
      Width = 278
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Opb: TcxRadioGroup
      Left = 13
      Top = 203
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Nombres'
        end
        item
          Caption = 'Numero Pin'
        end>
      ItemIndex = 0
      TabOrder = 2
      Height = 25
      Width = 236
    end
    object Edit4: TEdit
      Left = 160
      Top = 67
      Width = 73
      Height = 21
      TabOrder = 3
      Visible = False
    end
  end
  object DsqCliente: TDataSource
    DataSet = IbqClientes
    Left = 88
    Top = 373
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 168
    Top = 312
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
end
