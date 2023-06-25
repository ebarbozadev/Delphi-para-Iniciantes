unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtValor2: TEdit;
    Label1: TLabel;
    edtValor1: TEdit;
    edtResultado: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }

    function adicao(valor1, valor2 : Currency) : Currency;
    function subtracao(valor1, valor2 : Currency) : Currency;
    function divisao(valor1, valor2 : Currency) : Currency;
    function multiplicacao(valor1, valor2 : Currency) : Currency;
    function resto(valor1, valor2 : Integer) : Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Adi��o
function TForm1.adicao(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 + valor2;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : Currency;

begin
  Resultado := adicao(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;

// Subtra��o
procedure TForm1.Button2Click(Sender: TObject);
var
  Resultado : Currency;

begin
  Resultado := subtracao(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;

function TForm1.subtracao(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 - valor2;
end;

// Multiplica��o
function TForm1.multiplicacao(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 * valor2;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Resultado : Currency;

begin
  Resultado := multiplicacao(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;

// Divis�o
function TForm1.divisao(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 / valor2;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Resultado : Currency;

begin
  Resultado := divisao(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;

// Par ou Impar
procedure TForm1.Button5Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := resto(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;

function TForm1.resto(valor1: Integer; valor2: Integer): Integer;
begin
  Result := valor1 mod valor2;
end;

end.
