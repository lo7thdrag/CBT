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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPengenalanLittle: TfrmPengenalanLittle;

implementation

{$R *.dfm}

procedure TfrmPengenalanLittle.lblHistoryClick(Sender: TObject);
begin
  pnlHistory.Bringtofront;
end;

procedure TfrmPengenalanLittle.lblHistoryMouseEnter(Sender: TObject);
begin
  lblHistory.Font.Size  := 35;
  lblHistory.Left       := 229;
  lblHistory.Top        := 150;
end;

procedure TfrmPengenalanLittle.lblHistoryMouseLeave(Sender: TObject);
begin
  lblHistory.Font.Size  := 30;
  lblHistory.Left       := 239;
  lblHistory.Top        := 153;
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
  lblIntruksi.Left       := 229;
  lblIntruksi.Top        := 150;
end;

procedure TfrmPengenalanLittle.lblIntruksiMouseLeave(Sender: TObject);
begin
  lblIntruksi.Font.Size  := 30;
  lblIntruksi.Left       := 118;
  lblIntruksi.Top        := 525;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisClick(Sender: TObject);
begin
  pnlNilaiStrategis.BringToFront;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisMouseEnter(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 35;
  lblNilaiStrategis.Left       := 87;
  lblNilaiStrategis.Top        := 522;
end;

procedure TfrmPengenalanLittle.lblNilaiStrategisMouseLeave(Sender: TObject);
begin
  lblNilaiStrategis.Font.Size  := 30;
  lblNilaiStrategis.Left       := 248;
  lblNilaiStrategis.Top        := 277;
end;

procedure TfrmPengenalanLittle.lblRegulasiClick(Sender: TObject);
begin
  pnlRegulasi.BringToFront;
end;

procedure TfrmPengenalanLittle.lblRegulasiMouseEnter(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 35;
  lblRegulasi.Left       := 401;
  lblRegulasi.Top        := 230;
end;

procedure TfrmPengenalanLittle.lblRegulasiMouseLeave(Sender: TObject);
begin
  lblRegulasi.Font.Size  := 30;
  lblRegulasi.Left       := 230;
  lblRegulasi.Top        := 398;
end;

end.
