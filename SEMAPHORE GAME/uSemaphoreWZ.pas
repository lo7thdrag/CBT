unit uSemaphoreWZ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphoreVZ = class(TForm)
    imgW: TImage;
    imgX: TImage;
    imgY: TImage;
    imgKeluar: TImage;
    imgKembali: TImage;
    imgZ: TImage;
    imgOke: TImage;
    imgSemaphore: TImage;
    lblW: TLabel;
    lblX: TLabel;
    lblY: TLabel;
    lblKeluar: TLabel;
    lblKembali: TLabel;
    lblZ: TLabel;
    lblOke: TLabel;
    lblSemaphore: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreVZ: TfrmSemaphoreVZ;

implementation

{$R *.dfm}

end.
