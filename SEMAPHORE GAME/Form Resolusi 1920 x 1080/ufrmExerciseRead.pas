unit ufrmExerciseRead;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls,

  uDataType;

type
  TfrmExerciseRead = class(TForm)
    imgBackground: TImage;
    edtJawaban: TEdit;
    imgModel: TImage;
    lblReplay: TLabel;
    lblNext: TLabel;
    pnlBackground: TPanel;
    tmr1: TTimer;
    pnl3: TPanel;
    lblQuetions: TLabel;
    pnl4: TPanel;
    img4: TImage;
    lbl18: TLabel;
    lblUsername: TLabel;
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lblExerciseMode: TLabel;
    pnl2: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl12: TPanel;
    pnl13: TPanel;
    pnlJawab1: TPanel;
    pnlJawab2: TPanel;
    pnlJawab3: TPanel;
    pnlJawab4: TPanel;
    pnlJawab5: TPanel;
    pnlJawab6: TPanel;
    pnlJawab7: TPanel;
    pnlJawab8: TPanel;
    pnlJawab9: TPanel;
    pnlJawab10: TPanel;
    pnlJawab11: TPanel;
    pnlJawab22: TPanel;
    pnlJawab33: TPanel;
    pnlJawab44: TPanel;
    pnlJawab55: TPanel;
    pnlJawab66: TPanel;
    pnlJawab77: TPanel;
    pnlJawab88: TPanel;
    pnlJawab99: TPanel;
    pnlJawab100: TPanel;
    lblAgain: TLabel;
    lblHome: TLabel;
    imgReplay1: TImage;
    imgReplay2: TImage;
    imgReplay3: TImage;
    
    procedure tmr1Timer(Sender: TObject);
    procedure lblReplayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure lblHomeClick(Sender: TObject);
    procedure lblAgainClick(Sender: TObject);
    
  private
    noHuruf: Integer;
    sumReplay: Integer;
    hurufEasy : array [0..4] of string;
    hurufNormal : array [0..9] of string;
    hurufHard : array [0..14] of string;

    soalTemp : array [0..9] of string;
    jawabanTemp : array [0..9] of string;

    NoSoal : Integer;

    procedure LoadHuruf(hrfVal: string);
    procedure splitWord(wrdVal: string);
    procedure showJawaban;
    procedure showSoal;
    procedure showReplay;
    
  public
    exerciseMode : Integer; {0: Easy; 1: Normal; 2: Hard;}

  end;

var
  frmExerciseRead: TfrmExerciseRead;

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

procedure TfrmExerciseRead.splitWord(wrdVal: string);
var
  i : Integer;
  
begin
  case exerciseMode of
    0:{Easy}
    begin
      for i := 0 to wrdVal.Length - 1 do
      begin
        hurufEasy[i] := copy(wrdVal,i+1,1);
      end;
    end;
    1:{Normal}
    begin
      for i := 0 to wrdVal.Length - 1 do
      begin
        hurufNormal[i] := copy(wrdVal,i+1,1);
      end;
    end;
    2:{Hard}
    begin
      for i := 0 to wrdVal.Length - 1 do
      begin
        hurufHard[i] := copy(wrdVal,i+1,1);
      end;
    end;
  end;
end;

procedure TfrmExerciseRead.FormShow(Sender: TObject);
var
  i : Integer;

begin
  EnableComposited(pnlBackground);

  lblAgainClick(nil);
  lblHome.Visible := True;
end;

procedure TfrmExerciseRead.lblAgainClick(Sender: TObject);
var
  i, val : Integer;

begin
  lblAgain.Visible := False;
  lblHome.Visible := False;
  lblNext.Visible := True;
  lblNext.Caption := 'START';

  NoSoal := 0;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

  case exerciseMode of
    0: edtJawaban.MaxLength := 5;
    1: edtJawaban.MaxLength := 10;
    2: edtJawaban.MaxLength := 15;
  end;

  {$REGION ' Reset Replay '}
  sumReplay := 3;
  showReplay;
  {$ENDREGION}

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

procedure TfrmExerciseRead.lblHomeClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExerciseRead.lblNextClick(Sender: TObject);
var
  i : Integer;
  tempStr : string;
  nilai : Integer;
  
