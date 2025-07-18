program SemaphoreGame;

uses
  Vcl.Forms,
  uSemaphore in 'uSemaphore.pas' {frmSemaphore},
  uSemaphoreA0 in 'uSemaphoreA0.pas' {frmSemaphoreAG};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmSemaphoreAG, frmSemaphoreAG);
  Application.Run;
end.
