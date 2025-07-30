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
    lbl1: TLabel;
    lblKeteranganGrade: TLabel;
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
  lblKeteranganSkor.Caption := 'Anda mendapatkan skor ' + nilai.ToString + ' poin';

  if nilai < 50 then
    lblKeteranganGrade.Caption := 'anda masuk kategori tulul'
  else if (nilai > 50) and (nilai < 70) then
    lblKeteranganGrade.Caption := 'anda masuk kategori normal'
  else if (nilai > 70) then
    lblKeteranganGrade.Caption := 'anda masuk kategori bagus'

end;

procedure TfrmNilai.imgOKClick(Sender: TObject);
begin
  Close;
end;

end.
