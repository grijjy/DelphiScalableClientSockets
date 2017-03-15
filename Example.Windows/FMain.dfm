object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 520
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 208
    Top = 384
    Width = 3
    Height = 13
  end
  object LabelResponseHeaders: TLabel
    Left = 24
    Top = 120
    Width = 90
    Height = 13
    Caption = 'Response Headers'
  end
  object LabelResponseContent: TLabel
    Left = 24
    Top = 253
    Width = 89
    Height = 13
    Caption = 'Response Content'
  end
  object EditUrl: TEdit
    Left = 24
    Top = 24
    Width = 401
    Height = 21
    TabOrder = 0
    Text = 'http://www.grijjy.com'
  end
  object MemoContent: TMemo
    Left = 24
    Top = 272
    Width = 401
    Height = 233
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object MemoHeaders: TMemo
    Left = 24
    Top = 139
    Width = 401
    Height = 105
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ButtonGet: TButton
    Left = 24
    Top = 62
    Width = 89
    Height = 25
    Caption = 'Get'
    TabOrder = 3
    OnClick = ButtonGetClick
  end
  object ButtonGetNonBlocking: TButton
    Left = 119
    Top = 62
    Width = 138
    Height = 25
    Caption = 'Get Non-Blocking'
    TabOrder = 4
    OnClick = ButtonGetNonBlockingClick
  end
end
