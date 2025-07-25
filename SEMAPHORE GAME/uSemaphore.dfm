object frmSemaphore: TfrmSemaphore
  Left = 0
  Top = 48
  BorderStyle = bsNone
  Caption = 'frmSemaphore'
  ClientHeight = 782
  ClientWidth = 1207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object imgIntroduce: TImage
    Left = 453
    Top = 52
    Width = 257
    Height = 41
  end
  object lblIntroduce: TLabel
    Left = 520
    Top = 68
    Width = 171
    Height = 38
    Caption = 'Selamat Datang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Vani'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSEmaphoreHuruf: TImage
    Left = 452
    Top = 138
    Width = 257
    Height = 41
    OnClick = imgSEmaphoreHurufClick
  end
  object imgSemaphoreBaca: TImage
    Left = 460
    Top = 226
    Width = 257
    Height = 41
  end
  object imgExit: TImage
    Left = 18
    Top = 694
    Width = 99
    Height = 41
  end
  object lblSemaphoreHuruf: TLabel
    Left = 540
    Top = 146
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
    Left = 520
    Top = 234
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
    Left = 54
    Top = 694
    Width = 47
    Height = 24
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSemaphoreKata: TImage
    Left = 453
    Top = 330
    Width = 257
    Height = 41
  end
  object lblSemaphoreKata: TLabel
    Left = 507
    Top = 339
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
    Left = 460
    Top = 426
    Width = 257
    Height = 41
  end
  object lblSemaphoreKirim: TLabel
    Left = 530
    Top = 435
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
  object lbl1: TLabel
    Left = 540
    Top = 112
    Width = 82
    Height = 24
    Caption = 'Pengenalan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lblSemaphoreHurufClick
  end
end
