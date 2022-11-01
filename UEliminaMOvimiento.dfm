object FrmEliminaMovimiento: TFrmEliminaMovimiento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Eliminar Movimiento de Inventario'
  ClientHeight = 292
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 744
    Height = 241
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsInventario
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Cod Art.'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Articulos'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 372
      end
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Tipo Mov'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 104
      end
      object cxGrid1DBTableView1ENTRADA: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'ENTRADA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
        Caption = 'Salida'
        DataBinding.FieldName = 'SALIDA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 156
    Top = 249
    Width = 146
    Height = 35
    Caption = 'Guardar'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    OptionsImage.ImageIndex = 255
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 249
    Width = 146
    Height = 35
    Caption = 'Eliminar Registro'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    OptionsImage.ImageIndex = 242
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object Elimina: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 96
    Top = 168
  end
  object FInvenatario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.minventarioid, a.fecha,a.cod_art, c.articulo, b.descrip' +
        'cion,c.cod_cat,a.entrada, a.salida  from minventario a'
      'left join conceptos b On a.conceptoid = b.conceptoid'
      'left join mtartuculos c On a.cod_art = c.cod_art')
    Params = <>
    Left = 216
    Top = 128
    object FInvenatarioMINVENTARIOID: TIntegerField
      FieldName = 'MINVENTARIOID'
      Required = True
    end
    object FInvenatarioFECHA: TDateField
      FieldName = 'FECHA'
    end
    object FInvenatarioCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object FInvenatarioARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object FInvenatarioDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object FInvenatarioCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object FInvenatarioENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object FInvenatarioSALIDA: TFloatField
      FieldName = 'SALIDA'
    end
  end
  object DsInventario: TDataSource
    DataSet = FInvenatario
    Left = 288
    Top = 104
  end
end
