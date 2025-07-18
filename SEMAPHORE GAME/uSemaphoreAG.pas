unit uSemaphoreAG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uSemaphoreHN, uMain;

type
  TfrmSemaphoreAG = class(TForm)
    imgSemaphore: TImage;
    lblSemaphore: TLabel;
    imgA: TImage;
    imgB: TImage;
    imgC: TImage;
    imgD: TImage;
    imgF: TImage;
    imgG: TImage;
    imgE: TImage;
    imgOke: TImage;
    lblOke: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblC: TLabel;
    lblD: TLabel;
    lblE: TLabel;
    lblF: TLabel;
    lblG: TLabel;
    imgExit: TImage;
    lblExit: TLabel;
    procedure lblExitClick(Sender: TObject);
    procedure lblOkeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreAG: TfrmSemaphoreAG;

implementation

{$R *.dfm}

procedure TfrmSemaphoreAG.lblExitClick(Sender: TObject);
begin
  frmSemaphore.Show;
end;

procedure TfrmSemaphoreAG.lblOkeClick(Sender: TObject);
begin
    frmSemaphoreHN.Show;
end;

end.
