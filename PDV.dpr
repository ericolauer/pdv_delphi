program PDV;

uses
  Vcl.Forms,
  U_inicial in 'Fontes\U_inicial.pas' {frm_inicial},
  U_clientes in 'Fontes\U_clientes.pas' {frm_clientes},
  U_funcoes in 'Fontes\U_funcoes.pas',
  U_produtos in 'Fontes\U_produtos.pas' {frm_produtos},
  U_dm in 'Fontes\U_dm.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'PDV';
  Application.CreateForm(Tfrm_inicial, frm_inicial);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
