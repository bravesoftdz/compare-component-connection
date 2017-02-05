object Dm: TDm
  OldCreateOrder = False
  Left = 343
  Top = 237
  Height = 150
  Width = 215
  object DsCompare: TDataSource
    DataSet = ROQ1
    Left = 48
    Top = 64
  end
  object db_1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 0
    Database = 'test'
    User = 'root'
    Password = 'server'
    Protocol = 'mysqld-5'
    LibraryLocation = 'D:\WORKSPACES\DELPHI\CompareDB Component\libmysql.dll'
    Left = 16
    Top = 8
  end
  object ROQ1: TZReadOnlyQuery
    Connection = db_1
    Params = <>
    Left = 64
    Top = 8
  end
end
