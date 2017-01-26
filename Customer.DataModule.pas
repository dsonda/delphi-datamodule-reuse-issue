unit Customer.DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdtmCustomer = class(TDataModule)
    cdsCustomer: TClientDataSet;
    cdsCustomerId: TIntegerField;
    cdsCustomerName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCustomer: TdtmCustomer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmCustomer.DataModuleCreate(Sender: TObject);
begin
  cdsCustomer.CreateDataSet;
end;

end.
