unit ufrmExerciseRead;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

const
  C_EASY : array [0..9] of string = ('mandi', 'makan', 'pergi', 'duduk', 'tulis', 'warna', 'bubur', 'nanas', 'bebek', 'empat');
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
    img1: TImage;
    lblUsername: TLabel;
    lbl1: TLabel;
    img2: TImage;
    lblExerciseMode: TLabel;
    lbl2: TLabel;
    lblQuetions: TLabel;
    img3: TImage;
    
    procedure tmr1Timer(Sender: TObject);
    procedure lblReplayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    
  private
    tempTime2: Integer;
    soalTemp : array [0..4] of string;
    jawabTemp : array [0..9] of string; 
    NoSoal : Integer;

    procedure LoadHuruf(hrfVal: string);
    procedure copyWord(wrdVal: string);
    
  public
    { Public declarations }
  end;

var
  frmExerciseRead: TfrmExerciseRead;

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
begin
  NoSoal := 0;
  lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString; 

  EnableComposited(pnlBackground);
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

    copyWord(C_EASY[NoSoal]);

    tempTime2 := 0;
    tmr1.Enabled := True;
    NoSoal := NoSoal + 1;

    lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

    lblNext.Caption := 'NEXT';
  end
  else if lblNext.Caption = 'NEXT' then
  begin
    if tmr1.Enabled then
      Exit;

    copyWord(C_EASY[NoSoal]);

    tempTime2 := 0;
    tmr1.Enabled := True;
    NoSoal := NoSoal + 1;

    lblQuetions.Caption := 'QUESTION NO ' + (NoSoal + 1).ToString;

    if NoSoal > 9 then
      lblNext.Caption := 'FINISH';
  end
  else if lblNext.Caption = 'FINISH' then
  begin
    nilai := 0;
    
    for i := 0 to 9 do
    begin
      if jawabTemp[i] = C_EASY[i] then
      begin
        nilai := nilai + 1;
      end;
    end;

    nilai := nilai * 10;
    
    ShowMessage('Skor Anda : ' + nilai.ToString + ' dari 100 point' );
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

end;

procedure TfrmExerciseRead.tmr1Timer(Sender: TObject);
begin
  if tempTime2 > 4 then
  begin
    tmr1.Enabled := False;
    imgModel.Picture.LoadFromFile('Image\Model\spasi.png');
    edtJawaban.Visible := True;
    pnl3.Visible := True;
    Exit;
  end;

  LoadHuruf(soalTemp[tempTime2]);
  tempTime2 := tempTime2 + 1;
end;

end.
