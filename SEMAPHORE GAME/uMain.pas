unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uSemaphoreAG;

type
  TfrmSemaphore = class(TForm)
    imgIntroduce: TImage;
    lblIntroduce: TLabel;
    imgSEmaphoreHuruf: TImage;
    imgSemaphoreBaca: TImage;
    imgExit: TImage;
    imgOke: TImage;
    lblSemaphoreHuruf: TLabel;
    lblSemaphoreBaca: TLabel;
    lblExit: TLabel;
    lblOke: TLabel;
    imgSemaphoreKata: TImage;
    lblSemaphoreKata: TLabel;
    imgSemaphoreKirim: TImage;
    lblSemaphoreKirim: TLabel;
    procedure lblOkeClick(Sender: TObject);
    procedure lblSemaphoreHurufClick(Sender: TObject);
//    procedure imgMorseGameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphore: TfrmSemaphore;

implementation

{$R *.dfm}

procedure TfrmSemaphore.lblSemaphoreHurufClick(Sender: TObject);
begin
  frmSemaphoreAG.Show;
end;

end.
