object MiData: TMiData
  OldCreateOrder = False
  Height = 403
  Width = 695
  object FData: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\PrintSoft PV\data\PYMEDATA_.FDB'
      'CharacterSet=ISO8859_1'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 80
    Top = 64
  end
end
