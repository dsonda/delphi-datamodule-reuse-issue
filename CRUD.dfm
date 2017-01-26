object frmCRUD: TfrmCRUD
  Left = 0
  Top = 0
  Caption = 'frmCRUD'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgCRUD: TDBGrid
    Left = 0
    Top = 25
    Width = 527
    Height = 217
    Align = alClient
    DataSource = dtsCRUD
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnCRUD: TDBNavigator
    Left = 0
    Top = 0
    Width = 527
    Height = 25
    DataSource = dtsCRUD
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 128
    ExplicitWidth = 240
  end
  object dtsCRUD: TDataSource
    Left = 256
    Top = 128
  end
end