begin
  if tmr1.Enabled then
    Exit;

  if lblNext.Caption = 'START' then
  begin
    lblReplay.Visible := True;
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

    showSoal;

    frmNilai.nilai := nilai;
    frmNilai.lblIntroduce.Caption := 'conratulation ' + lblUsername.Caption;
    frmNilai.ShowModal;

    lblReplay.Visible := False;
    lblNext.Visible := False;
    lblAgain.Visible := True;
    lblHome.Visible := True;

    edtJawaban.Visible := False;
    pnl3.Visible := False;

    lblQuetions.Caption := 'COMPLETED';

    Exit;
  end;

  splitWord(soalTemp[NoSoal]);

  noHuruf := 0;
  tmr1.Enabled := True;
  NoSoal := NoSoal + 1;

  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal).ToString;

  if NoSoal > 9 then
      lblNext.Caption := 'FINISH';

  edtJawaban.Visible := False;
  pnl3.Visible := False;
end;

procedure TfrmExerciseRead.lblReplayClick(Sender: TObject);  
begin
  if sumReplay < 1 then
  begin
    lblReplay.Visible := False;
    Exit;
  end;

  sumReplay := sumReplay - 1;
  showReplay;

  noHuruf := 0;
  tmr1.Enabled := True;    
end;

procedure TfrmExerciseRead.LoadHuruf(hrfVal: string);
begin
  if hrfVal = ' ' then
    imgModel.Picture.LoadFromFile('Image\Model\spasi.png')
  else
    imgModel.Picture.LoadFromFile('Image\Model\' + hrfVal + '.png');
end;

procedure TfrmExerciseRead.pnl3Click(Sender: TObject);
begin
  jawabanTemp[NoSoal-1] := LowerCase(edtJawaban.Text);
  showJawaban;
end;

procedure TfrmExerciseRead.showJawaban;
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

procedure TfrmExerciseRead.showReplay;
begin
  case sumReplay of
    0 :
    begin
      imgReplay1.Picture.LoadFromFile('Image\Model\-.png');
      imgReplay2.Picture.LoadFromFile('Image\Model\-.png');
      imgReplay3.Picture.LoadFromFile('Image\Model\-.png');
    end;
    1:
    begin
      imgReplay1.Picture.LoadFromFile('Image\Model\spasi.png');
      imgReplay2.Picture.LoadFromFile('Image\Model\-.png');
      imgReplay3.Picture.LoadFromFile('Image\Model\-.png');
    end;
    2:
    begin
      imgReplay1.Picture.LoadFromFile('Image\Model\spasi.png');
      imgReplay2.Picture.LoadFromFile('Image\Model\spasi.png');
      imgReplay3.Picture.LoadFromFile('Image\Model\-.png');
    end;
    3:
    begin
      imgReplay1.Picture.LoadFromFile('Image\Model\spasi.png');
      imgReplay2.Picture.LoadFromFile('Image\Model\spasi.png');
      imgReplay3.Picture.LoadFromFile('Image\Model\spasi.png');
    end;
  end;
end;

procedure TfrmExerciseRead.showSoal;
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

procedure TfrmExerciseRead.tmr1Timer(Sender: TObject);
begin
  case exerciseMode of
    0:{Easy}
    begin
      if noHuruf > 4 then
      begin
        tmr1.Enabled := False;
        imgModel.Picture.LoadFromFile('Image\Model\spasi.png');
        edtJawaban.Visible := True;
        edtJawaban.Text := '';
        pnl3.Visible := True;
        Exit;
      end;

      LoadHuruf(hurufEasy[noHuruf]);
    end;
    1:{Normal}
    begin
      if noHuruf > 9 then
      begin
        tmr1.Enabled := False;
        imgModel.Picture.LoadFromFile('Image\Model\spasi.png');
        edtJawaban.Visible := True;
        edtJawaban.Text := '';
        pnl3.Visible := True;
        Exit;
      end;

      LoadHuruf(hurufNormal[noHuruf]);
    end;
    2:{Hard}
    begin
      if noHuruf > 14 then
      begin
        tmr1.Enabled := False;
        imgModel.Picture.LoadFromFile('Image\Model\spasi.png');
        edtJawaban.Visible := True;
        edtJawaban.Text := '';
        pnl3.Visible := True;
        Exit;
      end;

      LoadHuruf(hurufHard[noHuruf]);
    end;
  end;

  noHuruf := noHuruf + 1;
end;

end.
