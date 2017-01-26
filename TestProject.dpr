program TestProject;

uses
  Vcl.Forms,
  Main.Form in 'Main.Form.pas' {frmMain},
  CRUD.Form in 'CRUD.Form.pas' {frmCRUD},
  Customer.DataModule in 'Customer.DataModule.pas' {dtmCustomer: TDataModule},
  Customer.Form in 'Customer.Form.pas' {frmCustomer},
  Order.DataModule in 'Order.DataModule.pas' {dtmOrder: TDataModule},
  Order.Form in 'Order.Form.pas' {frmOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
