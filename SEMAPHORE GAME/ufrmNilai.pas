unit ufrmNilai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmNilai = class(TForm)
    pnlBackground: TPanel;
    imgBackground: TImage;
    imgOK: TImage;
    lblIntroduce: TLabel;
    lblOK: TLabel;
    lblKeteranganSkor: TLabel;
    lblKeteranganGrade: TLabel;
    imgBintang1: TImage;
    imgBintang2: TImage;
    imgBintang3: TImage;
    procedure FormShow(Sender: TObject);
    procedure imgOKClick(Sender: TObject);

  private

  public
    nilai : Integer;

  end;

var
  frmNilai: TfrmNilai;

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


procedure TfrmNilai.FormShow(Sender: TObject);
begin
  lblKeteranganSkor.Caption := 'skor ' + nilai.ToString + ' point';

  if nilai = 0 then
  begin
    imgBintang1.Picture.LoadFromFile('Image\Button\EmptyStar.png');
    imgBintang2.Picture.LoadFromFile('Image\Button\EmptyStar.png');
    imgBintang3.Picture.LoadFromFile('Image\Button\EmptyStar.png');

    lblKeteranganGrade.Caption := 'tulul'
  end
  else if nilai < 50 then
  begin
    imgBintang1.Picture.LoadFromFile('Image\Button\FullStar.png');
    imgBintang2.Picture.LoadFromFile('Image\Button\EmptyStar.png');
    imgBintang3.Picture.LoadFromFile('Image\Button\EmptyStar.png');

    lblKeteranganGrade.Caption := 'idiot'
  end
  else if (nilai > 50) and (nilai < 70) then
  begin
    imgBintang1.Picture.LoadFromFile('Image\Button\FullStar.png');
    imgBintang2.Picture.LoadFromFile('Image\Button\FullStar.png');
    imgBintang3.Picture.LoadFromFile('Image\Button\EmptyStar.png');

    lblKeteranganGrade.Caption := 'good job'
  end
  else if (nilai > 70) then
  begin
    imgBintang1.Picture.LoadFromFile('Image\Button\FullStar.png');
    imgBintang2.Picture.LoadFromFile('Image\Button\FullStar.png');
    imgBintang3.Picture.LoadFromFile('Image\Button\FullStar.png');

    lblKeteranganGrade.Caption := 'marvelous'
  end;

end;

procedure TfrmNilai.imgOKClick(Sender: TObject);
begin
  Close;
end;

end.
