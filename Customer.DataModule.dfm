object dtmCustomer: TdtmCustomer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 56
    object cdsCustomerId: TIntegerField
      FieldName = 'Id'
    end
    object cdsCustomerName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
end
