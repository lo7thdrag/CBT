unit uSemaphoreTV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphoreTY = class(TForm)
    imgT: TImage;
    imgU: TImage;
    imgV: TImage;
    imgKeluar: TImage;
    imgKembali: TImage;
    imgOke: TImage;
    imgSemaphore: TImage;
    lblT: TLabel;
    lblU: TLabel;
    lblV: TLabel;
    lblKeluar: TLabel;
    lblKembali: TLabel;
    lblOke: TLabel;
    lblSemaphore: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreTY: TfrmSemaphoreTY;

implementation

{$R *.dfm}

end.
