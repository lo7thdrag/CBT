unit UfrmExerciseReadLittle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage,

  uDataType;

type
  TfrmExerciseReadLittle = class(TForm)
    imgBackground: TImage;
    pnlBackground: TPanel;
    tmr1: TTimer;
    pnl4: TPanel;
    img4: TImage;
    lbl18: TLabel;
    lblUsername: TLabel;
    imgModel: TImage;
    pnl3: TPanel;
    edtJawaban: TEdit;
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lblExerciseMode: TLabel;
    pnl2: TPanel;
    pnl1Jawab1: TPanel;
    pnlJawab11: TPanel;
    pnl5: TPanel;
    pnl1Jawab2: TPanel;
    pnlJawab22: TPanel;
    pnl6: TPanel;
    pnl1Jawab3: TPanel;
    pnlJawab33: TPanel;
    pnl7: TPanel;
    pnl1Jawab4: TPanel;
    pnlJawab44: TPanel;
    pnl8: TPanel;
    pnl1Jawab5: TPanel;
    pnlJawab55: TPanel;
    pnl9: TPanel;
    pnl1Jawab6: TPanel;
    pnlJawab66: TPanel;
    pnl10: TPanel;
    pnl1Jawab7: TPanel;
    pnlJawab77: TPanel;
    pnl11: TPanel;
    pnlJawab88: TPanel;
    pnl1Jawab8: TPanel;
    pnl12: TPanel;
    pnl1Jawab9: TPanel;
    pnlJawab99: TPanel;
    pnl13: TPanel;
    pnl1Jawab10: TPanel;
    pnlJawab100: TPanel;
    lblQuetions: TLabel;
    lblAgain: TLabel;
    lblHome: TLabel;
    lblNext: TLabel;
    lblReplay: TLabel;
    procedure lblNextClick(Sender: TObject);
    procedure lblHomeClick(Sender: TObject);
    procedure lblReplayClick(Sender: TObject);
    procedure lblAgainClick(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    noHuruf       : Integer;
    hurufEasy     : array [0..4] of string;
    hurufNormal   : array [0..9] of string;
    hurufHard     : array [0..14] of string;

    soalTemp      : array [0..9] of string;
    jawabanTemp   : array [0..9] of string;

    NoSoal        : Integer;

    procedure LoadHuruf(hrfVal: string);
    procedure splitWord(wrdVal: string);
    procedure showJawab;

  public
    exerciseMode : Integer; {0: Easy; 1: Normal; 2: Hard;}

  end;

var
  frmExerciseReadLittle: TfrmExerciseReadLittle;

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

procedure TfrmExerciseReadLittle.FormShow(Sender: TObject);
var
  i : Integer;

begin
  EnableComposited(pnlBackground);

  lblAgainClick(nil);
  lblHome.Visible := True;
end;

procedure TfrmExerciseReadLittle.lblAgainClick(Sender: TObject);
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

  val := 1 + Random(10);

  {Create Soal Baru}
  for i := 0 to 9 do
    soalTemp[i] := LowerCase(GetQuestion(exerciseMode, val, i));

  {Mengosongkan Lembar Jawaban}
  for i := 0 to 9 do
    jawabanTemp[i] := '-';
end;

procedure TfrmExerciseReadLittle.lblHomeClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExerciseReadLittle.lblNextClick(Sender: TObject);
var
  i       : Integer;
  tempStr : string;
  nilai   : Integer;

begin
  if tmr1.Enabled then
    Exit;

  if lblNext.Caption = 'START' then
  begin
    lblReplay.Visible := True;
    lblHome.Visible   := False;
    lblNext.Caption   := 'NEXT';
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

    pnlJawab11.Caption := '  ' + soalTemp[0];
    pnlJawab22.Caption := '  ' + soalTemp[1];
    pnlJawab33.Caption := '  ' + soalTemp[2];
    pnlJawab44.Caption := '  ' + soalTemp[3];
    pnlJawab55.Caption := '  ' + soalTemp[4];
    pnlJawab66.Caption := '  ' + soalTemp[5];
    pnlJawab77.Caption := '  ' + soalTemp[6];
    pnlJawab88.Caption := '  ' + soalTemp[7];
    pnlJawab99.Caption := '  ' + soalTemp[8];
    pnlJawab100.Caption := '  ' + soalTemp[9];

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

procedure TfrmExerciseReadLittle.lblReplayClick(Sender: TObject);
begin
  noHuruf := 0;
  tmr1.Enabled := True;
end;

procedure TfrmExerciseReadLittle.LoadHuruf(hrfVal: string);
begin
  imgModel.Picture.LoadFromFile('Image\Model\' + hrfVal + '.png');
end;

procedure TfrmExerciseReadLittle.pnl3Click(Sender: TObject);
begin
  jawabanTemp[NoSoal-1] := LowerCase(edtJawaban.Text);
  showJawab;
end;

procedure TfrmExerciseReadLittle.showJawab;
var
  i : Integer;

begin
  for i := 0 to 9 do
  begin
    case i of
      0 : pnl1Jawab1.Caption := '  ' + jawabanTemp[i];
      1 : pnl1Jawab2.Caption := '  ' + jawabanTemp[i];
      2 : pnl1Jawab3.Caption := '  ' + jawabanTemp[i];
      3 : pnl1Jawab4.Caption := '  ' + jawabanTemp[i];
      4 : pnl1Jawab5.Caption := '  ' + jawabanTemp[i];
      5 : pnl1Jawab6.Caption := '  ' + jawabanTemp[i];
      6 : pnl1Jawab7.Caption := '  ' + jawabanTemp[i];
      7 : pnl1Jawab8.Caption := '  ' + jawabanTemp[i];
      8 : pnl1Jawab9.Caption := '  ' + jawabanTemp[i];
      9 : pnl1Jawab10.Caption := '  ' + jawabanTemp[i];
    end;
  end;
end;

procedure TfrmExerciseReadLittle.splitWord(wrdVal: string);
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

procedure TfrmExerciseReadLittle.tmr1Timer(Sender: TObject);
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
  noHuruf := noHuruf + 1;
end;

end.
