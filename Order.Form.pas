unit Order.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CRUD.Form, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Customer.DataModule;

type
  TfrmOrder = class(TfrmCRUD)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FdtmCustomer: TdtmCustomer;
  public
    { Public declarations }
  end;

var
  frmOrder: TfrmOrder;

implementation

{$R *.dfm}

uses Order.DataModule;

procedure TfrmOrder.FormCreate(Sender: TObject);
begin
  inherited;
  dtmOrder := TdtmOrder.Create(nil);
  FdtmCustomer := TdtmCustomer.Create(nil);
end;

procedure TfrmOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dtmOrder);
  FdtmCustomer.Free;
end;

end.
