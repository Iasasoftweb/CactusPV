object FrmPedidosCocina: TFrmPedidosCocina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pedidos en Cocina'
  ClientHeight = 568
  ClientWidth = 1307
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1307
    Height = 41
    Align = alTop
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 936
      Top = 6
      Width = 294
      Height = 23
      Caption = 'Control de Productos en Cocina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 41
    Width = 1307
    Height = 527
    Align = alClient
    ColCount = 7
    DataSource = DsCocina
    PanelHeight = 131
    PanelWidth = 184
    TabOrder = 1
    RowCount = 4
    object cxDBLabel1: TcxDBLabel
      Left = 8
      Top = 53
      DataBinding.DataField = 'CLIENTE'
      DataBinding.DataSource = DsCocina
      ParentFont = False
      Properties.WordWrap = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -19
      Style.Font.Name = 'Century Gothic'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 41
      Width = 169
    end
    object cxDBLabel2: TcxDBLabel
      Left = 48
      Top = 6
      DataBinding.DataField = 'NO_ORDEN'
      DataBinding.DataSource = DsCocina
      ParentFont = False
      Properties.WordWrap = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -27
      Style.Font.Name = 'Century Gothic'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 41
      Width = 81
    end
  end
  object DsCocina: TDataSource
    DataSet = SqlCocina
    Left = 1008
    Top = 128
  end
  object SqlCocina: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from ENVIOCOCINA'
      'where estado = 1')
    Params = <>
    Left = 440
    Top = 144
    object SqlCocinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SqlCocinaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object SqlCocinaNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object SqlCocinaHORA: TTimeField
      FieldName = 'HORA'
    end
    object SqlCocinaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object SqlCocinaORDEN: TWideMemoField
      FieldName = 'ORDEN'
      BlobType = ftWideMemo
    end
    object SqlCocinaTIEMPO: TIntegerField
      FieldName = 'TIEMPO'
    end
    object SqlCocinaTIEMPO_RESTANTA: TTimeField
      FieldName = 'TIEMPO_RESTANTA'
    end
    object SqlCocinaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
end
