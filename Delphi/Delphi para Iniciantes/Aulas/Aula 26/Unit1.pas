unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Nome: array[0..9] of String;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nome[StrToInt(Edit1.Text)] := Edit2.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(Nome[StrToInt(Edit1.Text)]);
end;

end.
