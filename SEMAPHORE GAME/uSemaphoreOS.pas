unit uSemaphoreOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphoreOS = class(TForm)
    imgO: TImage;
    imgP: TImage;
    imgQ: TImage;
    imgR: TImage;
    imgKeluar: TImage;
    imgKembali: TImage;
    imgS: TImage;
    imgOke: TImage;
    imgSemaphore: TImage;
    lblO: TLabel;
    lblP: TLabel;
    lblQ: TLabel;
    lblR: TLabel;
    lblKeluar: TLabel;
    lblKembali: TLabel;
    lblS: TLabel;
    lblOke: TLabel;
    lblSemaphore: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreOS: TfrmSemaphoreOS;

implementation

{$R *.dfm}

end.
