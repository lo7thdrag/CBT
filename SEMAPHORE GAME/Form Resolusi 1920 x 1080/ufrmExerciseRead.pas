unit ufrmExerciseRead;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

const
  C_EASY1 : array [0..9] of string = ('mandi', 'makan', 'pergi', 'duduk', 'tulis', 'warna', 'bubur', 'nanas', 'bebek', 'empat');
  C_EASY2 : array [0..9] of string = ('bubuk', 'nilai', 'waris', 'harta', 'tulis', 'tahta', 'lapor', 'ingin', 'berak', 'dodol');

//  C_NORMAL : array [0..9] of string = ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
//                                           'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'numeral', 'spasi');
//  C_HARD : array [0..9] of string = ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
//                                           'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'numeral', 'spasi');

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
    tempTime2: Integer;
    soalTemp : array [0..4] of string;
    jawabTemp : array [0..9] of string;
    tesTemp : array [0..9] of string;
    NoSoal : Integer;

    procedure LoadHuruf(hrfVal: string);
    procedure copyWord(wrdVal: string);
    procedure showJawab;
    
  public
    { Public declarations }
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

procedure TfrmExerciseRead.copyWord(wrdVal: string);
var
  i : Integer;
  
begin
  for i := 0 to wrdVal.Length - 1 do
  begin
    soalTemp[i] := copy(wrdVal,i+1,1); 
  end;
end;

procedure TfrmExerciseRead.FormShow(Sender: TObject);
var
  i : Integer;

begin
//  NoSoal := 0;
//  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

  EnableComposited(pnlBackground);

  lblAgainClick(nil);

//  for i := 0 to 9 do
//    jawabTemp[i] := '-';
end;

procedure TfrmExerciseRead.lblAgainClick(Sender: TObject);
var
  i, val : Integer;

begin
  lblNext.Visible := True;
  lblNext.Caption := 'Start';

  NoSoal := 0;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

  val := Random(1);

  if val = 0 then
  begin
    for i := 0 to 9 do
      tesTemp[i] := C_EASY1[i];
  end
  else
  begin
    for i := 0 to 9 do
      tesTemp[i] := C_EASY2[i];
  end;

  for i := 0 to 9 do
    jawabTemp[i] := '-';
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

    copyWord(C_EASY1[NoSoal]);

    tempTime2 := 0;
    tmr1.Enabled := True;
    NoSoal := NoSoal + 1;

    lblNext.Caption := 'NEXT';
  end
  else if lblNext.Caption = 'NEXT' then
  begin
    if tmr1.Enabled then
      Exit;

    copyWord(C_EASY1[NoSoal]);

    tempTime2 := 0;
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
      if jawabTemp[i] = C_EASY1[i] then
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
  tempTime2 := 0;
  tmr1.Enabled := True;    
end;

procedure TfrmExerciseRead.LoadHuruf(hrfVal: string);
begin
  imgModel.Picture.LoadFromFile('Image\Model\' + hrfVal + '.png');
end;

procedure TfrmExerciseRead.pnl3Click(Sender: TObject);
begin
  jawabTemp[NoSoal-1] := edtJawaban.Text;
  showJawab;
end;

procedure TfrmExerciseRead.showJawab;
var
  i : Integer;

begin
  for i := 0 to 9 do
  begin
    case i of
      0 : pnl1Jawab1.Caption := '  ' + jawabTemp[i];
      1 : pnl1Jawab2.Caption := '  ' + jawabTemp[i];
      2 : pnl1Jawab3.Caption := '  ' + jawabTemp[i];
      3 : pnl1Jawab4.Caption := '  ' + jawabTemp[i];
      4 : pnl1Jawab5.Caption := '  ' + jawabTemp[i];
      5 : pnl1Jawab6.Caption := '  ' + jawabTemp[i];
      6 : pnl1Jawab7.Caption := '  ' + jawabTemp[i];
      7 : pnl1Jawab8.Caption := '  ' + jawabTemp[i];
      8 : pnl1Jawab9.Caption := '  ' + jawabTemp[i];
      9 : pnl1Jawab10.Caption := '  ' + jawabTemp[i];
    end;
  end;
end;

procedure TfrmExerciseRead.tmr1Timer(Sender: TObject);
begin
  if tempTime2 > 4 then
  begin
    tmr1.Enabled := False;
    imgModel.Picture.LoadFromFile('Image\Model\spasi.png');
    edtJawaban.Visible := True;
    edtJawaban.Text := '';
    pnl3.Visible := True;
    Exit;
  end;

  LoadHuruf(soalTemp[tempTime2]);
  tempTime2 := tempTime2 + 1;
end;

end.
