object FrmResetTablas: TFrmResetTablas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Eliminar Tablas'
  ClientHeight = 312
  ClientWidth = 447
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 401
    Height = 233
    Caption = 'Eliminar Registros'
    TabOrder = 0
    object cxCheckGroup1: TcxCheckGroup
      Left = 15
      Top = 19
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Master_Fact'
        end
        item
          Caption = 'Detalle_Fact'
        end
        item
          Caption = 'Master_Ajuste'
        end
        item
          Caption = 'Detalle_Pago'
        end
        item
          Caption = 'Control Gastos'
        end
        item
          Caption = 'Detalle Descargas'
        end
        item
          Caption = 'MInventario'
        end
        item
          Caption = 'Fabricantes'
        end
        item
          Caption = 'Clientes'
        end
        item
          Caption = 'Empleado'
        end
        item
          Caption = 'Usuarios'
        end
        item
          Caption = 'Pagos x Cheque'
        end
        item
          Caption = 'Pagos x Tarjetas'
        end
        item
          Caption = 'Articulos'
        end>
      TabOrder = 0
      Height = 194
      Width = 369
    end
  end
end
