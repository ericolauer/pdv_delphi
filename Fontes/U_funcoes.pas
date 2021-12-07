unit U_funcoes;

interface
//declarar funcoes e var
function TestarPermissao(NOME_FORM:string):boolean;

//gerar codigo ean
function EAN13() :string;


implementation

uses Vcl.Dialogs, System.SysUtils;

function TestarPermissao(NOME_FORM:string):boolean;

begin

Result := True;

if Result =false then
ShowMessage('Acesso de usu�rio n�o permitido')


end;

//funcao  para gerar codigo de barras


Function EAN13() : String;
var nX, nDigito, nPeso : Integer;
var nSoma, nMaior  : Double;
var base:string;

Begin
  //valor base para gerar o digito verificador
 base  := FormatDateTime('yymmdd', Date) + FormatDateTime('hhmmss', Time);
 nPeso := 3;
 nSoma := 0;

     For nX := 12 DownTo 1 do
     Begin

     nSoma := nSoma + StrToInt( base[ nX ] ) * nPeso;

         If nPeso = 3 Then
         nPeso := 1
         Else
         nPeso := 3;

     End;

 nMaior   := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
 nDigito  := Trunc( nMaior ) - Trunc( nSoma );

     If nDigito = 10 Then
     nDigito   := 0;
     //codigo base + o digito verificador prontos
     Result    := base + IntToStr( nDigito );

End;
//fim do gera codigo de barras


end.
