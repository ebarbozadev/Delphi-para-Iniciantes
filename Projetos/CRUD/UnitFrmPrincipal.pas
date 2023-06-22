unit UnitFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitFrmSecundario;

type
  TfrmPrincipal = class(TForm)
    Cadastrados: TMemo;
    CRUD: TButton;
    procedure CRUDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CRUDClick(Sender: TObject);
var
  frmSecundario: TfrmSecundario;
begin
  frmSecundario:= TfrmSecundario.Create(nil);
  try
    frmSecundario.ShowModal;
  finally
    frmSecundario.Free;
  end;
end;

end.