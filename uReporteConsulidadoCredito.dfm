object FrmReporteConsolidadoCredito: TFrmReporteConsolidadoCredito
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte Consolidado de Cr'#233'dito'
  ClientHeight = 544
  ClientWidth = 710
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
  object QReporte: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 320
    Top = 184
  end
end
