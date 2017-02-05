program mydacdb;

uses
  Forms,
  uDm in 'uDm.pas' {Dm: TDataModule},
  uUtama in '..\src\uUtama.pas' {FUtama};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFUtama, FUtama);
  Application.Run;
end.
