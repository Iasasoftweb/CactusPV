object FrmConduceAdmin: TFrmConduceAdmin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Administrador de Conduce'
  ClientHeight = 575
  ClientWidth = 1239
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
  object Op1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 65
    Width = 1239
    object cxButton1: TcxButton
      Left = 16
      Top = 16
      Width = 137
      Height = 33
      Caption = 'Nuevo Conduce'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1008
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 159
      Top = 16
      Width = 137
      Height = 33
      Caption = 'Nuevo Conduce'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1008
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 1239
    Height = 510
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
