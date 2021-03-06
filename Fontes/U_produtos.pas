unit U_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_produtos = class(TForm)
    stb_produtos: TStatusBar;
    page_produtos: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbg_produtos: TDBGrid;
    txt_busca: TEdit;
    Label1: TLabel;
    rg_buscar: TRadioGroup;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ds_produtos_cad: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    acm_produtos: TActionManager;
    Action2: TAction;
    ac_insert: TDataSetInsert;
    ac_delete: TDataSetDelete;
    ac_editar: TDataSetEdit;
    ac_ok: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_delete: TSpeedButton;
    btn_editarProdutos: TSpeedButton;
    btn_gerarBarras: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btn_editarProdutosClick(Sender: TObject);
    procedure dbg_produtosDblClick(Sender: TObject);
    procedure btn_gerarBarrasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_produtos: Tfrm_produtos;

implementation

{$R *.dfm}

uses U_dm, U_funcoes;

procedure Tfrm_produtos.btn_editarProdutosClick(Sender: TObject);
begin
// selecionar produto para editar
    dm.tb_produtos.Locate('idprodutos', dm.sql_produtosidprodutos.Value, []);
    page_produtos.ActivePage := TabSheet2;
end;

procedure Tfrm_produtos.btn_gerarBarrasClick(Sender: TObject);
begin
//gerar c?digo de barras
DBEdit2.Text := EAN13;

end;

procedure Tfrm_produtos.dbg_produtosDblClick(Sender: TObject);
begin
  btn_editarProdutos.Click;
end;

procedure Tfrm_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

dm.SQL_produtos.Close;
frm_produtos := nil;
end;

procedure Tfrm_produtos.FormCreate(Sender: TObject);
begin
// ativa tb produto e seta para iniciar na tela consultar
      dm.tb_produtos.Active := true;
      page_produtos.ActivePage := TabSheet1;
end;

procedure Tfrm_produtos.txt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
//fazendo a busca

  if Key = #13 then
  begin

  if rg_buscar.ItemIndex = -1 then
  begin

  ShowMessage ('Escolha o tipo de busca: por nome ou por barras');
  Exit;

  end;

        with dm.sql_produtos do

        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from produtos');

        case rg_buscar.ItemIndex of


        0: SQL.Add('where pro_descricao like :nome');
        1: SQL.Add('where pro_barras like :nome');

        end;

        ParamByName('nome').Value := txt_busca.Text +'%';
        Open;

        if RecordCOunt = 0 then
        ShowMessage ('Produto n?o encontrado')

        end;
  end;
end;

end.
