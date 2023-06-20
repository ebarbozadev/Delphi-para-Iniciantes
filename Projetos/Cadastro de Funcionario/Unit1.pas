unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  nome : String;
  sobrenome : String;
  cargo : String;
  salarioStr: String;
  salario : Currency;
begin
  Nome := InputBox('Cadastro de Funcionário', 'Nome', '');
  Sobrenome := InputBox('Cadastro de Funcionário', 'Sobrenome', '');
  Cargo := InputBox('Cadastro de Funcionário', 'Cargo', 'Estagiário');
  SalarioStr := InputBox('Cadastro de Funcionário', 'Salário', '0');
  salario := StrToCurr(salarioStr);
  ShowMessage('Usuário Cadastrado: ' + Nome + ' ' + Sobrenome + ' Cargo: ' + Cargo + ' Salário: ' + SalarioStr);
end;

end.
