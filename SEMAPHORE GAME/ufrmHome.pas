unit ufrmHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;
type
  TfrmHome = class(TForm)
    imgIntroduce: TImage;
    imgSEmaphoreHuruf: TImage;
    imgSemaphoreBaca: TImage;
    imgExit: TImage;
    lblSemaphoreHuruf: TLabel;
    lblSemaphoreBaca: TLabel;
    lblExit: TLabel;
    imgSemaphoreKata: TImage;
    lblSemaphoreKata: TLabel;
    imgSemaphoreKirim: TImage;
    lbl1: TLabel;
    imgBackground: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure lblSemaphoreHurufClick(Sender: TObject);
    procedure imgSEmaphoreHurufClick(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
//    procedure imgMorseGameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses
  ufrmSemaphore;

procedure TfrmHome.imgSEmaphoreHurufClick(Sender: TObject);
begin
  frmSemaphore.Show;
end;

procedure TfrmHome.lbl3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmHome.lblSemaphoreHurufClick(Sender: TObject);
begin
  frmSemaphore.Show;
end;

end.
