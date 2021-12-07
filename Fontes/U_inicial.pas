unit U_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons;

type
  Tfrm_inicial = class(TForm)
    stb_inicial: TStatusBar;
    menu_inicial: TMainMenu;
    Sistema1: TMenuItem;
    N1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    N2: TMenuItem;
    Movimentos1: TMenuItem;
    PDV1: TMenuItem;
    Caixa1: TMenuItem;
    ManutendeVendas1: TMenuItem;
    RelatrioVendas1: TMenuItem;
    N3: TMenuItem;
    VendasAbertas1: TMenuItem;
    Ajustes1: TMenuItem;
    Sair1: TMenuItem;
    panel_menu: TPanel;
    btn_clientes: TSpeedButton;
    btn_produtos: TSpeedButton;
    btn_pdv: TSpeedButton;
    Clientes1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inicial: Tfrm_inicial;

implementation

{$R *.dfm}

uses U_clientes, U_funcoes, U_produtos;

procedure Tfrm_inicial.btn_clientesClick(Sender: TObject);
begin
clientes1.Click
end;

procedure Tfrm_inicial.btn_produtosClick(Sender: TObject);
begin
produtos1.Click
end;

procedure Tfrm_inicial.Clientes1Click(Sender: TObject);
begin

 if TestarPermissao('frm_clientes') = False then
 Exit;

//chamar form clientes
if frm_clientes = nil then

frm_clientes := Tfrm_clientes.Create(self);
frm_clientes.ShowModal;





end;

procedure Tfrm_inicial.Produtos1Click(Sender: TObject);
begin
   if TestarPermissao('frm_produtos') = false then
   Exit;

  if frm_produtos = nil then

  frm_produtos := Tfrm_produtos.Create(self);
  frm_produtos.ShowModal;









end;

end.
