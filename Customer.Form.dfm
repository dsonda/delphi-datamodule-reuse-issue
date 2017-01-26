inherited frmCustomer: TfrmCustomer
  Caption = 'frmCustomer'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbnCRUD: TDBNavigator
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 527
  end
  inherited dtsCRUD: TDataSource
    DataSet = dtmCustomer.cdsCustomer
  end
end
