object Dm: TDm
  OldCreateOrder = False
  Left = 343
  Top = 237
  Height = 262
  Width = 215
  object DsCompare: TDataSource
    DataSet = Q1
    Left = 48
    Top = 64
  end
  object MyConnection1: TMyConnection
    Database = 'test'
    Username = 'root'
    Server = 'localhost'
    LoginPrompt = False
    Left = 16
    Top = 16
    EncryptedPassword = '8CFF9AFF8DFF89FF9AFF8DFF'
  end
  object Q1: TMyQuery
    Connection = MyConnection1
    Left = 104
    Top = 16
  end
end
