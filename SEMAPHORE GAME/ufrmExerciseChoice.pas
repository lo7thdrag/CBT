unit ufrmExerciseChoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmExerciseChoice = class(TForm)
    pnlBackground: TPanel;
    imgBackground: TImage;
    imgCancel: TImage;
    imgEasy: TImage;
    imgHard: TImage;
    imgNormal: TImage;
    imgOK: TImage;
    imgReadExercise: TImage;
    imgWriteExercise: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lblCancel: TLabel;
    lblIntroduce: TLabel;
    lblOK: TLabel;
    procedure lblExitClick(Sender: TObject);
    procedure ExerciseTypeClick(Sender: TObject);
    procedure ExerciseModeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private


  public
    typeExercise : Integer; {0: Read; 1: Write}
    modeExercise : Integer; {0: Easy; 1: Normal; 2: Hard}

  end;

var
  frmExerciseChoice: TfrmExerciseChoice;

implementation

{$R *.dfm}

uses
  ufrmSemaphore;


procedure EnableComposited(WinControl: TWinControl);
var
  i: Integer;
  NewExStyle: DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or
    WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for i := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

procedure TfrmExerciseChoice.FormCreate(Sender: TObject);
begin
  typeExercise := 0;
  imgReadExercise.Picture.LoadFromFile('Image\Button\rdSelect.png');
  imgWriteExercise.Picture.LoadFromFile('Image\Button\rdUnselect.png');
end;

procedure TfrmExerciseChoice.FormShow(Sender: TObject);
begin
  EnableComposited(pnlBackground);
end;

procedure TfrmExerciseChoice.imgOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmExerciseChoice.ExerciseTypeClick(Sender: TObject);
begin
  case TImage(Sender).Tag of
    0 : {Read}
    begin
      typeExercise := 0;
      imgReadExercise.Picture.LoadFromFile('Image\Button\rdSelect.png');
      imgWriteExercise.Picture.LoadFromFile('Image\Button\rdUnselect.png');
    end;
    1 : {Write}
    begin
      typeExercise := 1;
      imgReadExercise.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgWriteExercise.Picture.LoadFromFile('Image\Button\rdSelect.png');
    end;
  end;
end;

procedure TfrmExerciseChoice.ExerciseModeClick(Sender: TObject);
begin
  case TImage(Sender).Tag of
    0 : {Easy}
    begin
      modeExercise := 0;
      imgEasy.Picture.LoadFromFile('Image\Button\rdSelect.png');
      imgNormal.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgHard.Picture.LoadFromFile('Image\Button\rdUnselect.png');
    end;
    1 : {Normal}
    begin
      ShowMessage('Mode ini tidak bisa digunakan di versi trial, silahkan kunjungi website kami untuk mengaktifkannya');
      Exit;

      modeExercise := 1;
      imgEasy.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgNormal.Picture.LoadFromFile('Image\Button\rdSelect.png');
      imgHard.Picture.LoadFromFile('Image\Button\rdUnselect.png');
    end;
    2 : {Hard}
    begin
      ShowMessage('Mode ini tidak bisa digunakan di versi trial, silahkan kunjungi website kami untuk mengaktifkannya');
      Exit;

      modeExercise := 2;
      imgEasy.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgNormal.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgHard.Picture.LoadFromFile('Image\Button\rdSelect.png');
    end;
  end;
end;

procedure TfrmExerciseChoice.lblExitClick(Sender: TObject);
begin
  Close;
end;

end.
