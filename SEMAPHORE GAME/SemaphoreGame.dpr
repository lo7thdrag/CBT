program SemaphoreGame;

uses
  Vcl.Forms,
  ufrmHome in 'ufrmHome.pas' {frmHome},
  ufrmSemaphore in 'ufrmSemaphore.pas' {frmSemaphore},
  ufrmExercise in 'ufrmExercise.pas' {frmExercise};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmExercise, frmExercise);
  Application.Run;
end.
