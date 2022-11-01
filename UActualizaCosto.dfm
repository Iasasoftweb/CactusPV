object FActualizaCosto: TFActualizaCosto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Actualizar Costos'
  ClientHeight = 121
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 380
    Height = 13
    Caption = 'Label1'
  end
  object cxButton1: TcxButton
    Left = 72
    Top = 40
    Width = 257
    Height = 49
    Caption = 'Iniciar Proceso'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object QActualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 328
    Top = 24
  end
end
