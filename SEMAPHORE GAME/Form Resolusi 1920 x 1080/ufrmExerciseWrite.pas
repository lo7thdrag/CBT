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
    pnlUsername: TPanel;
    img4: TImage;
    lbl18: TLabel;
    lblUsername: TLabel;
    pnlExerciseMode: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lblExerciseMode: TLabel;
    pnlSoal: TPanel;
    pnlKeyboard: TPanel;
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
    pnl2: TPanel;
    pnlJawab1: TPanel;
    pnlJawab11: TPanel;
    pnl5: TPanel;
    pnlJawab2: TPanel;
    pnlJawab22: TPanel;
    pnl6: TPanel;
    pnlJawab3: TPanel;
    pnlJawab33: TPanel;
    pnl7: TPanel;
    pnlJawab4: TPanel;
    pnlJawab44: TPanel;
    pnl8: TPanel;
    pnlJawab5: TPanel;
    pnlJawab55: TPanel;
    pnl9: TPanel;
    pnlJawab6: TPanel;
    pnlJawab66: TPanel;
    pnl10: TPanel;
    pnlJawab7: TPanel;
    pnlJawab77: TPanel;
    pnl11: TPanel;
    pnlJawab8: TPanel;
    pnlJawab88: TPanel;
    pnl12: TPanel;
    pnlJawab9: TPanel;
    pnlJawab99: TPanel;
    pnl13: TPanel;
    pnlJawab10: TPanel;
    pnlJawab100: TPanel;
    procedure lblAgainClick(Sender: TObject);
    procedure selectJawabanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure keyboardClick(Sender: TObject);

  private
    noHuruf: Integer;
    hurufEasy : string;
    hurufNormal : string;
    hurufHard : string;

    soalTemp : array [0..9] of string;
    jawabanTemp : array [0..9] of string;

    keyboardTemp : array [0..27] of string;


    NoSoal : Integer;
    pnlSelectName : string;

    function mergeWord : string;

    procedure setPanelJawaban(vMode: Integer);
    procedure randomKeyboard;
    procedure showJawaban;
    procedure showSoal;

  public
    exerciseMode : Integer; {0: Easy; 1: Normal; 2: Hard;}

  end;

var
  frmExerciseWrite: TfrmExerciseWrite;

implementation

{$R *.dfm}

uses
  ufrmNilai;

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
  pnlSelectName := TImage(Sender).Name;
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

  imgJawabHuruf1.Hint := ' ';
  imgJawabHuruf2.Hint := ' ';
  imgJawabHuruf3.Hint := ' ';
  imgJawabHuruf4.Hint := ' ';
  imgJawabHuruf5.Hint := ' ';
  imgJawabHuruf6.Hint := ' ';
  imgJawabHuruf7.Hint := ' ';
  imgJawabHuruf8.Hint := ' ';
  imgJawabHuruf9.Hint := ' ';
  imgJawabHuruf10.Hint := ' ';
  imgJawabHuruf11.Hint := ' ';
  imgJawabHuruf12.Hint := ' ';
  imgJawabHuruf13.Hint := ' ';
  imgJawabHuruf14.Hint := ' ';
  imgJawabHuruf15.Hint := ' ';

  imgJawabHuruf1.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf2.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf3.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf4.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf5.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf6.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf7.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf8.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf9.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf10.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf11.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf12.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf13.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf14.Picture.LoadFromFile('Image\Model\siluet.png');
  imgJawabHuruf15.Picture.LoadFromFile('Image\Model\siluet.png');
end;

procedure TfrmExerciseWrite.showJawaban;
var
  i : Integer;

begin
  for i := 0 to 9 do
  begin
    case i of
      0 : pnlJawab1.Caption := '  ' + jawabanTemp[i];
      1 : pnlJawab2.Caption := '  ' + jawabanTemp[i];
      2 : pnlJawab3.Caption := '  ' + jawabanTemp[i];
      3 : pnlJawab4.Caption := '  ' + jawabanTemp[i];
      4 : pnlJawab5.Caption := '  ' + jawabanTemp[i];
      5 : pnlJawab6.Caption := '  ' + jawabanTemp[i];
      6 : pnlJawab7.Caption := '  ' + jawabanTemp[i];
      7 : pnlJawab8.Caption := '  ' + jawabanTemp[i];
      8 : pnlJawab9.Caption := '  ' + jawabanTemp[i];
      9 : pnlJawab10.Caption := '  ' + jawabanTemp[i];
    end;
  end;
