program FrmFerias;

uses
  Forms,
  unitFerias in 'unitFerias.pas' {fFerias};

{$R *.res}

begin
    Application.Initialize;
    Application.Title := 'Cron�metro para as F�rias';
  Application.CreateForm(TfFerias, fFerias);
  Application.Run;
end.

