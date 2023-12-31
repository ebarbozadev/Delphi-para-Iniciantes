unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtInput: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    // Variáveis
    escrito : String;

    procedure mostraNaTela(Valor : String);

    function pegarDigitado : String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  escrito := pegarDigitado;
  mostraNaTela(escrito);
end;

procedure TForm1.mostraNaTela(Valor: string);
begin
  ShowMessage(Valor);
end;

function TForm1.pegarDigitado;
begin
  Result := edtInput.Text;
end;

end.
