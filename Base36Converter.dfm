object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Base36 Converter'
  ClientHeight = 111
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNum: TLabel
    Left = 24
    Top = 8
    Width = 248
    Height = 13
    Caption = 'Decimal Number (Has to be a float number, ex: 0.x)'
  end
  object lblResult: TLabel
    Left = 24
    Top = 54
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object edtNumDec: TEdit
    Left = 24
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object edtBase36: TEdit
    Left = 24
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object btnGetBase36Num: TButton
    Left = 304
    Top = 24
    Width = 113
    Height = 69
    Caption = 'Convert to Base36'
    TabOrder = 2
    OnClick = btnGetBase36NumClick
  end
end
