program SemaphoreGame;

uses
  Vcl.Forms,
  uHome in 'uHome.pas' {frmHome},
  uSemaphore in 'uSemaphore.pas' {frmSemaphore};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.Run;
end.
