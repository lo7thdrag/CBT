unit ufrmHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmHome = class(TForm)
    lblSemaphore: TLabel;
    lblExercise: TLabel;
    lblSetting: TLabel;
    lblIntroduce: TLabel;
    lbl2: TLabel;
    lblExit: TLabel;
    pnlBackgroundLarge: TPanel;
    pnlBackgroundLittle: TPanel;
    imgBackgroundLittle: TImage;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl8: TLabel;
    lblConsoleName: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    lbl16: TLabel;
    lbl17: TLabel;
    imgBackgroundLarge: TImage;
    pnl4: TPanel;
    img1: TImage;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    pnl5: TPanel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    pnl6: TPanel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    img12: TImage;
    img13: TImage;
    img14: TImage;
    img15: TImage;
    img16: TImage;
    img10: TImage;
    img11: TImage;
    lbl27: TLabel;
    lbl28: TLabel;
    procedure lblSemaphoreClick(Sender: TObject);
    procedure lblExitClick(Sender: TObject);
    procedure lblIntroduceClick(Sender: TObject);
    procedure lblExerciseClick(Sender: TObject);
    procedure lblSettingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    displayResolution : Integer;
    playerName : string;

  public
    { Public declarations }

  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses
  ufrmSemaphore, ufrmExerciseChoice, ufrmExerciseRead, ufrmExerciseWrite, uPengenalan, ufrmSetting,
  ufrmSemaphoreLittle;

procedure TfrmHome.FormCreate(Sender: TObject);
begin
  displayResolution := 0;
  playerName := 'Player 1';
end;

procedure TfrmHome.lblExerciseClick(Sender: TObject);
begin
  if frmExerciseChoice.ShowModal <> mrOk then
    Exit;

  case frmExerciseChoice.typeExercise of
    0 : {Read}
    begin
      case frmExerciseChoice.modeExercise of
        0 : frmExerciseRead.lblExerciseMode.Caption := 'EASY';
        1 : frmExerciseRead.lblExerciseMode.Caption := 'NORMAL';
        2 : frmExerciseRead.lblExerciseMode.Caption := 'HARD';
      end;

      frmExerciseRead.lblUsername.Caption := playerName;
      frmExerciseRead.Show;
    end;
    1 : {Write}
    begin
      ShowMessage('Mode ini tidak bisa digunakan di versi trial, silahkan kunjungi website kami untuk mengaktifkannya');
      Exit;
      frmExerciseWrite.Show;
    end;
  end;
end;

procedure TfrmHome.lblExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmHome.lblIntroduceClick(Sender: TObject);
begin
  frmPengenalan.Show;
end;

procedure TfrmHome.lblSemaphoreClick(Sender: TObject);
begin
  case displayResolution of
    0 :
    begin
      frmSemaphore.Show;
    end;
    1 :
    begin
      frmSemaphoreLittle.Show;
    end;
  end;

end;

procedure TfrmHome.lblSettingClick(Sender: TObject);
begin
  frmSetting.displayResolution := displayResolution;
  frmSetting.playerName := playerName;

  if frmSetting.ShowModal <> mrOk then
    Exit;

  displayResolution := frmSetting.displayResolution;
  playerName := frmSetting.playerName;

  case displayResolution of
    0 :
    begin
      Width := 1920;
      Height := 1080;
      pnlBackgroundLarge.BringToFront;
      Position := poScreenCenter;
    end;
    1 :
    begin
      Width := 1300;
      Height := 720;
      pnlBackgroundLittle.BringToFront;
      Position := poScreenCenter;
    end;
  end;
end;

end.
