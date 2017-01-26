unit Order.DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdtmOrder = class(TDataModule)
    cdsOrder: TClientDataSet;
    cdsOrderId: TIntegerField;
    cdsOrderCustomerId: TIntegerField;
    cdsOrderDescription: TStringField;
    cdsOrderValue: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmOrder: TdtmOrder;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmOrder.DataModuleCreate(Sender: TObject);
begin
  cdsOrder.CreateDataSet;
end;

end.
