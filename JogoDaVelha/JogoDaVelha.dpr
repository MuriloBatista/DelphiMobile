program JogoDaVelha;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UJogoVelha in 'UJogoVelha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
