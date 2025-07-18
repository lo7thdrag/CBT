program SemaphoreGame;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmSemaphore},
  uSemaphoreAG in 'uSemaphoreAG.pas' {frmSemaphoreAG},
  uSemaphoreHN in 'uSemaphoreHN.pas' {frmSemaphoreHN},
  uSemaphoreOS in 'uSemaphoreOS.pas' {frmSemaphoreOS},
  uSemaphoreTV in 'uSemaphoreTV.pas' {frmSemaphoreTY},
  uSemaphoreWZ in 'uSemaphoreWZ.pas' {frmSemaphoreVZ},
  uSemaphore17 in 'uSemaphore17.pas' {frmSemaphore17},
  uSemaphore80 in 'uSemaphore80.pas' {frmSemaphore80};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSemaphore, frmSemaphore);
  Application.CreateForm(TfrmSemaphoreAG, frmSemaphoreAG);
  Application.CreateForm(TfrmSemaphoreHN, frmSemaphoreHN);
  Application.CreateForm(TfrmSemaphoreOS, frmSemaphoreOS);
  Application.CreateForm(TfrmSemaphoreTY, frmSemaphoreTY);
  Application.CreateForm(TfrmSemaphoreVZ, frmSemaphoreVZ);
  Application.CreateForm(TfrmSemaphore17, frmSemaphore17);
  Application.CreateForm(TfrmSemaphore80, frmSemaphore80);
  Application.Run;
end.
