program SemaphoreGame;

uses
  Vcl.Forms,
  uSemaphore in 'uSemaphore.pas' {frmSemaphore},
  uSemaphoreA0 in 'uSemaphoreA0.pas' {frmSemaphoreA0};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmSemaphoreA0, frmSemaphoreA0);
  Application.Run;
end.
