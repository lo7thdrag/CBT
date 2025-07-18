unit uSemaphore80;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphore80 = class(TForm)
    img8: TImage;
    img9: TImage;
    imgV: TImage;
    imgKeluar: TImage;
    imgKembali: TImage;
    imgOke: TImage;
    imgSemaphore: TImage;
    lbl8: TLabel;
    lbl9: TLabel;
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
  frmSemaphore80: TfrmSemaphore80;

implementation

{$R *.dfm}

end.
