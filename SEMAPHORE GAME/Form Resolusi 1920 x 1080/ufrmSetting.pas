unit ufrmSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmSetting = class(TForm)
    pnlBackground: TPanel;
    imgBackground: TImage;
    imgCancel: TImage;
    imgOK: TImage;
    imgLargeResolution: TImage;
    imgLittleResolution: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblCancel: TLabel;
    lblIntroduce: TLabel;
    lblOK: TLabel;
    edtUserPlayer: TEdit;
    procedure FormShow(Sender: TObject);
    procedure imgLargeResolutionClick(Sender: TObject);
    procedure imgLittleResolutionClick(Sender: TObject);
    procedure imgOKClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);

  private
    procedure SetDisplay(intVal : Integer);

  public
    displayResolution : Integer;
    playerName : string;

  end;

var
  frmSetting: TfrmSetting;

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


procedure TfrmSetting.FormShow(Sender: TObject);
begin
  EnableComposited(pnlBackground);

  SetDisplay(displayResolution);
  edtUserPlayer.Text := playerName;

end;

procedure TfrmSetting.imgCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSetting.imgLargeResolutionClick(Sender: TObject);
begin
  displayResolution := 0;
  SetDisplay(displayResolution);
end;

procedure TfrmSetting.imgLittleResolutionClick(Sender: TObject);
begin
  displayResolution := 1;
  SetDisplay(displayResolution);
end;

procedure TfrmSetting.imgOKClick(Sender: TObject);
begin
  playerName := edtUserPlayer.Text;
  ModalResult := mrOk;
end;

procedure TfrmSetting.SetDisplay(intVal: Integer);
begin
  case intVal of
    0 :
    begin
      imgLargeResolution.Picture.LoadFromFile('Image\Button\rdSelect.png');
      imgLittleResolution.Picture.LoadFromFile('Image\Button\rdUnselect.png');
    end;
    1 :
    begin
      imgLargeResolution.Picture.LoadFromFile('Image\Button\rdUnselect.png');
      imgLittleResolution.Picture.LoadFromFile('Image\Button\rdSelect.png');
    end;
  end;
end;

end.
