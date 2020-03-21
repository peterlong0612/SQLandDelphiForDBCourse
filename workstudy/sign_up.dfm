object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 309
  ClientWidth = 645
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 51
    Width = 51
    Height = 13
    Caption = #29992#25143#21517'[&U]'
    FocusControl = Edit1
  end
  object Label2: TLabel
    Left = 184
    Top = 91
    Width = 40
    Height = 13
    Caption = #37038#31665'[&M]'
    FocusControl = Edit2
  end
  object Label3: TLabel
    Left = 184
    Top = 131
    Width = 62
    Height = 13
    Caption = #36755#20837#23494#30721'[&p]'
    FocusControl = Edit3
  end
  object Label4: TLabel
    Left = 184
    Top = 171
    Width = 63
    Height = 13
    Caption = #30830#35748#23494#30721'[&A]'
    FocusControl = Edit4
  end
  object Edit1: TEdit
    Left = 256
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '4~8'#20301#23383#27597#12289#25968#23383
  end
  object Edit2: TEdit
    Left = 256
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 256
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
    Text = #35831#30830#35748#20004#27425#36755#20837#19968#33268
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 224
    Width = 75
    Height = 25
    Caption = #30830#35748
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 352
    Top = 224
    Width = 75
    Height = 25
    Caption = #36820#22238
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
end
