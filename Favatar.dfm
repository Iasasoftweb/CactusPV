object FGetAvatar: TFGetAvatar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Avatar'
  ClientHeight = 519
  ClientWidth = 668
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
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 185
    Top = 0
    Width = 483
    Height = 519
    Align = alClient
    ColCount = 3
    DataSource = DataSource1
    PanelHeight = 129
    PanelWidth = 155
    TabOrder = 0
    RowCount = 4
    ExplicitWidth = 482
    ExplicitHeight = 412
    object DBImage1: TDBImage
      Left = 16
      Top = 8
      Width = 113
      Height = 113
      DataField = 'IMAGEN'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 519
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 320
    ExplicitHeight = 41
  end
  object Qavatar: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.id, a.imagen, a.categoria, a.activo, b.categoria cat fr' +
        'om avatar a'
      'left join cat_avatar b On a.categoria = b.id')
    Params = <>
    Left = 320
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = Qavatar
    Left = 296
    Top = 240
  end
end
