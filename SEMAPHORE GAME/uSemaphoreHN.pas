unit uSemaphoreHN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  uMain, uSemaphoreAG;

type
  TfrmSemaphoreHN = class(TForm)
    imgH: TImage;
    imgI: TImage;
    imgJ: TImage;
    imgK: TImage;
    imgL: TImage;
    imgKembali: TImage;
    imgM: TImage;
    imgN: TImage;
    imgOke: TImage;
    imgSemaphore: TImage;
    lblH: TLabel;
    lblI: TLabel;
    lblJ: TLabel;
    lblK: TLabel;
    lblL: TLabel;
    lblKembali: TLabel;
    lblM: TLabel;
    lblN: TLabel;
    lblOke: TLabel;
    lblSemaphore: TLabel;
    imgKeluar: TImage;
    lblKeluar: TLabel;
    procedure lblKembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreHN: TfrmSemaphoreHN;

implementation

{$R *.dfm}

procedure TfrmSemaphoreHN.lblKembaliClick(Sender: TObject);
begin
  frmSemaphoreAG.Show;
end;

end.
