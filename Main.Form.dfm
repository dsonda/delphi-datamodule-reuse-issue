object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Form'
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
  object btnCustomers: TButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Customers'
    TabOrder = 0
    OnClick = btnCustomersClick
  end
  object btnOrders: TButton
    Left = 224
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Orders'
    TabOrder = 1
    OnClick = btnOrdersClick
  end
end
