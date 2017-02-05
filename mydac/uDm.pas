unit uDm;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess;

type
  TDm = class(TDataModule)
    DsCompare: TDataSource;
    MyConnection1: TMyConnection;
    Q1: TMyQuery;
  private
    { Private declarations }
  public
    function GetTitle: string;
    procedure JalankanQuery(ASQL: string);
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

{ TDm }

function TDm.GetTitle: string;
begin
  Result:= 'MyDac Component';
end;

procedure TDm.JalankanQuery(ASQL: string);
var
  isSearch: Boolean;
begin
  isSearch:= False;

  if UpperCase(Copy(ASQL,1, 6)) = 'SELECT' then
    isSearch:= True;

  with Q1 do
  begin
    Close;
    SQL.Text:= ASQL;
    if isSearch then
      Open else
      ExecSQL;
  end;
end;

end.
