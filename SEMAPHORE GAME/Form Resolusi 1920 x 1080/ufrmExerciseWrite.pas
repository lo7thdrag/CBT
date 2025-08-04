unit ufrmExerciseWrite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,

  uDataType;

type
  TfrmExerciseWrite = class(TForm)
    imgBackground: TImage;
    pnlBackground: TPanel;
    pnl4: TPanel;
    img4: TImage;
    lbl18: TLabel;
    lblUsername: TLabel;
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lblExerciseMode: TLabel;
    pnlSoal: TPanel;
    pnl2: TPanel;
    imgA: TImage;
    imgB: TImage;
    imgC: TImage;
    imgD: TImage;
    imgE: TImage;
    imgF: TImage;
    imgG: TImage;
    imgH: TImage;
    imgI: TImage;
    imgJ: TImage;
    imgK: TImage;
    imgL: TImage;
    imgM: TImage;
    imgN: TImage;
    imgO: TImage;
    imgP: TImage;
    imgQ: TImage;
    imgR: TImage;
    imgS: TImage;
    imgT: TImage;
    imgU: TImage;
    imgV: TImage;
    imgW: TImage;
    imgX: TImage;
    imgY: TImage;
    imgZ: TImage;
    imgSpasi: TImage;
    pnlJawabanHuruf: TPanel;
    imgJawabHuruf1: TImage;
    imgJawabHuruf2: TImage;
    imgJawabHuruf3: TImage;
    imgJawabHuruf4: TImage;
    imgJawabHuruf5: TImage;
    imgJawabHuruf6: TImage;
    imgJawabHuruf7: TImage;
    imgJawabHuruf8: TImage;
    imgJawabHuruf9: TImage;
    imgJawabHuruf10: TImage;
    imgJawabHuruf11: TImage;
    imgJawabHuruf12: TImage;
    imgJawabHuruf13: TImage;
    imgJawabHuruf14: TImage;
    imgJawabHuruf15: TImage;
    img18: TImage;
    img19: TImage;
    lblQuetions: TLabel;
    lblAgain: TLabel;
    lblHome: TLabel;
    lblNext: TLabel;
    pnlSelect: TPanel;
    procedure lblAgainClick(Sender: TObject);
    procedure selectJawabanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNextClick(Sender: TObject);

  private
    noHuruf: Integer;
    hurufEasy : array [0..4] of string;
    hurufNormal : array [0..9] of string;
    hurufHard : array [0..14] of string;

    soalTemp : array [0..9] of string;
    jawabanTemp : array [0..9] of string;

    keyboardTemp : array [0..27] of string;


    NoSoal : Integer;

    procedure setPanelJawaban(vMode: Integer);
    procedure randomKeyboard;

  public
    exerciseMode : Integer; {0: Easy; 1: Normal; 2: Hard;}

  end;

var
  frmExerciseWrite: TfrmExerciseWrite;

implementation

{$R *.dfm}


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

procedure TfrmExerciseWrite.FormShow(Sender: TObject);
begin
  EnableComposited(pnlBackground);

  lblAgainClick(nil);
//  lblHome.Visible := True;
end;

procedure TfrmExerciseWrite.randomKeyboard;
var
  val, i, j : Integer;

begin
  val := 1 + Random(5);
  for i := 0 to 27 do
    keyboardTemp[i] := LowerCase(GetKeyboard(val, i));

  j := 0;

  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TImage then
    begin
      if TImage(Components[i]).Tag <> 100 then
        continue;

      TImage(Components[i]).Hint := keyboardTemp[j];
      TImage(Components[i]).Picture.LoadFromFile('Image\Model\' + TImage(Components[i]).Hint + '.png');
      j := j + 1;
    end;
  end;

end;

procedure TfrmExerciseWrite.selectJawabanClick(Sender: TObject);
begin
  pnlSelect.Left := TImage(Sender).Left;
end;

procedure TfrmExerciseWrite.setPanelJawaban(vMode: Integer);
begin
  imgJawabHuruf1.Visible := True;
  imgJawabHuruf2.Visible := True;
  imgJawabHuruf3.Visible := True;
  imgJawabHuruf4.Visible := True;
  imgJawabHuruf5.Visible := True;
  imgJawabHuruf6.Visible := (vMode = 1) or (vMode = 2);
  imgJawabHuruf7.Visible := (vMode = 1) or (vMode = 2);
  imgJawabHuruf8.Visible := (vMode = 1) or (vMode = 2);
  imgJawabHuruf9.Visible := (vMode = 1) or (vMode = 2);
  imgJawabHuruf10.Visible := (vMode = 1) or (vMode = 2);
  imgJawabHuruf11.Visible := vMode = 2;
  imgJawabHuruf12.Visible := vMode = 2;
  imgJawabHuruf13.Visible := vMode = 2;
  imgJawabHuruf14.Visible := vMode = 2;
  imgJawabHuruf15.Visible := vMode = 2;

  case vMode of
    0: pnlJawabanHuruf.Left := 787;
    1: pnlJawabanHuruf.Left := 613;
    2: pnlJawabanHuruf.Left := 437;
  end;
end;

procedure TfrmExerciseWrite.lblAgainClick(Sender: TObject);
var
  i, val : Integer;

begin
  lblAgain.Visible := False;
  lblHome.Visible := False;
  lblNext.Visible := True;

  NoSoal := 0;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

  setPanelJawaban(exerciseMode);

  randomKeyboard;

  {$REGION ' Reset Replay '}
//  sumReplay := 3;
//  showReplay;
  {$ENDREGION}

  {Mengosongkan Lembar Soal}
  for i := 0 to 9 do
    soalTemp[i] := '-';

//  showSoal;

  {Mengosongkan Lembar Jawaban}
  for i := 0 to 9 do
    jawabanTemp[i] := '-';

//  showJawaban;

  {Create Soal Baru}
  val := 1 + Random(10);
  for i := 0 to 9 do
    soalTemp[i] := LowerCase(GetQuestion(exerciseMode, val, i));

end;

procedure TfrmExerciseWrite.lblNextClick(Sender: TObject);
var
  i : Integer;
  tempStr : string;
  nilai : Integer;

begin
  if lblNext.Caption = 'START' then
  begin
//    lblReplay.Visible := True;
    lblHome.Visible := False;
    lblNext.Caption := 'NEXT';
  end
  else if lblNext.Caption = 'NEXT' then
  begin

  end
  else if lblNext.Caption = 'FINISH' then
  begin
    nilai := 0;

    for i := 0 to 9 do
    begin
      if jawabanTemp[i] = soalTemp[i] then
      begin
        nilai := nilai + 1;
      end;
    end;

    nilai := nilai * 10;

//    showSoal;
//
//    frmNilai.nilai := nilai;
//    frmNilai.lblIntroduce.Caption := 'conratulation ' + lblUsername.Caption;
//    frmNilai.ShowModal;
//
//    lblReplay.Visible := False;
    lblNext.Visible := False;
    lblAgain.Visible := True;
    lblHome.Visible := True;

//    edtJawaban.Visible := False;
//    pnl3.Visible := False;

    lblQuetions.Caption := 'COMPLETED';

    Exit;
  end;

//  splitWord(soalTemp[NoSoal]);

//  noHuruf := 0;
//  tmr1.Enabled := True;
  NoSoal := NoSoal + 1;

  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal).ToString;

  if NoSoal > 9 then
      lblNext.Caption := 'FINISH';

//  edtJawaban.Visible := False;
//  pnl3.Visible := False;
end;


end.
