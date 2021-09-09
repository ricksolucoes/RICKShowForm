program RICKShowForm;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK.ShowForm.CallBack in 'src\RICK.ShowForm.CallBack.pas',
  RICK.ShowForm.Iterfaces in 'src\RICK.ShowForm.Iterfaces.pas',
  RICK.ShowForm in 'src\RICK.ShowForm.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
