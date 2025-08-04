unit ufrmPengenalanLittle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmPengenalanLittle = class(TForm)
    pnlBackground: TPanel;
    imgBackground: TImage;
    imgHistory: TImage;
    imgIntruksi: TImage;
    imgNilaiStrategis: TImage;
    imgRegulasi: TImage;
    lblHistory: TLabel;
    lblIntruksi: TLabel;
    lblNilaiStrategis: TLabel;
    lblRegulasi: TLabel;
    pnlHistory: TPanel;
    img1: TImage;
    lbl1: TLabel;
    imgCharles: TImage;
    imgJhon: TImage;
    Label8: TLabel;
    pnlInstruksi: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Image5: TImage;
    lblIn: TLabel;
    Label4: TLabel;
    pnlNilaiStrategis: TPanel;
    Image1: TImage;
    Label1: TLabel;
    imgSmp: TImage;
    Label5: TLabel;
    pnlRegulasi: TPanel;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label6: TLabel;
    Label7: TLabel;
    lblHome: TLabel;
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
    procedure lblHomeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPengenalanLittle: TfrmPengenalanLittle;

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


procedure TfrmPengenalanLittle.FormShow(Sender: TObject);
begin
  EnableComposited(pnlBackground)
end;

procedure TfrmPengenalanLittle.lblHistoryClick(Sender: TObject);
begin
  pnlHistory.Bringtofront;
end;

procedure TfrmPengenalanLittle.lblHistoryMouseEnter(Sender: TObject);
begin
  lblHistory.Font.Size  := 35;
end;

procedure TfrmPengenalanLittle.lblHistoryMouseLeave(Sender: TObject);
begin
  lblHistory.Font.Size  := 30;
end;

procedure TfrmPengenalanLittle.lblHomeClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPengenalanLittle.lblIntruksiClick(Sender: TObject);
begin
  pnlInstruksi.BringToFront;
end;

procedure TfrmPengenalanLittle.lblIntruksiMouseEnter(Sender: TObject);
begin
  lblIntruksi.Font.Size  := 35;
end;

procedure TfrmPengenalanLittle.lblIntruksiMouseLeave(Sender: TObject);
begin
  lblIntruksi.Font.Size  := 30;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisClick(Sender: TObject);
begin
  pnlNilaiStrategis.BringToFront;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisMouseEnter(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 35;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisMouseLeave(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 30;
end;

procedure TfrmPengenalanLittle.lblRegulasiClick(Sender: TObject);
begin
  pnlRegulasi.BringToFront;
end;

procedure TfrmPengenalanLittle.lblRegulasiMouseEnter(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 35;
end;

procedure TfrmPengenalanLittle.lblRegulasiMouseLeave(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 30;
end;

end.
