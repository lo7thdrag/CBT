unit uSemaphoreA0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSemaphoreAG = class(TForm)
    pnlSemaphoreAG: TPanel;
    imgA: TImage;
    imgB: TImage;
    imgC: TImage;
    imgD: TImage;
    imgE: TImage;
    imgExit: TImage;
    imgF: TImage;
    imgG: TImage;
    imgLanjut: TImage;
    imgSemaphore: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lblC: TLabel;
    lblD: TLabel;
    lblE: TLabel;
    lblF: TLabel;
    lblG: TLabel;
    lblKembali: TLabel;
    lblLanjut: TLabel;
    lblSemaphore: TLabel;
    pnlSemaphoreHN: TPanel;
    Image1: TImage;
    imgH: TImage;
    imgI: TImage;
    imgJ: TImage;
    imgK: TImage;
    imgKembali: TImage;
    imgL: TImage;
    imgM: TImage;
    imgN: TImage;
    imgOke: TImage;
    Image2: TImage;
    lblExit: TLabel;
    lblH: TLabel;
    lblI: TLabel;
    lblJ: TLabel;
    lblK: TLabel;
    Label3: TLabel;
    lblL: TLabel;
    lblM: TLabel;
    lblN: TLabel;
    lblOke: TLabel;
    Label4: TLabel;
    pnlSemaphoreOS: TPanel;
    imgKeluar: TImage;
    Image3: TImage;
    imgO: TImage;
    Image4: TImage;
    imgP: TImage;
    imgQ: TImage;
    imgR: TImage;
    imgS: TImage;
    Image5: TImage;
    lblKeluar: TLabel;
    Label5: TLabel;
    lblO: TLabel;
    Label6: TLabel;
    lblP: TLabel;
    lblQ: TLabel;
    lblR: TLabel;
    lblS: TLabel;
    Label7: TLabel;
    pnlSemaphoreTV: TPanel;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    imgT: TImage;
    imgU: TImage;
    imgV: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblT: TLabel;
    lblU: TLabel;
    lblV: TLabel;
    pnlSemaphoreWZ: TPanel;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    imgW: TImage;
    imgX: TImage;
    imgY: TImage;
    imgZ: TImage;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblW: TLabel;
    lblX: TLabel;
    lblY: TLabel;
    lblZ: TLabel;
    pnlSemaphore17: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    ImageKeluar: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    pnlSemaphore80: TPanel;
    img0: TImage;
    img8: TImage;
    img9: TImage;
    Image18: TImage;
    Image20: TImage;
    Image21: TImage;
    lbl0: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label21: TLabel;
    procedure lblKembaliClick(Sender: TObject);
    procedure lblLanjutClick(Sender: TObject);
    procedure lblOkeClick(Sender: TObject);
    procedure lblExitClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure lblKeluarClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreAG: TfrmSemaphoreAG;

implementation

{$R *.dfm}
uses
  uSemaphore;

procedure TfrmSemaphoreAG.Label10Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreAG.Label12Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.Label13Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreAG.Label14Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreAG.Label16Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.Label17Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreAG.Label18Click(Sender: TObject);
begin
  pnlSemaphore80.BringToFront;
end;

procedure TfrmSemaphoreAG.Label20Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.Label21Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreAG.Label5Click(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;

procedure TfrmSemaphoreAG.Label6Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreAG.Label8Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.Label9Click(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;

procedure TfrmSemaphoreAG.lblExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.lblKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreAG.lblKembaliClick(Sender: TObject);
begin
  pnlSemaphoreAG.BringToFront;;
end;

procedure TfrmSemaphoreAG.lblLanjutClick(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;
procedure TfrmSemaphoreAG.lblOkeClick(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;
end.
