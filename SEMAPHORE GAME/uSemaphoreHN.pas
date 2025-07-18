unit uSemaphoreHN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphoreHN = class(TForm)
    procedure lblExitClick(Sender: TObject);
    procedure lblOkeClick(Sender: TObject);
    procedure pnlSemaphoreHNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreHN: TfrmSemaphoreHN;

implementation

{$R *.dfm}
uses
  uSemaphore, uSemaphoreAG, uSemaphoreOS;

procedure TfrmSemaphoreHN.lblExitClick(Sender: TObject);
begin
  frmSemaphoreAG.Show;
end;

procedure TfrmSemaphoreHN.lblOkeClick(Sender: TObject);
begin
  frmSemaphoreOS.Show;
end;


end.
