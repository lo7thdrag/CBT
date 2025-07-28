unit uSemaphore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, TFlatSpeedButtonUnit;

const
  C_ABJAD_ID : array [0..27] of string = ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
                                           'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'numeral', 'spasi');

type
  TfrmSemaphore = class(TForm)
    imgBackground: TImage;
    tmr1: TTimer;
    pnlBackground: TPanel;
    imgModel: TImage;
    imgDescription: TImage;
    lblDescTanganKanan: TLabel;
    lblDescTanganKiri: TLabel;
    lblHuruf: TLabel;
    pnl1: TPanel;
    imgA: TImage;
    imgB: TImage;
    imgC: TImage;
    imgD: TImage;
    imgE: TImage;
    imgF: TImage;
    imgG: TImage;
    lblAG: TLabel;
    lblHN: TLabel;
    lblOU: TLabel;
    lblVZ: TLabel;
    imgPrev: TImage;
    imgNext: TImage;
    imgH: TImage;
    imgI: TImage;
    imgJ: TImage;
    imgK: TImage;
    imgL: TImage;
    imgM: TImage;
    imgN: TImage;
    imgO: TImage;
    imgP: TImage;
    imgQ: TImage;
    imgR: TImage;
    imgS: TImage;
    imgT: TImage;
    imgU: TImage;
    imgV: TImage;
    imgW: TImage;
    imgX: TImage;
    imgY: TImage;
    imgZ: TImage;
    imgNumeral: TImage;
    imgSpasi: TImage;
    tmr2: TTimer;
    lblPlayAll: TLabel;
    lblBeranda: TLabel;

    procedure FormShow(Sender: TObject);

    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnHurufClick(Sender: TObject);

    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure lblGroupMouseEnter(Sender: TObject);
    procedure lblGroupMouseLeave(Sender: TObject);
    procedure lblPlayAllClick(Sender: TObject);
    procedure lblBerandaClick(Sender: TObject);

  private
    isGeserKanan: Boolean;
    isGeserPerGroup: Boolean;
    groupId : Integer;
    tempTime, tempTime2: Integer;

    procedure SetButtonHurufPosition(posVal: Integer);
    procedure LoadHuruf(hrfVal: string);

  public
    { Public declarations }
  end;

var
  frmSemaphore: TfrmSemaphore;

implementation

{$R *.dfm}

uses
  uHome;

procedure EnableComposited(WinControl: TWinControl);
var
  i: Integer;
  NewExStyle: DWORD;
begin
  NewExStyle := GetWindowLong(WinControl.Handle, GWL_EXSTYLE) or
    WS_EX_COMPOSITED;
  SetWindowLong(WinControl.Handle, GWL_EXSTYLE, NewExStyle);

  for i := 0 to WinControl.ControlCount - 1 do
    if WinControl.Controls[i] is TWinControl then
      EnableComposited(TWinControl(WinControl.Controls[i]));
end;

procedure TfrmSemaphore.FormShow(Sender: TObject);
begin
  Top := Screen.Monitors[0].Top;
  Left := Screen.Monitors[0].Left;
  Height := Screen.Monitors[0].Height;
  Width := Screen.Monitors[0].Width;

  {$REGION ' Initiate button huruf position '}
  imgA.Left := 0;
  imgB.Left := 120;
  imgC.Left := 240;
  imgD.Left := 360;
  imgE.Left := 480;
  imgF.Left := 600;
  imgG.Left := 720;
  imgH.Left := 840;
  imgI.Left := 960;
  imgJ.Left := 1080;
  imgK.Left := 1200;
  imgL.Left := 1320;
  imgM.Left := 1440;
  imgN.Left := 1560;
  imgO.Left := 1680;
  imgP.Left := 1800;
  imgQ.Left := 1920;
  imgR.Left := 2040;
  imgS.Left := 2160;
  imgT.Left := 2280;
  imgU.Left := 2400;
  imgV.Left := 2520;
  imgW.Left := 2640;
  imgX.Left := 2760;
  imgY.Left := 2880;
  imgZ.Left := 3000;
  imgNumeral.Left := 3120;
  imgSpasi.Left := 3240;
  {$ENDREGION}

  EnableComposited(pnlBackground);
end;

procedure TfrmSemaphore.lblPlayAllClick(Sender: TObject);
begin
  tempTime2 := 0;
  tmr2.Enabled := True;
end;

procedure TfrmSemaphore.lblBerandaClick(Sender: TObject);
begin
  Close
end;

procedure TfrmSemaphore.lblGroupMouseEnter(Sender: TObject);
begin
  if Sender is TLabel then
  begin
    TLabel(sender).Font.Color := $00E1B034;
    TLabel(sender).Font.Size := 20;
  end;
end;

procedure TfrmSemaphore.lblGroupMouseLeave(Sender: TObject);
begin
  if Sender is TLabel then
  begin
    TLabel(sender).Font.Color := clWhite;
    TLabel(sender).Font.Size := 18;
  end;
end;

