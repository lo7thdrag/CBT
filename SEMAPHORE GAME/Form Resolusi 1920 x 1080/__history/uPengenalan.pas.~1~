unit uPengenalan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TfrmPengenalan = class(TForm)
    imgBackground: TImage;
    imgHistory: TImage;
    imgNilaiStrategis: TImage;
    imgRegulasi: TImage;
    imgIntruksi: TImage;
    pnlHistory: TPanel;
    img1: TImage;
    lbl1: TLabel;
    pnlNilaiStrategis: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlInstruksi: TPanel;
    Image2: TImage;
    Label2: TLabel;
    pnlRegulasi: TPanel;
    Image3: TImage;
    Label3: TLabel;
    lblHistory: TLabel;
    lblRegulasi: TLabel;
    lblNilaiStrategis: TLabel;
    lblIntruksi: TLabel;
    imgCharles: TImage;
    imgSmp: TImage;
    Image4: TImage;
    Image5: TImage;
    pnlBackground: TPanel;
    procedure lblHistoryClick(Sender: TObject);
    procedure lblNilaiStrategisClick(Sender: TObject);
    procedure lblRegulasiClick(Sender: TObject);
    procedure lblIntruksiClick(Sender: TObject);
    procedure lblHistoryMouseEnter(Sender: TObject);
    procedure lblHistoryMouseLeave(Sender: TObject);
    procedure lblNilaiStrategisMouseEnter(Sender: TObject);
    procedure lblNilaiStrategisMouseLeave(Sender: TObject);
    procedure lblRegulasiMouseEnter(Sender: TObject);
    procedure lblRegulasiMouseLeave(Sender: TObject);
    procedure lblIntruksiMouseEnter(Sender: TObject);
    procedure lblIntruksiMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPengenalan: TfrmPengenalan;

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


procedure TfrmPengenalan.FormShow(Sender: TObject);
begin
  EnableComposited(pnlBackground)
end;

procedure TfrmPengenalan.lblHistoryClick(Sender: TObject);
begin
  pnlHistory.BringToFront;
end;

procedure TfrmPengenalan.lblHistoryMouseEnter(Sender: TObject);
begin
  lblHistory.Font.Size  := 45;
  lblHistory.Left       := 310;
  lblHistory.Top        := 248;
end;

procedure TfrmPengenalan.lblHistoryMouseLeave(Sender: TObject);
begin
  lblHistory.Font.Size  := 40;
  lblHistory.Left       := 320;
  lblHistory.Top        := 252;
end;

procedure TfrmPengenalan.lblIntruksiClick(Sender: TObject);
begin
  pnlInstruksi.BringToFront;
end;

procedure TfrmPengenalan.lblIntruksiMouseEnter(Sender: TObject);
begin
  lblIntruksi.Font.Size  := 45;
  lblIntruksi.Left       := 131;
  lblIntruksi.Top        := 773;
end;

procedure TfrmPengenalan.lblIntruksiMouseLeave(Sender: TObject);
begin
  lblIntruksi.Font.Size  := 40;
  lblIntruksi.Left       := 160;
  lblIntruksi.Top        := 776;
end;

procedure TfrmPengenalan.lblNilaiStrategisClick(Sender: TObject);
begin
  pnlNilaiStrategis.BringToFront;
end;

procedure TfrmPengenalan.lblNilaiStrategisMouseEnter(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 45;
  lblNilaiStrategis.Left       := 324;
  lblNilaiStrategis.Top        := 423;
end;

procedure TfrmPengenalan.lblNilaiStrategisMouseLeave(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 40;
  lblNilaiStrategis.Left       := 332;
  lblNilaiStrategis.Top        := 426;
end;

procedure TfrmPengenalan.lblRegulasiClick(Sender: TObject);
begin
  pnlRegulasi.BringToFront;
end;

procedure TfrmPengenalan.lblRegulasiMouseEnter(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 45;
  lblRegulasi.Left       := 297;
  lblRegulasi.Top        := 598;
end;

procedure TfrmPengenalan.lblRegulasiMouseLeave(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 40;
  lblRegulasi.Left       := 134;
  lblRegulasi.Top        := 308;
end;

end.
