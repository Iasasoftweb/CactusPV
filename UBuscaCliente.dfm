object FrmBuscaCliente: TFrmBuscaCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar Clientes'
  ClientHeight = 297
  ClientWidth = 499
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
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 336
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object cxGrid3: TcxGrid
    Left = 8
    Top = 56
    Width = 483
    Height = 233
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Caramel'
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsqCliente
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'NO Data'
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'RNC / Cedula'
        DataBinding.FieldName = 'CEDULA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.Moving = False
        Width = 110
      end
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Nombres'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 359
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Opb: TcxRadioGroup
    Left = 11
    Top = 6
    Alignment = alCenterCenter
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Nombres'
      end
      item
        Caption = 'RNC / Cedula'
      end>
    ItemIndex = 0
    TabOrder = 2
    Height = 25
    Width = 236
  end
  object Edit2: TEdit
    Left = 11
    Top = 33
    Width = 278
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnChange = Edit2Change
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 376
    Top = 41
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
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
      currency = True
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
      currency = True
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
    object IbqClientesTELEFONO3: TWideStringField
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object IbqClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object IbqClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
    object IbqClientesREGIONID: TIntegerField
      FieldName = 'REGIONID'
    end
    object IbqClientesPROVINCIAID: TIntegerField
      FieldName = 'PROVINCIAID'
    end
    object IbqClientesMUNICIPIOID: TIntegerField
      FieldName = 'MUNICIPIOID'
    end
    object IbqClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
      currency = True
    end
    object IbqClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 200
    end
  end
  object DsqCliente: TDataSource
    DataSet = IbqClientes
    Left = 336
    Top = 33
  end
end
