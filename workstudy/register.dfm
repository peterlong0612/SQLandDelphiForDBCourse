object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sign in'
  ClientHeight = 309
  ClientWidth = 645
  Color = clInfoBk
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 200
    Top = 64
    Width = 63
    Height = 16
    Caption = #29992#25143#21517'[&U]'
    FocusControl = Edit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 200
    Top = 107
    Width = 47
    Height = 16
    Caption = #23494#30721'[&P]'
    FocusControl = Edit2
  end
  object resultlabel: TLabel
    Left = 216
    Top = 248
    Width = 215
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 269
    Top = 61
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 272
    Top = 104
    Width = 121
    Height = 24
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = #30331#24405
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 350
    Top = 200
    Width = 75
    Height = 25
    Caption = #27880#20876
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Memo1: TMemo
    Left = 464
    Top = 61
    Width = 113
    Height = 67
    Color = clAqua
    Lines.Strings = (
      #40664#35748
      #29992#25143#21517'123'
      #23494#30721'123')
    TabOrder = 4
  end
end
