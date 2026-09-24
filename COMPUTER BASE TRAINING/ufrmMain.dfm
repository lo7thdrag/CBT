object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 1209
  ClientWidth = 1234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object img_Home: TImage
    Left = 308
    Top = 119
    Width = 618
    Height = 1090
    Align = alClient
    AutoSize = True
    Center = True
    Stretch = True
    ExplicitLeft = -951
    ExplicitTop = -402
    ExplicitWidth = 1920
    ExplicitHeight = 1080
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 119
    Width = 300
    Height = 1090
    ParentCustomHint = False
    Align = alLeft
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    BorderWidth = 8
    Color = 2499101
    Ctl3D = True
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    ExplicitTop = -17
    ExplicitHeight = 675
    object pnlMenu1Body: TPanel
      Left = 8
      Top = 41
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object Image3: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object img1: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object img2: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu3: TLabel
        Left = 47
        Top = 69
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu2: TLabel
        Left = 47
        Top = 42
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu1: TLabel
        Left = 47
        Top = 14
        Width = 68
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlMenu1: TPanel
      Left = 8
      Top = 8
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 1'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlMenu1Click
    end
    object pnlMenu2: TPanel
      Tag = 1
      Left = 8
      Top = 159
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 2'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnlMenu2Click
      ExplicitTop = 64
    end
    object pnlMenu2Body: TPanel
      Left = 8
      Top = 192
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 3
      object Image1: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image6: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image7: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu7: TLabel
        Left = 47
        Top = 69
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 7'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblSubMenu6: TLabel
        Left = 47
        Top = 41
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 6'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblSubMenu5: TLabel
        Left = 47
        Top = 13
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 5'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
    object pnl1ExerciseSparator: TPanel
      Left = 8
      Top = 151
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 4
      ExplicitTop = 56
    end
    object pnl2PlatformsSparator: TPanel
      Left = 8
      Top = 302
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 5
      ExplicitTop = 112
    end
    object pnlMenu3: TPanel
      Tag = 2
      Left = 8
      Top = 310
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 3'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 6
      OnClick = pnlMenu3Click
      ExplicitTop = 120
    end
    object pnl3SensorsSparator: TPanel
      Left = 8
      Top = 453
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 7
      ExplicitTop = 168
    end
    object pnlMenu4: TPanel
      Tag = 3
      Left = 8
      Top = 461
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 4'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 8
      OnClick = pnlMenu4Click
      ExplicitTop = 176
    end
    object pnlMenu4Body: TPanel
      Left = 8
      Top = 494
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 9
      object Image16: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image17: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image18: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu13: TLabel
        Tag = 2
        Left = 47
        Top = 69
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu11: TLabel
        Left = 47
        Top = 13
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu12: TLabel
        Tag = 1
        Left = 47
        Top = 41
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl4WeaponsSparator: TPanel
      Left = 8
      Top = 604
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 10
      ExplicitTop = 224
    end
    object pnlMenu5: TPanel
      Tag = 4
      Left = 8
      Top = 612
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 5'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 11
      OnClick = pnlMenu5Click
      ExplicitTop = 232
    end
    object pnlMenu5Body: TPanel
      Left = 8
      Top = 645
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 12
      object Image21: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image22: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image23: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu14: TLabel
        Left = 47
        Top = 13
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu15: TLabel
        Tag = 1
        Left = 47
        Top = 41
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu16: TLabel
        Tag = 2
        Left = 47
        Top = 69
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl5CountermeasuresSparator: TPanel
      Left = 8
      Top = 755
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 13
      ExplicitTop = 280
    end
    object pnlMenu6: TPanel
      Tag = 5
      Left = 8
      Top = 763
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 6'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 14
      OnClick = pnlMenu6Click
      ExplicitTop = 288
    end
    object pnlMenu6Body: TPanel
      Left = 8
      Top = 796
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 15
      object Image48: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image49: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image50: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu18: TLabel
        Left = 47
        Top = 41
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu17: TLabel
        Left = 47
        Top = 13
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 17'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubMenu19: TLabel
        Left = 47
        Top = 69
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl6OtherSparator: TPanel
      Left = 8
      Top = 906
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 16
      ExplicitTop = 521
    end
    object pnlMenu7: TPanel
      Tag = 6
      Left = 8
      Top = 914
      Width = 284
      Height = 33
      Cursor = crHandPoint
      Align = alTop
      Alignment = taLeftJustify
      Caption = '   Menu 7'
      Color = 2499101
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Deusex'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 17
      OnClick = pnlMenu7Click
      ExplicitTop = 529
    end
    object pnlMenu7Body: TPanel
      Left = 8
      Top = 947
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 18
      object Image66: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu20: TLabel
        Left = 47
        Top = 13
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl8ShutdownSparator: TPanel
      Left = 8
      Top = 1057
      Width = 284
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 19
      ExplicitTop = 577
    end
    object pnlMenu3Body: TPanel
      Left = 8
      Top = 343
      Width = 284
      Height = 110
      Align = alTop
      BorderWidth = 3
      Color = 2499101
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 20
      object Image10: TImage
        Left = 16
        Top = 39
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image11: TImage
        Left = 16
        Top = 67
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object Image9: TImage
        Left = 16
        Top = 11
        Width = 20
        Height = 20
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          00190806000000C4E98563000000097048597300000B1300000B1301009A9C18
          000000344944415478DA634C4949F9CF4063C0383C2D99A351483583536EF48F
          5A326AC9A825A3968C5A326AC9A825842DA115183E960000260C6F4DE6CE472C
          0000000049454E44AE426082}
        Stretch = True
      end
      object lblSubMenu10: TLabel
        Left = 47
        Top = 69
        Width = 71
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 10'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblSubMenu8: TLabel
        Left = 47
        Top = 13
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 8'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblSubMenu9: TLabel
        Left = 47
        Top = 41
        Width = 64
        Height = 16
        Cursor = crHandPoint
        Caption = 'SubMenu 9'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
  end
  object pnlSparatorHor: TPanel
    Left = 0
    Top = 111
    Width = 1234
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -312
    ExplicitTop = 57
    ExplicitWidth = 1281
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 1234
      Height = 8
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = 2
      ExplicitTop = 3
      ExplicitWidth = 284
      ExplicitHeight = 33
    end
  end
  object pnlSparatorVer1: TPanel
    Left = 300
    Top = 119
    Width = 8
    Height = 1090
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = -17
    ExplicitHeight = 675
    object Image5: TImage
      Left = 0
      Top = 0
      Width = 8
      Height = 1090
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitHeight = 637
    end
  end
  object pnlSparatorVer2: TPanel
    Left = 926
    Top = 119
    Width = 8
    Height = 1090
    Align = alRight
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 961
    ExplicitTop = -17
    ExplicitHeight = 675
    object Image8: TImage
      Left = 0
      Top = 0
      Width = 8
      Height = 1090
      Cursor = crHandPoint
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000003FB0000
        001408020000005DE0BAA7000000097048597300000B1300000B1301009A9C18
        000000824944415478DAEDD6410900300CC0C0D6BFE9AA188370A720CFEC0000
        005DFB3B00000078C8F103004099E307008032C70F0000658E1F0000CA1C3F00
        0094397E00002873FC000050E6F80100A0CCF103004099E307008032C70F0000
        658E1F0000CA1C3F000094397E00002873FC000050E6F80100A0CCF103004099
        E3070080B203BC0200156C14659F0000000049454E44AE426082}
      Stretch = True
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitHeight = 637
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 111
    Align = alTop
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 4
  end
  object pnlVariasi: TPanel
    Left = 934
    Top = 119
    Width = 300
    Height = 1090
    Align = alRight
    BevelOuter = bvNone
    Color = 2499101
    ParentBackground = False
    TabOrder = 5
    Visible = False
    ExplicitLeft = 669
    ExplicitTop = -17
    ExplicitHeight = 675
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 16
    Top = 16
  end
end
