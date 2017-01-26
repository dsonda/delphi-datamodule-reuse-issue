object dtmOrder: TdtmOrder
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object cdsOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 56
    object cdsOrderId: TIntegerField
      FieldName = 'Id'
    end
    object cdsOrderCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object cdsOrderDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object cdsOrderValue: TFloatField
      FieldName = 'Value'
    end
  end
end