end;

procedure TfrmExerciseWrite.showSoal;
var
  i : Integer;

begin
  for i := 0 to 9 do
  begin
    case i of
      0 : pnlJawab11.Caption := '  ' + soalTemp[i];
      1 : pnlJawab22.Caption := '  ' + soalTemp[i];
      2 : pnlJawab33.Caption := '  ' + soalTemp[i];
      3 : pnlJawab44.Caption := '  ' + soalTemp[i];
      4 : pnlJawab55.Caption := '  ' + soalTemp[i];
      5 : pnlJawab66.Caption := '  ' + soalTemp[i];
      6 : pnlJawab77.Caption := '  ' + soalTemp[i];
      7 : pnlJawab88.Caption := '  ' + soalTemp[i];
      8 : pnlJawab99.Caption := '  ' + soalTemp[i];
      9 : pnlJawab100.Caption := '  ' + soalTemp[i];
    end;
  end;
end;

procedure TfrmExerciseWrite.keyboardClick(Sender: TObject);
var
  i : Integer;

begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TImage then
    begin
      if TImage(Components[i]).Name = pnlSelectName then
      begin
        TImage(Components[i]).Hint := TImage(Sender).Hint;
        TImage(Components[i]).Picture.LoadFromFile('Image\Model\' + TImage(Components[i]).Hint + '.png');
      end;
    end;
  end;
end;

procedure TfrmExerciseWrite.lblAgainClick(Sender: TObject);
var
  i, val : Integer;

begin
  lblAgain.Visible := False;
  lblHome.Visible := False;

  lblNext.Caption := 'START';
  lblNext.Visible := True;

  pnlSelectName := imgJawabHuruf1.Name;

  NoSoal := 0;
  lblQuetions.Caption := '';

  setPanelJawaban(exerciseMode);
  pnlJawabanHuruf.Visible := False;

  randomKeyboard;
  pnlKeyboard.Visible := False;

  {Mengosongkan Lembar Soal}
  for i := 0 to 9 do
    soalTemp[i] := '-';

  showSoal;

  {Mengosongkan Lembar Jawaban}
  for i := 0 to 9 do
    jawabanTemp[i] := '-';

  showJawaban;

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
    pnlKeyboard.Visible := True;
    pnlJawabanHuruf.Visible := True;

    lblHome.Visible := False;
    lblNext.Caption := 'NEXT';
  end
  else if lblNext.Caption = 'NEXT' then
  begin
    jawabanTemp[NoSoal-1] := mergeWord;
    showJawaban;
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

    showSoal;

    frmNilai.nilai := nilai;
    frmNilai.lblIntroduce.Caption := 'conratulation ' + lblUsername.Caption;
    frmNilai.ShowModal;

    lblNext.Visible := False;
    lblAgain.Visible := True;
    lblHome.Visible := True;

    lblQuetions.Caption := 'COMPLETED';

    Exit;
  end;

  setPanelJawaban(exerciseMode);
  selectJawabanClick(imgJawabHuruf1);

  pnlSoal.Caption := soalTemp[NoSoal];
  NoSoal := NoSoal + 1;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal).ToString;

  if NoSoal > 10 then
  begin
    lblQuetions.Visible := False;
    lblNext.Caption := 'FINISH';
  end;

end;

function TfrmExerciseWrite.mergeWord : string;
begin
  case exerciseMode of
    0:{Easy}
    begin
      Result := imgJawabHuruf1.Hint + imgJawabHuruf2.Hint + imgJawabHuruf3.Hint + imgJawabHuruf4.Hint + imgJawabHuruf5.Hint;
    end;
    1:{Normal}
    begin
      Result := imgJawabHuruf1.Hint + imgJawabHuruf2.Hint + imgJawabHuruf3.Hint + imgJawabHuruf4.Hint + imgJawabHuruf5.Hint;
    end;
    2:{Hard}
    begin
      Result := imgJawabHuruf1.Hint + imgJawabHuruf2.Hint + imgJawabHuruf3.Hint + imgJawabHuruf4.Hint + imgJawabHuruf5.Hint;
    end;
  end;
end;

end.
