object DataUtil: TDataUtil
  OldCreateOrder = False
  Height = 408
  Width = 422
  object QUpBalanceCredito: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 48
    Top = 32
  end
  object QBalanceCreditoCliente: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select balance from cliente')
    Params = <>
    Left = 192
    Top = 40
    object QBalanceCreditoClienteBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
  end
end
