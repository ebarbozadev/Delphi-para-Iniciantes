unit UnitFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, UnitFrmSecundario;

type
  TfrmPrincipal = class(TForm)
    Cadastros: TMemo;
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    procedure Cadastrar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Cadastrar1Click(Sender: TObject);
var
  frmSecundario: TfrmSecundario;
begin
  frmSecundario:= TfrmSecundario.Create(nil);
  try
    frmSecundario.ShowModal;
    Cadastros.Lines.Clear;
    Cadastros.Lines.Add(frmSecundario.cadastro);
  finally
    frmSecundario.Free;
  end;
end;

end.
