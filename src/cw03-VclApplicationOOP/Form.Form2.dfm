object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 336
  ClientWidth = 217
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
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 211
    Height = 158
    Align = alTop
    Caption = 'GroupBox1'
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 201
      Height = 13
      Margins.Bottom = 1
      Align = alTop
      Caption = 'On Idle counter:'
      ExplicitWidth = 79
    end
    object ListBox2: TListBox
      AlignWithMargins = True
      Left = 5
      Top = 35
      Width = 201
      Height = 33
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 7
      ExplicitTop = 66
    end
  end
  object ListBox1: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 167
    Width = 211
    Height = 166
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    ExplicitLeft = 16
    ExplicitTop = 200
    ExplicitWidth = 121
    ExplicitHeight = 97
  end
end