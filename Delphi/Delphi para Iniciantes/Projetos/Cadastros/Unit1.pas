unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, unitFrmProduto, Unit2;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    Inicio1: TMenuItem;
    Cadastrar1: TMenuItem;
    Empresa1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
    listaProdutosCadastradosF2 : String;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
var
  FormProduto : TfrmProduto;
begin
  FormProduto:= TfrmProduto.Create(nil);
  try
    FormProduto.ShowModal;
    listaProdutosCadastradosF2:= FormProduto.listaProdutosCadastrados + #13 + '-' + #13 + listaProdutosCadastradosF2;
  finally
    FormProduto.Free;
  end;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
var
  frmProdutosRlt: TfrmProdutosRlt;
begin
  frmProdutosRlt.Create(nil);
  try
    frmProdutosRlt.ShowModal;
  finally
    frmProdutosRlt.Free;
  end;
end;

end.
