object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 146
  ClientWidth = 199
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 117
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 16
    Width = 73
    Height = 17
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 39
    Width = 145
    Height = 17
    Caption = 'HP LaserJet Pro P1102w'
    TabOrder = 2
  end
  object CheckBox3: TCheckBox
    Left = 24
    Top = 62
    Width = 145
    Height = 17
    Caption = 'HP LaserJet Pro M1212'
    TabOrder = 3
  end
  object CheckBox4: TCheckBox
    Left = 8
    Top = 85
    Width = 97
    Height = 17
    Caption = 'N'#227'o Imprime'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 116
    Top = 117
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 5
    OnClick = Button2Click
  end
end
