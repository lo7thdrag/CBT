program SemaphoreGame;

uses
  Vcl.Forms,
  ufrmHome in 'ufrmHome.pas' {frmHome},
  ufrmSemaphore in 'ufrmSemaphore.pas' {frmSemaphore},
  ufrmExerciseChoice in 'ufrmExerciseChoice.pas' {frmExerciseChoice},
  ufrmExerciseRead in 'ufrmExerciseRead.pas' {frmExerciseRead},
  ufrmExerciseWrite in 'ufrmExerciseWrite.pas' {frmExerciseWrite},
  ufrmSetting in 'ufrmSetting.pas' {frmSetting};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmExerciseChoice, frmExerciseChoice);
  Application.CreateForm(TfrmExerciseRead, frmExerciseRead);
  Application.CreateForm(TfrmExerciseWrite, frmExerciseWrite);
  Application.CreateForm(TfrmSetting, frmSetting);
  Application.Run;
end.
