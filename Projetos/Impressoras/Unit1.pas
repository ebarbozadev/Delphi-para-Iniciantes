unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TImpressoras = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressoras: TImpressoras;

implementation

{$R *.dfm}

procedure TImpressoras.Button1Click(Sender: TObject);
var
  Resposta: Integer;

begin
  Resposta := MessageDlg('Deseja sair?', TMsgDlgType.mtWarning,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if Resposta = 6 then
    Close
  else
    ShowMessage('Sistema ainda aberto');
end;

procedure TImpressoras.Button2Click(Sender: TObject);
begin
  if CheckBox1.Checked and CheckBox2.Checked and CheckBox3.Checked then
    ShowMessage('Impress�o mandada para: ' + CheckBox2.Caption + ' e ' +
      CheckBox2.Caption)
  else if CheckBox1.Checked and CheckBox2.Checked then
    ShowMessage('Imprimindo na ' + CheckBox2.Caption)
  else if CheckBox1.Checked and CheckBox3.Checked then
    ShowMessage('Imprimindo na ' + CheckBox3.Caption)
  else if CheckBox2.Checked or CheckBox3.Checked then
    MessageDlg('Selecione a op��o "Imprimir"', TMsgDlgType.mtError,
      [TMsgDlgBtn.mbOK], 0)
  else if CheckBox4.Checked and CheckBox1.Checked then
    MessageDlg
      ('N�o � poss�vel selecionar "Imprimir" e "N�o Imprimir" ao mesmo tempo',
      TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0)
  else if CheckBox1.Checked then
    MessageDlg('Selecione alguma impressora', TMsgDlgType.mtError,
      [TMsgDlgBtn.mbOK], 0)
  else if CheckBox4.Checked then
    ShowMessage('N�o vai imprimir')
  else
end;

procedure TImpressoras.CheckBox1Click(Sender: TObject);
begin
  ShowMessage('Selecione uma impressora');
end;

end.
