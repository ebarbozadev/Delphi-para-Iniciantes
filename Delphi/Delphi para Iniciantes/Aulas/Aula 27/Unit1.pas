unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

// Criando um objeto
type
  // Criar com o 'T' e recebendo 'record'
  TPessoa = record
      Nome: String;
      Idade: Integer;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  // Criando um array do tipo record e global para que outros componentes possam utilizar
  Pessoa : array[0..9] of TPessoa;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  // Criamos uma vari�vel do tipo objeto tamb�m
  NovaPessoa : TPessoa;
begin
  with NovaPessoa do
  begin
    Nome:= Edit2.Text;
    Idade:= StrToInt(Edit3.Text);
  end;
  Pessoa[StrToInt(Edit1.Text)]:= NovaPessoa;
  Edit1.Text:= '';
  Edit2.Text:= '';
  Edit3.Text:= '';
  ShowMessage('Cadastrado');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(Pessoa[StrToInt(Edit1.Text)].Nome);
end;

end.
