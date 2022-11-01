object FrmRebajaPRecio: TFrmRebajaPRecio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Aumentar / Rebajar Productos'
  ClientHeight = 408
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    TabOrder = 0
    Height = 392
    Width = 414
    object cxGroupBox2: TcxGroupBox
      Left = 16
      Top = 12
      TabOrder = 0
      Height = 141
      Width = 377
    end
  end
  object dxFloatDockSite1: TdxFloatDockSite
    Left = 0
    Top = 0
    Width = 483
    Height = 250
    FloatLeft = 540
    FloatTop = 220
    DockingType = 0
    OriginalWidth = 483
    OriginalHeight = 250
    object dxDockPanel1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 483
      Height = 250
      AllowFloating = True
      AutoHide = False
      Caption = 'dxDockPanel1'
      CustomCaptionButtons.Buttons = <>
      TabsProperties.CustomButtons.Buttons = <>
      TabsProperties.MultiLine = True
      TabsProperties.Style = 8
      DockingType = 0
      OriginalWidth = 483
      OriginalHeight = 250
    end
  end
  object DsConfiguracion: TDataSource
    DataSet = datos.ZUconfiguracion
    Left = 402
    Top = 184
  end
end
