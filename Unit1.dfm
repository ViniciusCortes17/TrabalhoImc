object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'IMC'
  ClientHeight = 362
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Historic'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 74
    Width = 51
    Height = 25
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 25
    Caption = 'Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 64
    Top = 155
    Width = 201
    Height = 46
    Caption = 'Calcular IMC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Peso: TEdit
    Left = 8
    Top = 39
    Width = 603
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Altura: TEdit
    Left = 8
    Top = 101
    Width = 603
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 224
    Width = 603
    Height = 83
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 336
    Top = 155
    Width = 201
    Height = 46
    Caption = 'Limpar Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 313
    Width = 603
    Height = 46
    Caption = 'Saiba mais sobre os diferentes '#237'ndices de massa corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = Button3Click
  end
end
