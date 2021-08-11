program FrmFerias;

uses
  Forms,
  unitFerias in 'unitFerias.pas' {fFerias};

{$R *.res}

begin
    Application.Initialize;
    Application.Title := 'Cronômetro para as Férias';
  Application.CreateForm(TfFerias, fFerias);
  Application.Run;
end.

