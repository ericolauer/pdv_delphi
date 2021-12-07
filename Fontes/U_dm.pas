unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    mysql_link: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    sql_produtos: TFDQuery;
    sql_produtosidprodutos: TFDAutoIncField;
    sql_produtospro_descricao: TStringField;
    sql_produtospro_barras: TStringField;
    sql_produtospro_ref: TStringField;
    sql_produtospro_custo: TFloatField;
    sql_produtospro_preco: TFloatField;
    sql_produtospro_data_cad: TDateField;
    sql_produtospro_estoque: TIntegerField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtosidprodutos: TFDAutoIncField;
    TB_produtospro_descricao: TStringField;
    TB_produtospro_barras: TStringField;
    TB_produtospro_ref: TStringField;
    TB_produtospro_custo: TFloatField;
    TB_produtospro_preco: TFloatField;
    TB_produtospro_data_cad: TDateField;
    TB_produtospro_estoque: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
