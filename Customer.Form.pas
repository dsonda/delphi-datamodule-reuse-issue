unit Customer.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CRUD.Form, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCustomer = class(TfrmCRUD)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomer: TfrmCustomer;

implementation

{$R *.dfm}

uses Customer.DataModule;

procedure TfrmCustomer.FormCreate(Sender: TObject);
begin
  inherited;
  dtmCustomer := TdtmCustomer.Create(nil);
end;

procedure TfrmCustomer.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dtmCustomer);
end;

end.
