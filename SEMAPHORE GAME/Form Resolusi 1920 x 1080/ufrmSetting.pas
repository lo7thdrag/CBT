unit ufrmSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmSetting = class(TForm)
    pnlBackground: TPanel;
    imgBackground: TImage;
    imgCancel: TImage;
    imgOK: TImage;
    imgReadExercise: TImage;
    imgWriteExercise: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblCancel: TLabel;
    lblIntroduce: TLabel;
    lblOK: TLabel;
    edtJawaban: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetting: TfrmSetting;

implementation

{$R *.dfm}

end.
