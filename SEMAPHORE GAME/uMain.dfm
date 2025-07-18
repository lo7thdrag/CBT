object frmSemaphore: TfrmSemaphore
  Left = 0
  Top = 48
  BorderStyle = bsNone
  Caption = 'frmSemaphore'
  ClientHeight = 468
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object imgIntroduce: TImage
    Left = 197
    Top = 48
    Width = 257
    Height = 41
  end
  object lblIntroduce: TLabel
    Left = 240
    Top = 52
    Width = 171
    Height = 32
    Caption = 'Selamat Datang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Vani'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSEmaphoreHuruf: TImage
    Left = 44
    Top = 154
    Width = 257
    Height = 41
  end
  object imgSemaphoreBaca: TImage
    Left = 350
    Top = 154
    Width = 257
    Height = 41
  end
  object imgExit: TImage
    Left = 44
    Top = 366
    Width = 99
    Height = 41
  end
  object imgOke: TImage
    Left = 508
    Top = 366
    Width = 99
    Height = 41
  end
  object lblSemaphoreHuruf: TLabel
    Left = 132
    Top = 162
    Width = 81
    Height = 24
    Caption = 'Semaphore'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lblSemaphoreHurufClick
  end
  object lblSemaphoreBaca: TLabel
    Left = 410
    Top = 162
    Width = 137
    Height = 24
    Alignment = taCenter
    Caption = 'LatBak Semaphore'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExit: TLabel
    Left = 57
    Top = 372
    Width = 74
    Height = 29
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Vani'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOke: TLabel
    Left = 521
    Top = 370
    Width = 74
    Height = 32
    Caption = 'Lanjut'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Vani'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSemaphoreKata: TImage
    Left = 44
    Top = 250
    Width = 257
    Height = 41
  end
  object lblSemaphoreKata: TLabel
    Left = 98
    Top = 259
    Width = 148
    Height = 24
    Caption = 'Simulasi Kode Pesan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSemaphoreKirim: TImage
    Left = 350
    Top = 250
    Width = 257
    Height = 41
  end
  object lblSemaphoreKirim: TLabel
    Left = 420
    Top = 259
    Width = 116
    Height = 24
    Caption = 'Transmisi Sandi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
