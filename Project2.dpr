program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Mainform},
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainform, Mainform);
  Application.Run;
end.
