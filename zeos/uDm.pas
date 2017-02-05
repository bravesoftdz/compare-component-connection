unit uDm;

interface

uses
  SysUtils, Classes, uUtils, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TDm = class(TDataModule)
    DsCompare: TDataSource;
    db_1: TZConnection;
    ROQ1: TZReadOnlyQuery;
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
  Result:= 'Zeos Component';
end;


procedure TDm.JalankanQuery(ASQL: string);
var
  isSearch: Boolean;
begin
  isSearch:= False;

  if UpperCase(Copy(ASQL,1, 6)) = 'SELECT' then
    isSearch:= True;

  with ROQ1 do
  begin
    Close;
    SQL.Text:= ASQL;
    if isSearch then
      Open else
      ExecSQL;
  end;
end;

end.
