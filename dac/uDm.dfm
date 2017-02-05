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
  object Con1: TmySQLDatabase
    DatabaseName = 'test'
    UserName = 'root'
    UserPassword = 'server'
    Host = 'localhost'
    ConnectOptions = []
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'Host=localhost'
      'UID=root'
      'PWD=server'
      'DatabaseName=test')
    Left = 16
    Top = 16
  end
  object Q1: TmySQLQuery
    Database = Con1
    Left = 56
    Top = 16
  end
end
