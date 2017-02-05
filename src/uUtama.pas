unit uUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFUtama = class(TForm)
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    LstTime: TListBox;
    pnl2: TPanel;
    BtnJalankan: TButton;
    pnlTotal: TPanel;
    MmQuery: TMemo;
    Btn1: TButton;
    procedure BtnJalankanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
  private
    FItems: array of Double;
    procedure AddTime(AItem: Double);
    function GetTotalAverage: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUtama: TFUtama;

implementation

uses
  uDm, Math;

{$R *.dfm}

procedure TFUtama.AddTime(AItem: Double);
var
  i: Integer;
begin
  i:= LstTime.Items.Add( Format('%f ms', [AItem]) );
  SetLength(FItems, i+1);
  FItems[i] := AItem;
end;

procedure TFUtama.BtnJalankanClick(Sender: TObject);
var
  Start, Stop: Cardinal;
begin
  Screen.Cursor := crHourGlass;
  Start := GetTickCount;
  dm.JalankanQuery(MmQuery.Lines.Text);
  Stop := GetTickCount - Start;
  AddTime(Stop);
  pnlTotal.Caption := GetTotalAverage;
  Screen.Cursor := crDefault;
end;

function TFUtama.GetTotalAverage: string;
begin
  Result := Format('%d x, %d row, avg: %f', [LstTime.Items.Count,
    dbgrd1.DataSource.DataSet.RecordCount, Mean(FItems)]);
end;

procedure TFUtama.FormCreate(Sender: TObject);
begin
  Caption:= Dm.GetTitle;
end;

procedure TFUtama.Btn1Click(Sender: TObject);
begin
  pnlTotal.Caption:= '';
  LstTime.Items.Clear;
  SetLength(FItems, 0);
end;

end.
