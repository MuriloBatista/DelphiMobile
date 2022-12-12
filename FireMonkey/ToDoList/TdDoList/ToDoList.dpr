program ToDoList;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  USplash in 'USplash.pas' {frmSplash},
  SharedPreference in 'SharedPreference.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.Run;
end.
