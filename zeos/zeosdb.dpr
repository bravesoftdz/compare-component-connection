program zeosdb;

uses
  Forms,
  uUtama in '..\src\uUtama.pas' {FUtama},
  uDm in 'uDm.pas' {Dm: TDataModule},
  uUtils in '..\src\uUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFUtama, FUtama);
  Application.Run;
end.
