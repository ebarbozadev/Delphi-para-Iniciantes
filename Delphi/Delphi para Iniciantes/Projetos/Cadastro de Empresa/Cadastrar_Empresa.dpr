program Cadastrar_Empresa;

uses
  Vcl.Forms,
  UnitFrmPrincipal in 'UnitFrmPrincipal.pas' {frmPrincipal},
  UnitFrmSecundario in 'UnitFrmSecundario.pas' {frmSecundario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSecundario, frmSecundario);
  Application.Run;
end.
