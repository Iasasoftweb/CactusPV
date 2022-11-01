object FrmReporteCXC: TFrmReporteCXC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reprote de C X C'
  ClientHeight = 491
  ClientWidth = 676
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
    TabOrder = 0
    Height = 73
    Width = 654
    object Label1: TLabel
      Left = 18
      Top = 19
      Width = 62
      Height = 13
      Caption = 'Fecha Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 43
      Width = 70
      Height = 13
      Caption = 'Fecha Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object fechafinal: TcxDateEdit
      Left = 94
      Top = 42
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 123
    end
    object inicio: TcxDateEdit
      Left = 94
      Top = 16
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 123
    end
    object cxButton1: TcxButton
      Left = 237
      Top = 19
      Width = 124
      Height = 37
      Caption = 'Consultar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 257
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton4: TcxButton
      Left = 367
      Top = 20
      Width = 130
      Height = 36
      Caption = 'Imprimir Reporte'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 1006
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
    end
  end
  object cxGrid4: TcxGrid
    Left = 8
    Top = 87
    Width = 654
    Height = 394
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid4DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsMasterG
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'MONTO'
          Column = cxGrid4DBTableView1MONTO
        end
        item
          Kind = skSum
          FieldName = 'ABONO'
          Column = cxGrid4DBTableView1ABONO
        end
        item
          Kind = skSum
          FieldName = 'PENDIENTE'
          Column = cxGrid4DBTableView1PENDIENTE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'Sin Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid4DBTableView1CLIENTEID: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'CLIENTEID'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 34
      end
      object cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'CLIENTENOMBRE'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 260
      end
      object cxGrid4DBTableView1MONTO: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'MONTO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 104
      end
      object cxGrid4DBTableView1ABONO: TcxGridDBColumn
        Caption = 'Abono'
        DataBinding.FieldName = 'ABONO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 100
      end
      object cxGrid4DBTableView1PENDIENTE: TcxGridDBColumn
        Caption = 'Pendiente'
        DataBinding.FieldName = 'PENDIENTE'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 123
      end
    end
    object cxGrid4Level1: TcxGridLevel
      GridView = cxGrid4DBTableView1
    end
  end
  object Antiguedad: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT a.clienteid,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AN' +
        'D ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,'
      
        'sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AN' +
        'D DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fe' +
        'chavencimiento is null,(a.pendiente),0)) AS V0_30,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendi' +
        'ente),0)) AS V31_60,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendi' +
        'ente),0)) AS V61_90,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pend' +
        'iente),0)) AS V91_120,'
      
        'sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,' +
        '(a.pendiente),0)) as v120'
      'from master_fact a'
      'where a.situacion  ='#39'IMPRESA'#39
      'and a.condicion    ='#39'ACTIVA'#39
      'AND A.ROTULO       ='#39'FACTURACION'#39
      'and a.tipo         ='#39'CREDITO'#39
      'and a.quees <>'#39'SALDADA'#39
      ''
      'group by a.clienteid')
    Params = <>
    Left = 176
    Top = 112
    object AntiguedadCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object AntiguedadPORVENCER: TExtendedField
      FieldName = 'PORVENCER'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV0_30: TExtendedField
      FieldName = 'V0_30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV31_60: TExtendedField
      FieldName = 'V31_60'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV61_90: TExtendedField
      FieldName = 'V61_90'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV91_120: TExtendedField
      FieldName = 'V91_120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV120: TExtendedField
      FieldName = 'V120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object master_credito_g: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select  B.nombres ClienteNombre, b.cedula, b.telefono, b.direcci' +
        'on, Sum((A.monto + A.pogxitbs)) as monto, sum(A.ABONO) As Abono,' +
        ' sum(A.pendiente) as Pendiente,'
      ' A.clienteid'
      ' from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion ='#39'IMPRESA'#39
      'and a.condicion ='#39'ACTIVA'#39
      'AND A.tipo = '#39'CREDITO'#39
      'and a.quees <>'#39'SALDADA'#39
      ''
      
        'group by B.nombres,  A.clienteid, b.cedula, b.telefono, b.direcc' +
        'ion')
    Params = <>
    Left = 88
    Top = 120
    object master_credito_gCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      ReadOnly = True
      Size = 100
    end
    object master_credito_gCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object master_credito_gTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object master_credito_gDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object master_credito_gMONTO: TExtendedField
      FieldName = 'MONTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object master_credito_gABONO: TExtendedField
      FieldName = 'ABONO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object master_credito_gPENDIENTE: TExtendedField
      FieldName = 'PENDIENTE'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object master_credito_gCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
  end
  object DsMasterG: TDataSource
    DataSet = master_credito_g
    Left = 216
    Top = 136
  end
end
