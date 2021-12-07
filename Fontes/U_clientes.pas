unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_clientes = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_clientes: Tfrm_clientes;

implementation

{$R *.dfm}

procedure Tfrm_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_clientes := nil;
end;

end.
