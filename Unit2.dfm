object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1080#1089#1100
  ClientHeight = 333
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 24
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 18
    Height = 13
    Caption = #1080#1084#1103
  end
  object Label3: TLabel
    Left = 64
    Top = 120
    Width = 44
    Height = 13
    Caption = #1090#1077#1083#1077#1092#1086#1085
  end
  object Label4: TLabel
    Left = 64
    Top = 168
    Width = 30
    Height = 13
    Caption = #1072#1076#1088#1077#1089
  end
  object Edit1: TEdit
    Left = 192
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 192
    Top = 165
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = Edit4Change
  end
  object Button1: TButton
    Left = 64
    Top = 288
    Width = 75
    Height = 25
    Caption = #1079#1072#1087#1080#1089#1080#1089#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 238
    Top = 288
    Width = 75
    Height = 25
    Caption = #1085#1072#1079#1072#1076
    TabOrder = 5
    OnClick = Button2Click
  end
end
