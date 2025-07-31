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
    pnl1Jawab1: TPanel;
    pnl1Jawab2: TPanel;
    pnl1Jawab3: TPanel;
    pnl1Jawab4: TPanel;
    pnl1Jawab5: TPanel;
    pnl1Jawab6: TPanel;
    pnl1Jawab7: TPanel;
    pnl1Jawab8: TPanel;
    pnl1Jawab9: TPanel;
    pnl1Jawab10: TPanel;
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
    
    procedure tmr1Timer(Sender: TObject);
    procedure lblReplayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure lblHomeClick(Sender: TObject);
    procedure lblAgainClick(Sender: TObject);
    
  private
    noHuruf: Integer;
    hurufEasy : array [0..4] of string;
    hurufNormal : array [0..9] of string;
    hurufHard : array [0..14] of string;

    soalTemp : array [0..9] of string;
    jawabanTemp : array [0..9] of string;

    NoSoal : Integer;

    procedure LoadHuruf(hrfVal: string);
    procedure splitWord(wrdVal: string);
    procedure showJawab;
    
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
end;

procedure TfrmExerciseRead.lblAgainClick(Sender: TObject);
var
  i, val : Integer;

begin
  lblNext.Visible := True;
  lblNext.Caption := 'START';

  NoSoal := 0;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

  val := Random(10);

  if val = 0 then
  begin
    for i := 0 to 9 do
      soalTemp[i] := C_EASY1[i];
  end
  else
  begin
    for i := 0 to 9 do
      soalTemp[i] := C_EASY2[i];
  end;

  for i := 0 to 9 do
    jawabanTemp[i] := '-';
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
  if lblNext.Caption = 'START' then
  begin
    lblReplay.Visible := True;

    splitWord(C_EASY1[NoSoal]);

    noHuruf := 0;
    tmr1.Enabled := True;
    NoSoal := NoSoal + 1;

    lblNext.Caption := 'NEXT';
  end
  else if lblNext.Caption = 'NEXT' then
  begin
    if tmr1.Enabled then
      Exit;

    splitWord(C_EASY1[NoSoal]);

    noHuruf := 0;
    tmr1.Enabled := True;
    NoSoal := NoSoal + 1;

    lblQuetions.Caption := 'QUESTION NO ' + (NoSoal).ToString;

    if NoSoal > 9 then
      lblNext.Caption := 'FINISH';
  end
  else if lblNext.Caption = 'FINISH' then
  begin
    nilai := 0;

    for i := 0 to 9 do
    begin
      if jawabanTemp[i] = C_EASY1[i] then
      begin
        nilai := nilai + 1;
      end;
    end;

    pnlJawab11.Caption := '  ' + C_EASY1[0];
    pnlJawab22.Caption := '  ' + C_EASY1[1];
    pnlJawab33.Caption := '  ' + C_EASY1[2];
    pnlJawab44.Caption := '  ' + C_EASY1[3];
    pnlJawab55.Caption := '  ' + C_EASY1[4];
    pnlJawab66.Caption := '  ' + C_EASY1[5];
    pnlJawab77.Caption := '  ' + C_EASY1[6];
    pnlJawab88.Caption := '  ' + C_EASY1[7];
    pnlJawab99.Caption := '  ' + C_EASY1[8];
    pnlJawab100.Caption := '  ' + C_EASY1[9];

    nilai := nilai * 10;

    frmNilai.nilai := nilai;
    frmNilai.ShowModal;

    lblReplay.Visible := False;
    lblNext.Visible := False;
    lblAgain.Visible := True;
    lblHome.Visible := True;
  end;

  edtJawaban.Visible := False;
  pnl3.Visible := False;
end;

procedure TfrmExerciseRead.lblReplayClick(Sender: TObject);  
begin
  noHuruf := 0;
  tmr1.Enabled := True;    
end;

procedure TfrmExerciseRead.LoadHuruf(hrfVal: string);
begin
  imgModel.Picture.LoadFromFile('Image\Model\' + hrfVal + '.png');
end;

procedure TfrmExerciseRead.pnl3Click(Sender: TObject);
begin
  jawabanTemp[NoSoal-1] := edtJawaban.Text;
  showJawab;
end;

procedure TfrmExerciseRead.showJawab;
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

procedure TfrmExerciseRead.tmr1Timer(Sender: TObject);
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
