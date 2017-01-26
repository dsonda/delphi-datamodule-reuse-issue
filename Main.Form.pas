unit Main.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnCustomers: TButton;
    btnOrders: TButton;
    procedure btnCustomersClick(Sender: TObject);
    procedure btnOrdersClick(Sender: TObject);
  private
    { Private declarations }
    function IsFormOpened(AFormClass: TFormClass): Boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses Customer.Form, Order.Form;

procedure TfrmMain.btnCustomersClick(Sender: TObject);
begin
  if not IsFormOpened(TfrmCustomer) then
    frmCustomer := TfrmCustomer.Create(Self);
  frmCustomer.Show;
end;

procedure TfrmMain.btnOrdersClick(Sender: TObject);
begin
  if not IsFormOpened(TfrmOrder) then
    frmOrder := TfrmOrder.Create(Self);
  frmOrder.Show;
end;

function TfrmMain.IsFormOpened(AFormClass: TFormClass): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Screen.CustomFormCount - 1 do
  begin
    if Screen.CustomForms[I] is AFormClass then
      Exit(True);
  end
end;

end.
