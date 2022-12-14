program MercadoLivre;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
