program RedeAncora;

uses
  System.StartUpCopy,
  FMX.Forms,
  ancoraservicos in 'ancoraservicos.pas' {Form1},
  awsredeancoraservice in 'awsredeancoraservice.pas',
  MarcasProdutos in 'MarcasProdutos.pas',
  buscarprodutos in 'buscarprodutos.pas',
  linhasprodutos in 'linhasprodutos.pas',
  FabricantesProdutos in 'FabricantesProdutos.pas',
  ProdutosIncrementais in 'ProdutosIncrementais.pas',
  listasprecos in 'listasprecos.pas',
  comercial in '..\..\util\comercial.pas',
  funcoesclipper in '..\..\util\funcoesclipper.pas',
  CondicoesPagamento in 'CondicoesPagamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
