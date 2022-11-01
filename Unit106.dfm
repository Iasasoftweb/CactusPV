object FrmConsultasFxPagar: TFrmConsultasFxPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Facturas Pendientes x Pagar'
  ClientHeight = 281
  ClientWidth = 735
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
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 721
    Height = 265
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsMaster_Creditos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MONTO
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1ABONO
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PENDIENTE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
        Caption = '# Fact'
        DataBinding.FieldName = 'NO_FACT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_FAC'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1FECHAVENCIMIENTO: TcxGridDBColumn
        Caption = 'Fecha Venc.'
        DataBinding.FieldName = 'FECHAVENCIMIENTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1MONTO: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'MONTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 102
      end
      object cxGrid1DBTableView1ABONO: TcxGridDBColumn
        Caption = 'Abono'
        DataBinding.FieldName = 'ABONO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 98
      end
      object cxGrid1DBTableView1PENDIENTE: TcxGridDBColumn
        Caption = 'Pendiente'
        DataBinding.FieldName = 'PENDIENTE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 109
      end
      object cxGrid1DBTableView1DIAS: TcxGridDBColumn
        Caption = 'Plazo (Dias)'
        DataBinding.FieldName = 'DIAS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1DIASATRASOS: TcxGridDBColumn
        Caption = 'Dias Atraso'
        DataBinding.FieldName = 'DIASATRASOS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1ESTADOCUENTA: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'ESTADOCUENTA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DsMaster_Creditos: TDataSource
    DataSet = master_credito
    Left = 264
    Top = 34
  end
  object master_credito: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select A.no_fact, A.fecha_fac, A.fechavencimiento,B.nombres Clie' +
        'nteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente' +
        ',d.nombres_emp,'
      
        'b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((curren' +
        't_date - A.fechavencimiento) >= 0, (current_date - A.fechavencim' +
        'iento), 0) AS DiasAtrasos,'
      
        'IIF((current_date - A.fechavencimiento) >= 0, '#39'ATRASO'#39', '#39'NORMAL'#39 +
        ') as EstadoCuenta, A.clienteid'
      '  from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion ='#39'IMPRESA'#39
      'and a.condicion ='#39'ACTIVA'#39
      'AND A.tipo = '#39'CREDITO'#39
      '')
    Params = <>
    Left = 232
    Top = 74
    object master_creditoNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object master_creditoFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object master_creditoFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object master_creditoCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object master_creditoMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object master_creditoPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
      currency = True
    end
    object master_creditoNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object master_creditoTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object master_creditoDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object master_creditoDIASATRASOS: TIntegerField
      FieldName = 'DIASATRASOS'
      ReadOnly = True
    end
    object master_creditoESTADOCUENTA: TWideStringField
      FieldName = 'ESTADOCUENTA'
      ReadOnly = True
      Size = 11
    end
    object master_creditoCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object master_creditoABONO: TFloatField
      FieldName = 'ABONO'
      currency = True
    end
  end
end
