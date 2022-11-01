object FrmActualizaDiasCredito: TFrmActualizaDiasCredito
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Actualizar Dias de Credito'
  ClientHeight = 368
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 24
    Top = 8
    TabOrder = 0
    Height = 73
    Width = 545
    object Label1: TLabel
      Left = 16
      Top = 25
      Width = 38
      Height = 13
      Caption = 'Clientes'
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 284
      Height = 21
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Left = 298
      Top = 39
      Width = 36
      Height = 23
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton5Click
    end
    object b1: TcxButton
      Left = 340
      Top = 38
      Width = 101
      Height = 25
      Caption = 'Ejecutar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000404
        04055C5C5C87545454742221212E020202020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9DEED4D3D2FFADACABF9626160A40303030400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9DE5E3E2E1FFCCCAC9FF949291EA0C0C0C1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9EE5E2E1E0FFCBC9C8FF939191E50C0C0C1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000D0D
        0D11A0A09FE5E2E1E0FFCBC9C8FF949292E50D0D0D1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000D0D
        0D10A2A1A0E5E2E1E0FFCAC9C8FF959392E50D0D0D1000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000E0E
        0E11AAA9A8E9E2E1E0FFCAC9C7FF989796E90E0E0E1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003E3D
        3D54C2C1C0FDE2E1E0FFCAC9C8FFA6A5A4FD3D3D3D5500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001D1D1D259190
        8FE5D0CFCDFFE1E0DFFFCAC9C7FFB0AEADFF807F7EE51E1E1E26000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000B0B0B0D767675C6B3B2
        B0FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF999796FF6D6C6BC60B0B0B0D0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000005D5C5C9C9A9896FFB7B5
        B4FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9C9AFF858482FF5B5B5A9C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004848486D868584FFA2A09FFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8E8C8AFF797775FF4847
        476E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000031313142767473F6908F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF81807EFF6D6B
        6AF6303030420000000000000000000000000000000000000000000000000000
        000000000000000000001A1A1A1F696968E081807EFF918F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF82807EFF7775
        73FF666564E11A1A191F00000000000000000000000000000000000000000000
        0000000000000909090A616060BE747271FF848280FF918F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF82807EFF7A78
        76FF6F6D6BFF61605FBF0909090A000000000000000000000000000000000000
        000002020202545455916D6C6DFF7C7B7BFF858585FF939292FFA3A3A3FFB8B7
        B7FFD2D1D2FFE3E2E3FFCCCACBFFB3B1B2FF9F9E9FFF8F8F8FFF848383FF7C7B
        7BFF777676FF6B6B6BFF52525391020202020000000000000000000000000000
        000013131315756E62EB938876FF998F7DFF9F9584FFA89E8CFFB2A997FFBEB6
        A4FFCEC6B5FFD8D0C0FFCAC2B1FFBCB2A1FFAFA695FFA69D8BFF9F9583FF9A8F
        7DFF968C79FF938775FF756E61EB131313150000000000000000000000000000
        00001918161B956615EBB6811FFFC09031FFC89D41FFCFA951FFD7B560FFDEC1
        70FFE6CE81FFEBD78CFFE6CE80FFDFC272FFD8B864FFD2AD56FFCBA248FFC598
        3AFFBE8D2DFFB6801DFF996916EB1918171B0000000000000000000000000000
        000022201D25AB781CFEC9983BFFD3A64CFFDBB35CFFE2BF6DFFEACC7DFFF1D8
        8DFFF9E69EFFFEEEA9FFF9E59DFFF2DA8FFFEBCF80FFE4C472FFDEB864FFD7AD
        56FFD1A247FFC99639FFB07C1CFE22201D250000000000000000000000000000
        0000080808096151358985704AA786734DA6887551A68A7855A68C7B59A68D7E
        5CA68F8160A6918362A68F8160A68D7E5CA68C7C59A68B7956A6897653A68774
        4FA686724CA6857049A761513589080808090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      OnClick = b1Click
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 24
    Top = 87
    Caption = 'Facturas en Vencimiento '
    TabOrder = 1
    Height = 194
    Width = 705
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 701
      Height = 174
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsMaster_Creditos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'PENDIENTE'
            Column = cxGrid2DBTableView1Column8
            DisplayText = 'Total :'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'NO Data'
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Fecha Emisi'#243'n'
          DataBinding.FieldName = 'FECHA_FAC'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 81
        end
        object cxGrid2DBTableView1Column4: TcxGridDBColumn
          Caption = 'Fecha de Vencimiento'
          DataBinding.FieldName = 'FECHAVENCIMIENTO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 91
        end
        object cxGrid2DBTableView1Column2: TcxGridDBColumn
          Caption = 'No. Fact'
          DataBinding.FieldName = 'NUMERO_FACTURA'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 78
        end
        object cxGrid2DBTableView1Column5: TcxGridDBColumn
          Caption = 'Monto'
          DataBinding.FieldName = 'MONTO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 91
        end
        object cxGrid2DBTableView1Column7: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'ABONO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 82
        end
        object cxGrid2DBTableView1Column8: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'PENDIENTE'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 95
        end
        object cxGrid2DBTableView1Column6: TcxGridDBColumn
          Caption = 'Dias Atrasos'
          DataBinding.FieldName = 'DIASATRASOS'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid2DBTableView1Column9: TcxGridDBColumn
          Caption = 'Estado Factura'
          DataBinding.FieldName = 'ESTADOCUENTA'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Edit2: TEdit
    Left = 606
    Top = 285
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object cxGroupBox3: TcxGroupBox
    Left = 24
    Top = 289
    Caption = 'Actualiza dias de cr'#233'dito'
    TabOrder = 3
    Height = 73
    Width = 300
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 20
      Height = 13
      Caption = 'Dias'
    end
    object TDias: TcxSpinEdit
      Left = 16
      Top = 40
      TabOrder = 0
      Width = 105
    end
    object cxButton1: TcxButton
      Left = 144
      Top = 36
      Width = 100
      Height = 25
      Caption = 'Actualizar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        00000000000000000000000000003F3D323FE6E0B8E64E4C3E4E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AFAA8CAFFFF8CCFF75725E75000000001B19
        111D655F416C635F4567635F4567343224360908060900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A0A080AF6EFC5F6FFF8CCFFAEA476B9E2D38EF7E8D7
        8EFFEDDF9AFFF4EBABFFF4EBABFFF4EBABFFF1E8A9FCCCC48FD55B58405F0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000514F4151FFF8CCFFFAF2C3FDE8D78EFFE8D78EFFE8D7
        8EFFE2D490F5A29C71A9A29C71A9D3CB94DCF3EAAAFEF4EBABFFF4EBABFFADA7
        79B51A19121B0000000000000000000000000000000000000000000000000000
        00000000000000000000CBC59CCEFFF8CCFFFBF2C1FFF4E8AFFFCBC397D18884
        6A8926251E260000000000000000000000000E0E0A0F6663486BE9E0A3F3F4EB
        ABFFE5DCA0EF4C49354F00000000000000000000000000000000000000000000
        00000000000000000000F3EBBCF6FFF8CCFFFFF8CCFFFFF8CCFFFFF8CCFFFFF8
        CCFFB7B292B700000000000000000000000000000000000000001F1D1520B4AD
        7EBCF4EBABFFEBE3A5F6312F2233000000000000000000000000000000000000
        000000000000000000003E3B2F3FABA583AE87836C878C88708C918D7491928E
        7592333229330000000000000000000000000000000000000000000000000101
        0101BAB382C2F4EBABFFD7CF97E1080705080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000026251B28EDE5A6F8F4EBABFF6663486B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000007873547DF4EBABFFD3CC94DD0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000C0C090DF4EBABFFF4EBABFF201E162100000000000000000F16
        111984C196D73D5A466400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000E3DA9FEDF4EBABFF56533C5A0000000000000000364F
        3D589CE5B2FF75AC85BF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C6BF8BCFF4EBABFF646046680000000000000000364F
        3D589CE5B2FF88C89CDF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A7A175AFF4EBABFF6460466800000000000000002D42
        344A9CE5B2FF9AE1AFFB01020102000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004E4C3752D1C992DA2120172300000000000000000B10
        0D129BE4B1FE9CE5B2FF121A141D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007DB88FCD9CE5B2FF567F628D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000364F3D589CE5B2FF9AE2B0FC202F24340000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010201027FBB91D09CE5B2FF7FBA90CF0204030400000000000000000000
        00000000000000000000000000002029232C688771906988729166836E8C627F
        6A87769F82AD35483A4E00000000000000000000000000000000000000000000
        00000000000017211A2593D8A8F09CE5B2FF79B18AC518231B27000000000000
        0000000000000000000000000000799D83A7B9EFC8FFB9EFC8FFB9EFC8FFB9EF
        C8FFB9EFC8FFB1EAC1FB00000000000000000000000000000000000000000000
        000000000000000000002A3D2F448FD2A3EA9CE5B2FF97DEACF7486952750B10
        0D12000000000000000000000000161D181F5D7B658485B894CA9EE4B2FEADEA
        BEFFB9EFC8FF9CD0AAE100000000000000000000000000000000000000000000
        00000000000000000000000000000D130F15689977AA9CE5B2FF9CE5B2FF9CE5
        B2FF88C89CDF699A78AC669574A681D099F180D89AFF80D89AFF80D89AFFACE8
        BDFDB9EFC8FF4A60506600000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000344C3B5580BC92D19AE1
        AFFB9CE5B2FF9CE5B2FF9CE5B2FF8DDEA5FF80D89AFF81D499F86BA57CBDB8EE
        C7FEB8EDC6FD1015111600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000406
        05071F2E24333D5A4664415F4A6A3A5D456B1320172500000000495F4F65B9EF
        C8FF8BB497C00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002E3C3240A5D6
        B3E438483C4D0000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object master_credito: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, A.fechavencimie' +
        'nto, b.cedula, b.direccion, B.nombres ClienteNombre, (A.monto + ' +
        'A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,'
      
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
    Left = 656
    Top = 45
    object master_creditoNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object master_creditoNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object master_creditoFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object master_creditoFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object master_creditoCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object master_creditoDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object master_creditoCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 200
    end
    object master_creditoMONTO: TExtendedField
      FieldName = 'MONTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object master_creditoABONO: TFloatField
      FieldName = 'ABONO'
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
      Size = 6
    end
    object master_creditoCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
  end
  object DsMaster_Creditos: TDataSource
    DataSet = master_credito
    Left = 608
    Top = 13
  end
  object DsMasterG: TDataSource
    DataSet = master_credito_g
    Left = 520
    Top = 112
  end
  object master_credito_g: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select  B.nombres ClienteNombre, b.cedula, b.telefono, b.direcci' +
        'on, Sum((A.monto + A.pogxitbs)) as monto, sum(A.ABONO) As Abono,' +
        ' sum(A.pendiente) as Pendiente,'
      ' A.clienteid, (select count(a1.no_fact) from master_fact a1'
      
        '               where (current_date - A1.fechavencimiento) >= 0 a' +
        'nd a1.clienteid = a.clienteid) as Con_Atrasos,'
      '              (select count(a1.no_fact) from master_fact a1'
      
        '               where (current_date - A1.fechavencimiento) <= 0 a' +
        'nd a1.clienteid = a.clienteid) as sin_Atrasos,'
      '                  ((select count(a1.no_fact) from master_fact a1'
      
        '               where (current_date - A1.fechavencimiento) >= 0 a' +
        'nd a1.clienteid = a.clienteid) + (select count(a1.no_fact) from ' +
        'master_fact a1'
      
        '               where (current_date - A1.fechavencimiento) <= 0 a' +
        'nd a1.clienteid = a.clienteid)) as TFac'
      ''
      'from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion ='#39'IMPRESA'#39
      'and a.condicion ='#39'ACTIVA'#39
      'AND A.tipo = '#39'CREDITO'#39
      'and a.quees <>'#39'SALDADA'#39
      ''
      
        'group by B.nombres,  A.clienteid, Con_Atrasos, b.cedula, b.telef' +
        'ono, b.direccion')
    Params = <>
    Left = 600
    Top = 128
    object master_credito_gCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      ReadOnly = True
      Size = 200
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
      Size = 40
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
      Precision = 19
    end
    object master_credito_gCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object master_credito_gCON_ATRASOS: TIntegerField
      FieldName = 'CON_ATRASOS'
      ReadOnly = True
    end
    object master_credito_gSIN_ATRASOS: TIntegerField
      FieldName = 'SIN_ATRASOS'
      ReadOnly = True
    end
    object master_credito_gTFAC: TLargeintField
      FieldName = 'TFAC'
      ReadOnly = True
    end
  end
  object QActualizaDias: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 296
    Top = 175
  end
  object QActualizaVencimiento: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 208
    Top = 183
  end
end