procedure TfrmSemaphore.LoadHuruf(hrfVal: string);
begin
  imgModel.Picture.LoadFromFile('D:\CBT\Bin\Image\Model\' + hrfVal + '.png');
  lblHuruf.Font.Size := 90;

  {$REGION ' Set Deskription '}
  if hrfVal = 'a' then
  begin
    lblHuruf.Caption := 'A';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 07.30';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'b' then
  begin
    lblHuruf.Caption := 'B';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'c' then
  begin
    lblHuruf.Caption := 'C';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 10.30';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'd' then
  begin
    lblHuruf.Caption := 'D';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 12.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'e' then
  begin
    lblHuruf.Caption := 'E';
    lblDescTanganKiri.Caption :='- Tangan kiri diangkat searah jarum jam pukul 13.30';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'f' then
  begin
    lblHuruf.Caption := 'F';
    lblDescTanganKiri.Caption :='- Tangan kiri searah jarum jam pukul 15.00';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'g' then
  begin
    lblHuruf.Caption := 'G';
    lblDescTanganKiri.Caption :='- Tangan kiri searah jarum jam pukul 16.30';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 06.00';
  end
  else if hrfVal = 'h' then
  begin
    lblHuruf.Caption := 'H';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 07.30';
  end
  else if hrfVal = 'i' then
  begin
    lblHuruf.Caption := 'I';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 10.30';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 07.30';
  end
  else if hrfVal = 'j' then
  begin
    lblHuruf.Caption := 'J';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 12.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 15.00';
  end
  else if hrfVal = 'k' then
  begin
    lblHuruf.Caption := 'K';
    lblDescTanganKiri.Caption :='- Tangan kiri diangkat searah jarum jam pukul 12.00';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 07.30';
  end
  else if hrfVal = 'l' then
  begin
    lblHuruf.Caption := 'L';
    lblDescTanganKiri.Caption :='- Tangan kiri diangkat searah jarum jam pukul 13.30';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 07.30';
  end
  else if hrfVal = 'm' then
  begin
    lblHuruf.Caption := 'M';
    lblDescTanganKiri.Caption :='- Tangan kiri searah jarum jam pukul 15.00';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 07.30';
  end
  else if hrfVal = 'n' then
  begin
    lblHuruf.Caption := 'N';
    lblDescTanganKanan.Caption :='- Tangan kanan searah jarum jam pukul 16.30';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 07.30';
  end
   else if hrfVal = 'o' then
  begin
    lblHuruf.Caption := 'O';
    lblDescTanganKiri.Caption :='- Tangan kiri diangkat searah jarum jam pukul 10.30';
    lblDescTanganKanan.Caption := '- Tangan kanan searah jarum jam pukul 09.00';
  end
  else if hrfVal = 'p' then
  begin
    lblHuruf.Caption := 'P';
    lblDescTanganKanan.Caption :='- Tangan kanan  searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 12.00';
  end
  else if hrfVal = 'q' then
  begin
    lblHuruf.Caption := 'Q';
    lblDescTanganKanan.Caption :='- Tangan kanan searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 13.30';
  end
  else if hrfVal = 'r' then
  begin
    lblHuruf.Caption := 'R';
    lblDescTanganKanan.Caption :='- Tangan kanan searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 15.00';
  end
  else if hrfVal = 's' then
  begin
    lblHuruf.Caption := 'S';
    lblDescTanganKanan.Caption :='- Tangan kanan searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri searah jarum jam pukul 16.30';
  end
   else if hrfVal = 't' then
  begin
    lblHuruf.Caption := 'T';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 10.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 12.00';
  end
  else if hrfVal = 'u' then
  begin
    lblHuruf.Caption := 'U';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 10.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 10.30';
  end
  else if hrfVal = 'v' then
  begin
    lblHuruf.Caption := 'V';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 12.00';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 16.30';
  end
  else if hrfVal = 'w' then
  begin
    lblHuruf.Caption := 'W';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 15.00';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 13.30';
  end
  else if hrfVal = 'x' then
  begin
    lblHuruf.Caption := 'X';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 16.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 13.30';
  end
  else if hrfVal = 'y' then
  begin
    lblHuruf.Caption := 'Y';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 09.00';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 13.30';
  end
  else if hrfVal = 'z' then
  begin
    lblHuruf.Caption := 'Z';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 16.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 15.00';
  end
  else if hrfVal = 'spasi' then
  begin
    lblHuruf.Font.Size := 50;
    lblHuruf.Caption := 'SPASI';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 16.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 15.00';
  end
  else if hrfVal = 'numeral' then
  begin
    lblHuruf.Font.Size := 50;
    lblHuruf.Caption := 'NUM';
    lblDescTanganKanan.Caption :='- Tangan kanan diangkat searah jarum jam pukul 18.30';
    lblDescTanganKiri.Caption := '- Tangan kiri diangkat searah jarum jam pukul 18.30';
  end
  {$ENDREGION}
end;

procedure TfrmSemaphore.btnGroupClick(Sender: TObject);
begin
  if tmr1.Enabled then
    Exit;

  tempTime := 0;
  tmr1.Enabled := True;
  isGeserPerGroup := True;

  if TLabel(Sender).Name = 'lblAG' then
  begin
    groupId := 1;

    if imgA.Left < 0 then
      isGeserKanan := True
    else
      isGeserKanan := False;
  end
  else if TLabel(Sender).Name = 'lblHN' then
  begin
    groupId := 2;

    if imgH.Left < 0 then
      isGeserKanan := True
    else
      isGeserKanan := False;
  end
  else if TLabel(Sender).Name = 'lblOU' then
  begin
    groupId := 3;

    if imgO.Left < 0 then
      isGeserKanan := True
    else
      isGeserKanan := False;
  end
  else if TLabel(Sender).Name = 'lblVZ' then
  begin
    groupId := 4;

    if imgV.Left < 0 then
      isGeserKanan := True
    else
      isGeserKanan := False;
  end
end;

procedure TfrmSemaphore.btnHurufClick(Sender: TObject);
begin
  LoadHuruf(TImage(Sender).Hint)
end;

procedure TfrmSemaphore.btnNextClick(Sender: TObject);
begin
  if (imgSpasi.Left <= 720) or (tmr1.Enabled) then
    Exit;

  tempTime := 0;
  tmr1.Enabled := True;
  isGeserKanan := False;
  isGeserPerGroup := False;
end;

procedure TfrmSemaphore.btnPrevClick(Sender: TObject);
begin
  if (imgA.Left >= 0) or (tmr1.Enabled) then
    Exit;

  tempTime := 0;
  tmr1.Enabled := True;
  isGeserKanan := True;
  isGeserPerGroup := False;
end;

procedure TfrmSemaphore.SetButtonHurufPosition(posVal: Integer);
begin
  imgA.Left := imgA.Left + posVal;
  imgB.Left := imgB.Left + posVal;
  imgC.Left := imgC.Left + posVal;
  imgD.Left := imgD.Left + posVal;
  imgE.Left := imgE.Left + posVal;
  imgF.Left := imgF.Left + posVal;
  imgG.Left := imgG.Left + posVal;
  imgH.Left := imgH.Left + posVal;
  imgI.Left := imgI.Left + posVal;
  imgJ.Left := imgJ.Left + posVal;
  imgK.Left := imgK.Left + posVal;
  imgL.Left := imgL.Left + posVal;
  imgM.Left := imgM.Left + posVal;
  imgN.Left := imgN.Left + posVal;
  imgO.Left := imgO.Left + posVal;
  imgP.Left := imgP.Left + posVal;
  imgQ.Left := imgQ.Left + posVal;
  imgR.Left := imgR.Left + posVal;
  imgS.Left := imgS.Left + posVal;
  imgT.Left := imgT.Left + posVal;
  imgU.Left := imgU.Left + posVal;
  imgV.Left := imgV.Left + posVal;
  imgW.Left := imgW.Left + posVal;
  imgX.Left := imgX.Left + posVal;
  imgY.Left := imgY.Left + posVal;
  imgZ.Left := imgZ.Left + posVal;
  imgNumeral.Left := imgNumeral.Left + posVal;
  imgSpasi.Left := imgSpasi.Left + posVal;
end;

procedure TfrmSemaphore.tmr1Timer(Sender: TObject);
begin
  tempTime := tempTime + 10;

  if isGeserPerGroup then
  begin
    {$REGION ' Geser Per Group '}
    case groupId of
      1:
      begin
        if imgA.Left <> 0 then
        begin
          if isGeserKanan then
            SetButtonHurufPosition(10)
          else
            SetButtonHurufPosition(-10);
        end
        else
        begin
          tmr1.Enabled := False;
        end;
      end;
      2:
      begin
        if imgH.Left <> 0 then
        begin
          if isGeserKanan then
            SetButtonHurufPosition(10)
          else
            SetButtonHurufPosition(-10);
        end
        else
        begin
          tmr1.Enabled := False;
        end;
      end;
      3:
      begin
        if imgO.Left <> 0 then
        begin
          if isGeserKanan then
            SetButtonHurufPosition(10)
          else
            SetButtonHurufPosition(-10);
        end
        else
        begin
          tmr1.Enabled := False;
        end;
      end;
      4:
      begin
        if imgV.Left <> 0 then
        begin
          if isGeserKanan then
            SetButtonHurufPosition(10)
          else
            SetButtonHurufPosition(-10);
        end
        else
        begin
          tmr1.Enabled := False;
        end;
      end;
    end;

    {$ENDREGION}
  end
  else
  begin
    {$REGION ' Geser Per Huruf '}
    if tempTime < 121 then
    begin
      if isGeserKanan then
      begin
        SetButtonHurufPosition(10);
      end
      else
      begin
        SetButtonHurufPosition(-10);
      end;
    end
    else
    begin
      tmr1.Enabled := False;
    end;
    {$ENDREGION}
  end;

end;

procedure TfrmSemaphore.tmr2Timer(Sender: TObject);
begin

  LoadHuruf(C_ABJAD_ID[tempTime2]);

  tempTime2 := tempTime2 + 1;

  if tempTime2 > 27 then
  begin
    lblHuruf.Caption := '-';
    lblDescTanganKanan.Caption := '-';
    lblDescTanganKiri.Caption := '-';
    tmr2.Enabled := False;
  end;
end;

end.
