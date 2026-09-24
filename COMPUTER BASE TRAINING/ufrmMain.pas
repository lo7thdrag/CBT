unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TfrmMain = class(TForm)
    img_Home: TImage;
    pnlLeft: TPanel;
    pnlMenu1Body: TPanel;
    Image3: TImage;
    img1: TImage;
    img2: TImage;
    lblSubMenu3: TLabel;
    lblSubMenu2: TLabel;
    lblSubMenu1: TLabel;
    pnlMenu1: TPanel;
    pnlMenu2: TPanel;
    pnlMenu2Body: TPanel;
    Image1: TImage;
    Image6: TImage;
    Image7: TImage;
    lblSubMenu7: TLabel;
    lblSubMenu6: TLabel;
    lblSubMenu5: TLabel;
    pnl1ExerciseSparator: TPanel;
    pnl2PlatformsSparator: TPanel;
    pnlMenu3: TPanel;
    pnl3SensorsSparator: TPanel;
    pnlMenu4: TPanel;
    pnlMenu4Body: TPanel;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    lblSubMenu13: TLabel;
    lblSubMenu11: TLabel;
    lblSubMenu12: TLabel;
    pnl4WeaponsSparator: TPanel;
    pnlMenu5: TPanel;
    pnlMenu5Body: TPanel;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    lblSubMenu14: TLabel;
    lblSubMenu15: TLabel;
    lblSubMenu16: TLabel;
    pnl5CountermeasuresSparator: TPanel;
    pnlMenu6: TPanel;
    pnlMenu6Body: TPanel;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    lblSubMenu18: TLabel;
    lblSubMenu17: TLabel;
    lblSubMenu19: TLabel;
    pnl6OtherSparator: TPanel;
    pnlMenu7: TPanel;
    pnlMenu7Body: TPanel;
    Image66: TImage;
    lblSubMenu20: TLabel;
    pnl8ShutdownSparator: TPanel;
    pnlSparatorHor: TPanel;
    Image2: TImage;
    pnlSparatorVer1: TPanel;
    Image5: TImage;
    pnlSparatorVer2: TPanel;
    Image8: TImage;
    pnlTop: TPanel;
    pnlVariasi: TPanel;
    Timer1: TTimer;
    pnlMenu3Body: TPanel;
    Image10: TImage;
    Image11: TImage;
    Image9: TImage;
    lblSubMenu10: TLabel;
    lblSubMenu8: TLabel;
    lblSubMenu9: TLabel;
    procedure pnlMenu1Click(Sender: TObject);

    procedure CollapseMenuClick(Sender: TObject);
    procedure UnCollapseMenuClick();
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure pnlMenu2Click(Sender: TObject);
    procedure pnlMenu3Click(Sender: TObject);
    procedure pnlMenu4Click(Sender: TObject);
    procedure pnlMenu5Click(Sender: TObject);
    procedure pnlMenu6Click(Sender: TObject);
    procedure pnlMenu7Click(Sender: TObject);

  private
    isFold : boolean;
    pnlActive : Integer;

    procedure LoadImageVariasi(i : byte);

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.CollapseMenuClick(Sender: TObject);
begin
  if Sender is TPanel then
    pnlActive := TPanel(sender).Tag
  else
    Exit;

  case pnlActive of
    0: if pnlMenu1Body.Height <> 0 then exit;
    1: if pnlMenu2Body.Height <> 0 then exit;
    2: if pnlMenu3Body.Height <> 0 then exit;
    3: if pnlMenu4Body.Height <> 0 then exit;
    4: if pnlMenu5Body.Height <> 0 then exit;
    5: if pnlMenu6Body.Height <> 0 then exit;
    6: if pnlMenu7Body.Height <> 0 then exit;
  end;

  UnCollapseMenuClick;

  Timer1.Enabled := True;
  isFold := true;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  pnlMenu1Body.Height := 0;
  pnlMenu2Body.Height := 0;
  pnlMenu3Body.Height := 0;
  pnlMenu4Body.Height := 0;
  pnlMenu5Body.Height := 0;
  pnlMenu6Body.Height := 0;
  pnlMenu7Body.Height := 0;
end;

procedure TfrmMain.LoadImageVariasi(i: byte);
begin
  if i=0 then
  begin
    pnlSparatorVer2.Visible := False;
    pnlVariasi.Visible := True;
    pnlSparatorVer2.Visible := True;
  end
  else
  begin
    pnlVariasi.Visible := False;
  end;
end;

procedure TfrmMain.pnlMenu1Click(Sender: TObject);
begin
//  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu2Click(Sender: TObject);
begin
  //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu3Click(Sender: TObject);
begin
    //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu4Click(Sender: TObject);
begin
    //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu5Click(Sender: TObject);
begin
    //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu6Click(Sender: TObject);
begin
    //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.pnlMenu7Click(Sender: TObject);
begin
    //  if not Assigned(frmExercise) then
//    frmExercise := TfrmExercise.Create(self)
//  else
//    frmExercise.Show;

  LoadImageVariasi(1);
  CollapseMenuClick(Sender);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  if not Timer1.Enabled then
    Exit;

  if not isFold then
    Exit;

  case pnlActive of
    0:
    begin
      if pnlMenu1Body.Height < (lblSubMenu3.Top + 38) then
        pnlMenu1Body.Height := pnlMenu1Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
    1:
    begin
      if pnlMenu2Body.Height < (lblSubMenu7.Top + 38) then
        pnlMenu2Body.Height := pnlMenu2Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
    2:
    begin
      if pnlMenu3Body.Height < (lblSubMenu10.Top + 38) then
        pnlMenu3Body.Height := pnlMenu3Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
    3:
    begin
      if pnlMenu4Body.Height < (lblSubMenu13.Top + 38) then
        pnlMenu4Body.Height := pnlMenu4Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
    4:
    begin
      if pnlMenu5Body.Height < (lblSubMenu16.Top + 38) then
        pnlMenu5Body.Height := pnlMenu5Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
     5:
    begin
      if pnlMenu6Body.Height < (lblSubMenu19.Top + 38) then
        pnlMenu6Body.Height := pnlMenu6Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
    6:
    begin
      if pnlMenu7Body.Height < (lblSubMenu20.Top + 38) then
        pnlMenu7Body.Height := pnlMenu7Body.Height + 2
      else
        Timer1.Enabled := false;
    end;
  end;
end;

procedure TfrmMain.UnCollapseMenuClick;
begin
  pnlMenu1Body.Height := 0;
  pnlMenu2Body.Height := 0;
  pnlMenu3Body.Height := 0;
  pnlMenu4Body.Height := 0;
  pnlMenu5Body.Height := 0;
  pnlMenu6Body.Height := 0;
  pnlMenu7Body.Height := 0;
end;

end.
