unit uSemaphoreA0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmSemaphoreA0 = class(TForm)
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
    lblA: TLabel;
    lblB: TLabel;
    lblC: TLabel;
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
    Timer1: TTimer;
    lblD: TLabel;
    lblTimer: TLabel;
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
    procedure FormShow(Sender: TObject);
    procedure imgExitClick(Sender: TObject);
    procedure imgLanjutClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure imgKembaliClick(Sender: TObject);
    procedure imgOkeClick(Sender: TObject);
    procedure imgKeluarClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure ImageKeluarClick(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure imgAClick(Sender: TObject);
    procedure imgBClick(Sender: TObject);
    procedure imgCClick(Sender: TObject);
    procedure imgDClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure imgEClick(Sender: TObject);
    procedure imgFClick(Sender: TObject);
    procedure imgGClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemaphoreA0: TfrmSemaphoreA0;
  imgAExpanded: Boolean = False;
  imgBExpanded: Boolean = False;
  imgCExpanded: Boolean = False;
  imgDExpanded: Boolean = False;
  imgEExpanded: Boolean = False;
  imgFExpanded: Boolean = False;
  imgGExpanded: Boolean = False;
  imgHExpanded: Boolean = False;
  imgIExpanded: Boolean = False;
  imgJExpanded: Boolean = False;
  imgKExpanded: Boolean = False;
  imgLExpanded: Boolean = False;
  imgMExpanded: Boolean = False;
implementation

{$R *.dfm}
uses
  uSemaphore;

procedure TfrmSemaphoreA0.FormShow(Sender: TObject);
begin
  pnlSemaphoreAG.BringToFront;
end;

procedure TfrmSemaphoreA0.Image10Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Image11Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreA0.Image12Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreA0.Image15Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreA0.Image16Click(Sender: TObject);
begin
  pnlSemaphore80.BringToFront;
end;

procedure TfrmSemaphoreA0.Image18Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Image20Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreA0.Image3Click(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;

procedure TfrmSemaphoreA0.Image4Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreA0.Image6Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Image7Click(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;

procedure TfrmSemaphoreA0.Image8Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreA0.ImageKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.imgAClick(Sender: TObject);
begin
  if not imgAExpanded then
  begin
    imgA.Width  := 217;
    imgA.Height := 188;
    imgA.Left   := (ClientWidth - imgA.Width)div 2;
    imgA.Top    := (ClientHeight - imgA.Height)div 2;
    lblA.Left   := (ClientWidth - lblA.Width)div 2;
    lblA.Top    := (ClientHeight - lblA.Height)div 2;

  // Sembunyikan elemen lain
    imgB.Visible := False;
    imgC.Visible := False;
    imgD.Visible := False;
    imgE.Visible := False;
    imgF.Visible := False;
    imgG.Visible := False;
    lblB.Visible := False;
    lblC.Visible := False;
    lblD.Visible := False;
    lblE.Visible := False;
    lblF.Visible := False;
    lblG.Visible := False;

    imgAExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgA.Width  := 80;
      imgA.Height := 80;
      imgA.Left   := 113;
      imgA.Top    := 129;
      lblA.Left   := 145;
      lblA.Top    := 150;

    // Tampilkan kembali elemen lain
      imgB.Visible := True;
      imgC.Visible := True;
      imgD.Visible := True;
      imgE.Visible := True;
      imgF.Visible := True;
      imgG.Visible := True;
      lblB.Visible := True;
      lblC.Visible := True;
      lblD.Visible := True;
      lblE.Visible := True;
      lblF.Visible := True;
      lblG.Visible := True;

      imgAExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgBClick(Sender: TObject);
begin
  if not imgBExpanded then
  begin
    imgB.Width  := 217;
    imgB.Height := 188;
    imgB.Left   := (ClientWidth - imgB.Width)div 2;
    imgB.Top    := (ClientHeight - imgB.Height)div 2;
    lblB.Left   := (ClientWidth - lblB.Width)div 2;
    lblB.Top    := (ClientHeight - lblB.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgC.Visible := False;
    imgD.Visible := False;
    imgE.Visible := False;
    imgF.Visible := False;
    imgG.Visible := False;
    lblA.Visible := False;
    lblC.Visible := False;
    lblD.Visible := False;
    lblE.Visible := False;
    lblF.Visible := False;
    lblG.Visible := False;

    imgBExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgB.Width  := 80;
      imgB.Height := 80;
      imgB.Left   := 228;
      imgB.Top    := 129;
      lblB.Left   := 260;
      lblB.Top    := 150;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgC.Visible := True;
      imgD.Visible := True;
      imgE.Visible := True;
      imgF.Visible := True;
      imgG.Visible := True;
      lblA.Visible := True;
      lblC.Visible := True;
      lblD.Visible := True;
      lblE.Visible := True;
      lblF.Visible := True;
      lblG.Visible := True;

      imgBExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgCClick(Sender: TObject);
begin
 if not imgCExpanded then
  begin
    imgC.Width  := 217;
    imgC.Height := 188;
    imgC.Left   := (ClientWidth - imgC.Width)div 2;
    imgC.Top    := (ClientHeight - imgC.Height)div 2;
    lblC.Left   := (ClientWidth - lblC.Width)div 2;
    lblC.Top    := (ClientHeight - lblC.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgB.Visible := False;
    imgD.Visible := False;
    imgE.Visible := False;
    imgF.Visible := False;
    imgG.Visible := False;
    lblA.Visible := False;
    lblB.Visible := False;
    lblD.Visible := False;
    lblE.Visible := False;
    lblF.Visible := False;
    lblG.Visible := False;

    imgCExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgC.Width  := 80;
      imgC.Height := 80;
      imgC.Left   := 343;
      imgC.Top    := 129;
      lblC.Left   := 373;
      lblC.Top    := 150;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgB.Visible := True;
      imgD.Visible := True;
      imgE.Visible := True;
      imgF.Visible := True;
      imgG.Visible := True;
      lblA.Visible := True;
      lblB.Visible := True;
      lblD.Visible := True;
      lblE.Visible := True;
      lblF.Visible := True;
      lblG.Visible := True;

      imgCExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgDClick(Sender: TObject);
begin
  if not imgDExpanded then
  begin
    imgD.Width  := 217;
    imgD.Height := 188;
    imgD.Left   := (ClientWidth - imgD.Width)div 2;
    imgD.Top    := (ClientHeight - imgD.Height)div 2;
    lblD.Left   := (ClientWidth - lblD.Width)div 2;
    lblD.Top    := (ClientHeight - lblD.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgB.Visible := False;
    imgC.Visible := False;
    imgE.Visible := False;
    imgF.Visible := False;
    imgG.Visible := False;
    lblA.Visible := False;
    lblB.Visible := False;
    lblC.Visible := False;
    lblE.Visible := False;
    lblF.Visible := False;
    lblG.Visible := False;

    imgDExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgD.Width  := 80;
      imgD.Height := 80;
      imgD.Left   := 458;
      imgD.Top    := 129;
      lblD.Left   := 489;
      lblD.Top    := 150;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgB.Visible := True;
      imgC.Visible := True;
      imgE.Visible := True;
      imgF.Visible := True;
      imgG.Visible := True;
      lblA.Visible := True;
      lblB.Visible := True;
      lblC.Visible := True;
      lblE.Visible := True;
      lblF.Visible := True;
      lblG.Visible := True;

      imgDExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgEClick(Sender: TObject);
begin
  if not imgEExpanded then
  begin
    imgE.Width  := 217;
    imgE.Height := 188;
    imgE.Left   := (ClientWidth - imgE.Width)div 2;
    imgE.Top    := (ClientHeight - imgE.Height)div 2;
    lblE.Left   := (ClientWidth - lblE.Width)div 2;
    lblE.Top    := (ClientHeight - lblE.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgB.Visible := False;
    imgC.Visible := False;
    imgD.Visible := False;
    imgF.Visible := False;
    imgG.Visible := False;
    lblA.Visible := False;
    lblB.Visible := False;
    lblC.Visible := False;
    lblD.Visible := False;
    lblF.Visible := False;
    lblG.Visible := False;

    imgEExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgE.Width  := 80;
      imgE.Height := 80;
      imgE.Left   := 170;
      imgE.Top    := 264;
      lblE.Left   := 202;
      lblE.Top    := 280;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgB.Visible := True;
      imgC.Visible := True;
      imgD.Visible := True;
      imgF.Visible := True;
      imgG.Visible := True;
      lblA.Visible := True;
      lblB.Visible := True;
      lblC.Visible := True;
      lblD.Visible := True;
      lblF.Visible := True;
      lblG.Visible := True;

      imgEExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.imgFClick(Sender: TObject);
begin
  if not imgFExpanded then
  begin
    imgF.Width  := 217;
    imgF.Height := 188;
    imgF.Left   := (ClientWidth - imgF.Width)div 2;
    imgF.Top    := (ClientHeight - imgF.Height)div 2;
    lblF.Left   := (ClientWidth - lblF.Width)div 2;
    lblF.Top    := (ClientHeight - lblF.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgB.Visible := False;
    imgC.Visible := False;
    imgD.Visible := False;
    imgE.Visible := False;
    imgG.Visible := False;
    lblA.Visible := False;
    lblB.Visible := False;
    lblC.Visible := False;
    lblD.Visible := False;
    lblE.Visible := False;
    lblG.Visible := False;

    imgFExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgF.Width  := 80;
      imgF.Height := 80;
      imgF.Left   := 285;
      imgF.Top    := 264;
      lblF.Left   := 318;
      lblF.Top    := 280;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgB.Visible := True;
      imgC.Visible := True;
      imgD.Visible := True;
      imgE.Visible := True;
      imgG.Visible := True;
      lblA.Visible := True;
      lblB.Visible := True;
      lblC.Visible := True;
      lblD.Visible := True;
      lblE.Visible := True;
      lblG.Visible := True;

      imgFExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgGClick(Sender: TObject);
begin
  if not imgGExpanded then
  begin
    imgG.Width  := 217;
    imgG.Height := 188;
    imgG.Left   := (ClientWidth - imgG.Width)div 2;
    imgG.Top    := (ClientHeight - imgG.Height)div 2;
    lblG.Left   := (ClientWidth - lblG.Width)div 2;
    lblG.Top    := (ClientHeight - lblG.Height)div 2;

  // Sembunyikan elemen lain
    imgA.Visible := False;
    imgB.Visible := False;
    imgC.Visible := False;
    imgD.Visible := False;
    imgE.Visible := False;
    imgF.Visible := False;
    lblA.Visible := False;
    lblB.Visible := False;
    lblC.Visible := False;
    lblD.Visible := False;
    lblE.Visible := False;
    lblF.Visible := False;

    imgGExpanded := True;
    end
    else
    begin
    // Kembalikan ukuran dan posisi awal
      imgG.Width  := 80;
      imgG.Height := 80;
      imgG.Left   := 400;
      imgG.Top    := 264;
      lblG.Left   := 431;
      lblG.Top    := 280;

    // Tampilkan kembali elemen lain
      imgA.Visible := True;
      imgB.Visible := True;
      imgC.Visible := True;
      imgD.Visible := True;
      imgE.Visible := True;
      imgF.Visible := True;
      lblA.Visible := True;
      lblB.Visible := True;
      lblC.Visible := True;
      lblD.Visible := True;
      lblE.Visible := True;
      lblF.Visible := True;

      imgGExpanded := False;
    end;
end;

procedure TfrmSemaphoreA0.imgKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.imgKembaliClick(Sender: TObject);
begin
  pnlSemaphoreAG.BringToFront;
end;

procedure TfrmSemaphoreA0.imgLanjutClick(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;

procedure TfrmSemaphoreA0.imgOkeClick(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;

procedure TfrmSemaphoreA0.Label10Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreA0.Label12Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Label13Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreA0.Label14Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreA0.Label16Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Label17Click(Sender: TObject);
begin
  pnlSemaphoreWZ.BringToFront;
end;

procedure TfrmSemaphoreA0.Label18Click(Sender: TObject);
begin
  pnlSemaphore80.BringToFront;
end;

procedure TfrmSemaphoreA0.Label20Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Label21Click(Sender: TObject);
begin
  pnlSemaphore17.BringToFront;
end;

procedure TfrmSemaphoreA0.Label5Click(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;

procedure TfrmSemaphoreA0.Label6Click(Sender: TObject);
begin
  pnlSemaphoreTV.BringToFront;
end;

procedure TfrmSemaphoreA0.Label8Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.Label9Click(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;

procedure TfrmSemaphoreA0.lblExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.lblKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemaphoreA0.lblKembaliClick(Sender: TObject);
begin
  pnlSemaphoreAG.BringToFront;
end;

procedure TfrmSemaphoreA0.lblLanjutClick(Sender: TObject);
begin
  pnlSemaphoreHN.BringToFront;
end;
procedure TfrmSemaphoreA0.lblOkeClick(Sender: TObject);
begin
  pnlSemaphoreOS.BringToFront;
end;
procedure TfrmSemaphoreA0.Timer1Timer(Sender: TObject);
begin
    lblTimer.Caption := FormatDateTime('dddd, dd/mm/yyyy hh:nn:ss', now);
end;

end.
