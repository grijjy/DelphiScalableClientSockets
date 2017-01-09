object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 458
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 208
    Top = 320
    Width = 3
    Height = 13
  end
  object LabelResponseHeaders: TLabel
    Left = 24
    Top = 56
    Width = 90
    Height = 13
    Caption = 'Response Headers'
  end
  object LabelResponseContent: TLabel
    Left = 24
    Top = 189
    Width = 89
    Height = 13
    Caption = 'Response Content'
  end
  object EditUrl: TEdit
    Left = 24
    Top = 24
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'http://www.grijjy.com'
  end
  object MemoResponseContent: TMemo
    Left = 24
    Top = 208
    Width = 401
    Height = 233
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object MemoResponseHeaders: TMemo
    Left = 24
    Top = 75
    Width = 401
    Height = 105
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ButtonGet: TButton
    Left = 295
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Get'
    TabOrder = 3
    OnClick = ButtonGetClick
  end
end
