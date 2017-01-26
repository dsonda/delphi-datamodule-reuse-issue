unit CRUD.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmCRUD = class(TForm)
    dtsCRUD: TDataSource;
    dbgCRUD: TDBGrid;
    dbnCRUD: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRUD: TfrmCRUD;

implementation

{$R *.dfm}

procedure TfrmCRUD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
