unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtEscrever: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    // Vari�veis
    oQueFoiDigitado : String;

    procedure mostrarOQueFoiDigitado(Valor : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Bot�o
procedure TForm1.Button1Click(Sender: TObject);
begin
  oQueFoiDigitado := edtEscrever.Text;
  mostrarOQueFoiDigitado(oQueFoiDigitado);
end;

procedure TForm1.mostrarOQueFoiDigitado(Valor: string);
begin
  ShowMessage(Valor);
end;

end.
