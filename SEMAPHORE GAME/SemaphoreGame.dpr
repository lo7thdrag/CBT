program SemaphoreGame;

uses
  Vcl.Forms,
  ufrmHome in 'ufrmHome.pas' {frmHome},
  ufrmExerciseChoice in 'Form Resolusi 1920 x 1080\ufrmExerciseChoice.pas' {frmExerciseChoice},
  ufrmExerciseRead in 'Form Resolusi 1920 x 1080\ufrmExerciseRead.pas' {frmExerciseRead},
  ufrmExerciseWrite in 'Form Resolusi 1920 x 1080\ufrmExerciseWrite.pas' {frmExerciseWrite},
  ufrmSemaphore in 'Form Resolusi 1920 x 1080\ufrmSemaphore.pas' {frmSemaphore},
  ufrmSetting in 'Form Resolusi 1920 x 1080\ufrmSetting.pas' {frmSetting},
  uPengenalan in 'Form Resolusi 1920 x 1080\uPengenalan.pas' {frmPengenalan},
  ufrmSemaphoreLittle in 'Form Resolusi 1300 x 720\ufrmSemaphoreLittle.pas' {frmSemaphoreLittle},
  ufrmNilai in 'ufrmNilai.pas' {frmNilai},
  uDataType in 'Library\uDataType.pas',
  ufrmPengenalanLittle in 'Form Resolusi 1300 x 720\ufrmPengenalanLittle.pas' {frmPengenalanLittle},
  UfrmExerciseReadLittle in 'Form Resolusi 1300 x 720\UfrmExerciseReadLittle.pas' {frmExerciseReadLittle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmPengenalan, frmPengenalan);
  Application.CreateForm(TfrmExerciseChoice, frmExerciseChoice);
  Application.CreateForm(TfrmExerciseRead, frmExerciseRead);
  Application.CreateForm(TfrmExerciseWrite, frmExerciseWrite);
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmSetting, frmSetting);
  Application.CreateForm(TfrmPengenalan, frmPengenalan);
  Application.CreateForm(TfrmSemaphoreLittle, frmSemaphoreLittle);
  Application.CreateForm(TfrmNilai, frmNilai);
  Application.CreateForm(TfrmPengenalanLittle, frmPengenalanLittle);
  Application.CreateForm(TfrmExerciseReadLittle, frmExerciseReadLittle);
  Application.Run;
end.
