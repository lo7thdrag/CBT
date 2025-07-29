unit ufrmHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmHome = class(TForm)
    imgIntroduce: TImage;
    lblSemaphore: TLabel;
    lblExercise: TLabel;
    lblSetting: TLabel;
    lblIntroduce: TLabel;
    imgBackground: TImage;
    lbl2: TLabel;
    lblExit: TLabel;
    procedure lblSemaphoreClick(Sender: TObject);
    procedure lblExitClick(Sender: TObject);
    procedure lblIntroduceClick(Sender: TObject);
    procedure lblExerciseClick(Sender: TObject);
    procedure lblSettingClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses
  ufrmSemaphore, ufrmExerciseChoice, ufrmExerciseRead, ufrmExerciseWrite;

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
  //
end;

procedure TfrmHome.lblSemaphoreClick(Sender: TObject);
begin
  frmSemaphore.Show;
end;

procedure TfrmHome.lblSettingClick(Sender: TObject);
begin
  //
end;

end.
