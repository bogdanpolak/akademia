object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 406
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 418
    Height = 340
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 418
    Height = 54
    Align = alTop
    Caption = 'GroupBox1'
    TabOrder = 1
    object btnAddWriterThread: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 164
      Height = 31
      Align = alLeft
      Caption = 'btnAddWriterThread'
      TabOrder = 0
      OnClick = btnAddWriterThreadClick
    end
    object btnTermianteProducers: TButton
      AlignWithMargins = True
      Left = 175
      Top = 18
      Width = 154
      Height = 31
      Align = alLeft
      Caption = 'btnTermianteProducers'
      TabOrder = 1
      OnClick = btnTermianteProducersClick
    end
  end
  object tmrConsumer: TTimer
    OnTimer = tmrConsumerTimer
    Left = 72
    Top = 88
  end
end