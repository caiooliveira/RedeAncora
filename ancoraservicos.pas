unit ancoraservicos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, Winapi.Windows, Winapi.ShellApi, Winapi.ActiveX,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.Layouts,
  FMX.Colors, FMX.EditBox, FMX.SpinBox, System.Actions, FMX.ActnList,
  System.Rtti, FMX.Grid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FMX.Objects, FMX.ListBox,
  xmldom, XMLDoc, XMLIntf, FMX.Memo.Types, FMX.Grid.Style,
  Xml.Win.msxmldom, Soap.InvokeRegistry, System.Net.URLClient, Soap.Rio,
  Soap.SOAPHTTPClient, System.Threading;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    dadosresposta: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    dadosenvio: TMemo;
    LayouteCNPJToken: TLayout;
    ColorBox1: TColorBox;
    ActionList1: TActionList;
    actCarregarToken: TAction;
    ltoken: TEdit;
    Label3: TLabel;
    edMarca: TEdit;
    Button3: TButton;
    actConsProdutos: TAction;
    Label5: TLabel;
    edCNA: TEdit;
    Label6: TLabel;
    lver1: TLabel;
    lver2: TSpinBox;
    ckbAlternativos: TCheckBox;
    CkbSubstitutos: TCheckBox;
    LayoutGridMensagem: TLayout;
    actMontaGridMarcaProdutos: TAction;
    StrGMarcas: TStringGrid;
    FDMarcas: TFDMemTable;
    FDMarcascodigo: TStringField;
    FDMarcasdescricao: TStringField;
    BDSFDMarcas: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Erros: TMemo;
    actLimpaTela: TAction;
    actApagaToken: TAction;
    Button4: TButton;
    actBuscarProdutos: TAction;
    Label7: TLabel;
    edEAN: TEdit;
    actMontaGridBuscarProdutos: TAction;
    StrGBuscarProdutos: TStringGrid;
    BDSBuscarProdutos: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDBuscarProdutos: TFDMemTable;
    FDBuscarProdutosCodigoRedeAncora: TStringField;
    FDBuscarProdutosNome: TStringField;
    FDBuscarProdutosDescricao: TStringField;
    FDBuscarProdutosCNA: TStringField;
    FDBuscarProdutosFabricante: TStringField;
    FDBuscarProdutosFornecedor: TStringField;
    FDBuscarProdutosCodigoFornecedor: TStringField;
    FDBuscarProdutosMarca: TStringField;
    FDBuscarProdutosFamilia: TStringField;
    FDBuscarProdutosEAN: TStringField;
    FDBuscarProdutosPeso: TCurrencyField;
    FDBuscarProdutosNCM: TStringField;
    FDBuscarProdutosUnVenda: TStringField;
    FDBuscarProdutosUnCompra: TStringField;
    FDBuscarProdutosEstoque: TCurrencyField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    FDBuscarProdutosPreco: TCurrencyField;
    Button5: TButton;
    Label11: TLabel;
    actListasPreco: TAction;
    cbLinha: TComboBox;
    edCodFornecedor: TEdit;
    Label13: TLabel;
    Button6: TButton;
    actlinhasProdutos: TAction;
    Label14: TLabel;
    actMontaComboLinhasProdutos: TAction;
    Label2: TLabel;
    edCNPJ: TEdit;
    Button2: TButton;
    Button7: TButton;
    Label4: TLabel;
    actFamiliasProdutos: TAction;
    actMontaComboFamiliasProdutos: TAction;
    cbFamilias: TComboBox;
    actFabricantesProdutos: TAction;
    Button8: TButton;
    Label16: TLabel;
    cbFabricantes: TComboBox;
    actMontaComboFabricantesProdutos: TAction;
    Image1: TImage;
    Button9: TButton;
    Label18: TLabel;
    Label19: TLabel;
    edCNALista: TEdit;
    actProdutosIncrementais: TAction;
    actMontaGridProdutosIncrementais: TAction;
    SpiBRegistros: TSpinBox;
    FDProdIncrementais: TFDMemTable;
    StrGProdutosIncrementais: TStringGrid;
    FDProdIncrementaisProdutoCodigoRedeAncora: TIntegerField;
    FDProdIncrementaisNome: TStringField;
    FDProdIncrementaisDescricao: TStringField;
    FDProdIncrementaisProdutoCNA: TIntegerField;
    FDProdIncrementaisFabricante: TStringField;
    FDProdIncrementaisFornecedor: TStringField;
    FDProdIncrementaisProdutoCodigoFornecedor: TIntegerField;
    FDProdIncrementaisMarca: TStringField;
    FDProdIncrementaisPreco: TCurrencyField;
    FDProdIncrementaisFamilia: TStringField;
    FDProdIncrementaisLinha: TStringField;
    FDProdIncrementaisProdutoEAN: TStringField;
    FDProdIncrementaisPeso: TStringField;
    FDProdIncrementaisNCM: TStringField;
    FDProdIncrementaisUnVenda: TStringField;
    FDProdIncrementaisUnCompra: TStringField;
    FDProdIncrementaisQuantidadeCompra: TIntegerField;
    FDProdIncrementaisQuantidadeVenda: TIntegerField;
    FDProdIncrementaisDataAlteracao: TStringField;
    BDSProdutosIncrementais: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB13: TLinkGridToDataSource;
    FDLIstaPrecos: TFDMemTable;
    FDLIstaPrecosProdutoCodigoRedeAncora: TStringField;
    FDLIstaPrecosProdutoCodigoFornecedor: TStringField;
    FDLIstaPrecosProdutoCNA: TStringField;
    FDLIstaPrecosPreco: TCurrencyField;
    StrGListaPrecos: TStringGrid;
    actMontaGridListaPrecos: TAction;
    BDSListaPrecos: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB14: TLinkGridToDataSource;
    cbCondicoesPagamento: TComboBox;
    Button10: TButton;
    actCondPgto: TAction;
    actMontaComboCondPgto: TAction;
    Button11: TButton;
    actGerarOrdemCompra: TAction;
    HTTPRIO1: THTTPRIO;
    Button12: TButton;
    actGerarOrdemCompraM2: TAction;
    LayouteEnvioResposta: TLayout;
    LayoutXMLEnvio: TLayout;
    LayoutXMLResposta: TLayout;
    Panel2: TPanel;
    Label12: TLabel;
    Panel3: TPanel;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCarregarTokenExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure actConsProdutosExecute(Sender: TObject);
    procedure actMontaGridMarcaProdutosExecute(Sender: TObject);
    procedure actLimpaTelaExecute(Sender: TObject);
    procedure StrGMarcasPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure actApagaTokenExecute(Sender: TObject);
    procedure edCNPJChange(Sender: TObject);
    procedure actBuscarProdutosExecute(Sender: TObject);
    procedure actMontaGridBuscarProdutosExecute(Sender: TObject);
    procedure StrGBuscarProdutosPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure actListasPrecoExecute(Sender: TObject);
    procedure actlinhasProdutosExecute(Sender: TObject);
    procedure actMontaComboLinhasProdutosExecute(Sender: TObject);
    procedure actFamiliasProdutosExecute(Sender: TObject);
    procedure actMontaComboFamiliasProdutosExecute(Sender: TObject);
    procedure actFabricantesProdutosExecute(Sender: TObject);
    procedure actMontaComboFabricantesProdutosExecute(Sender: TObject);
    procedure actProdutosIncrementaisExecute(Sender: TObject);
    procedure actMontaGridProdutosIncrementaisExecute(Sender: TObject);
    procedure actMontaGridListaPrecosExecute(Sender: TObject);
    procedure actCondPgtoExecute(Sender: TObject);
    procedure actMontaComboCondPgtoExecute(Sender: TObject);
    procedure actGerarOrdemCompraExecute(Sender: TObject);
    procedure actGerarOrdemCompraM2Execute(Sender: TObject);
  private
    { Private declarations }
    pathApp: string;
    geradotoken: boolean;
    function montaidentification(nameservice, versao: string): widestring;
    function montacriterion(nameservice, codigo, nome,
      aplicacao: string): widestring;
    function mcriterionprodutos(nameservice, marca, familia, cna,
      codigofornecedor, dataultimaconsulta, alternativos,
      substitutos, linha: string): widestring;
    function mcriterionbuscarprodutos(nameservice, EAN,
      cna: string): widestring;
    procedure GerarToken;
    function mcriterionListasPrecos(nameservice, marca,
    cna, familia: string): widestring;
    function mcriterionLinhasProdutos(nameservice, nome: string): widestring;
    function mcriterionFamiliasProdutos(nameservice, codigo, nome: string):
      widestring;
    function mcriterionFabricantesProdutos(nameservice, Nome,
      DataUltimaConsulta: string): widestring;
    function mcriterionProdutosIncrementais(nameservice, cna,
      registros: string): widestring;
    function mcriterionCondPgto(nameservice, cna,
      dataultimaconsulta: string): widestring;
    function prepItensOrdCompra: widestring;
    function montacriterionOrdemCompra(itens: widestring): widestring;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses awsredeancoraservice, MarcasProdutos, comercial, funcoesclipper,
  buscarprodutos, linhasprodutos, FamiliasProdutos, FabricantesProdutos,
  ProdutosIncrementais, listasprecos, CondicoesPagamento;

procedure TForm1.actApagaTokenExecute(Sender: TObject);
begin
  if fileExists(pathapp+'\ARATokenGenerator.txt') then
  begin
    DeleteFile(pchar(pathapp+'\ARATokenGenerator.txt'));
  end;
  ltoken.Text := '';
end;

procedure TForm1.actBuscarProdutosExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  if edCNA.Text + edEAN.Text = '' then
  begin
    ShowMessage('Informe o codigo CNA ou codigo EAN para prosseguir!');
    EXIT;
  end;

  StrGBuscarProdutos.Visible := true;
  StrGProdutosIncrementais.Visible := false;
  StrGMarcas.Visible := false;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('BuscarProdutos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionbuscarprodutos('BuscarProdutos',
    edEAN.text, edCNA.Text);
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Application.ProcessMessages;

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));
    DadosResposta.Lines.SaveToFile('buscarprodutos.xml');

    actMontaGridBuscarProdutosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actCarregarTokenExecute(Sender: TObject);
var
  arquivo: textfile;
  S: string;
begin
  if fileExists(pathapp+'\ARATokenGenerator.txt') then
  begin
    AssignFile( arquivo,pathapp+'\ARATokenGenerator.txt');
    try
    Reset(arquivo);
    Readln(arquivo, S);
    ltoken.Text := S;
    finally
     CloseFile(arquivo);
    end;
  end else
  begin
    if Not GeradoToken then
      GerarToken;
  end;
end;

procedure TForm1.GerarToken;
begin
  // Shell
  DadosEnvio.Lines.Clear;
  DadosEnvio.Lines.Add(
  'Tokengenerator\GerarToken.bat '+edCnpj.text+' '+pathapp+'\tokengenerator');
  Application.ProcessMessages;

  ShellExecute(0, 'open',
  PChar(pathapp+'\tokengenerator\GerarToken.bat'),
  PChar(edCnpj.text+' '+pathapp+'\tokengenerator'),
  PChar(pathapp+'\tokengenerator'), 0);

  geradotoken := true;

  actCarregarTokenExecute(Self);
end;

procedure TForm1.actCondPgtoExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('CondiçõesPagamento',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionCondPgto(
    'CondiçõesPagamento', edCNPJ.text, '');
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    //DadosResposta.Text :=
    //  RemoveInvalid('C', DadosResposta.Text);

    DadosResposta.Text :=
    Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));

    DadosResposta.Lines.SaveToFile('CondicoesPagamento.xml');

    actMontaComboCondPgtoExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actConsProdutosExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
  alternativos, substitutos: string;
  familha, linha: string;
begin
  actLimpaTelaExecute(Self);

  if (edCNA.Text + edMarca.Text + edCodFornecedor.Text = '') and
     (cbFamilias.ItemIndex = -1) then
  begin
    ShowMessage(
    'Informe: codigo CNA ou EAN ou Cod.Fornecedor ou e Marca para prosseguir!');
    EXIT;
  end;

  familha := '';
  if cbFamilias.ItemIndex >= 0 then
  begin
    familha :=  cbFamilias.Items[cbFamilias.ItemIndex];
    familha := Copy(familha,pos('=',familha)+1,10);
  end;

  linha := '';
  if cbLinha.ItemIndex >= 0 then
  begin
    linha :=  cbLinha.Items[cbLinha.ItemIndex];
    linha :=  Copy(linha,pos('=',linha)+1,10);
  end;

  if ckbAlternativos.IsChecked then
    alternativos := 'S' else alternativos := 'N';
  if ckbSubstitutos.IsChecked then
    substitutos := 'S' else substitutos := 'N';

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('Produtos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionprodutos('Produtos', edMarca.text,
    familha, edCNA.Text, edCodFornecedor.Text, '', alternativos, substitutos,
    linha);
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if (Resposta.Erros <> '') then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));
    DadosResposta.Lines.SaveToFile('produtos.xml');

    actMontaGridBuscarProdutosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actFabricantesProdutosExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('FabricantesProdutos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionFabricantesProdutos('FabricantesProdutos', '', '');
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    //DadosResposta.Text :=
    //  RemoveInvalid('C', DadosResposta.Text);

    DadosResposta.Text :=
    Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));

    DadosResposta.Lines.SaveToFile('FabricantesProdutos.xml');

    actMontaComboFabricantesProdutosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actFamiliasProdutosExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('FamiliasProdutos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionFamiliasProdutos('FamiliasProdutos', '', '');
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));
    DadosResposta.Lines.SaveToFile('FamiliasProdutos.xml');

    actMontaComboFamiliasProdutosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actGerarOrdemCompraExecute(Sender: TObject);
begin
  TTask.Run(
  Procedure
  var
    Ancora: WSRedeAncoraService_Execute;
    Resposta: WSRedeAncoraService_ExecuteResponse;
    Itens: widestring;
  begin
    coinitialize(nil);   // necessário para uso da TThask aqui
    try
    try
    dadosEnvio.Lines.Clear;
    dadosResposta.Lines.Clear;
    itens := prepItensOrdCompra;

    // prepara servico ancora
    Ancora := WSRedeAncoraService_Execute.Create;
    try
    Ancora.Identification := montaidentification('GerarOrdemCompra',
      lver1.Text+lver2.Text+'.0');
    Ancora.Criterion := montacriterionOrdemCompra(itens);

    // tela mensagens
    TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        DadosEnvio.Lines.Add(Ancora.Identification);
        DadosEnvio.Lines.Add(Ancora.Criterion);
        DadosResposta.Lines.Add('AGUARDANDO RESPOSTA....');
      end
    );

    // aciona servico ancora
    Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);
    TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        DadosResposta.Lines.Clear;
        dadosResposta.Lines.Add(Resposta.Result);
      end
    );
    finally
      Ancora.Free;
    end;
    except
      on e:exception do
      begin
        DadosResposta.Lines.Clear;
        DadosResposta.Lines.Add(e.message);
      end;
    end;
    finally
      CoUninitialize;
    end;
  end);
end;

procedure TForm1.actGerarOrdemCompraM2Execute(Sender: TObject);
begin
  TTask.Run(Procedure
  var
    Ancora: WSRedeAncoraService_Execute;
    Resposta: WSRedeAncoraService_ExecuteResponse;
    Itens: widestring;
    defWSDL: string;
    defURL: string;
  begin
    coInitialize(nil);  // necessário para uso da TThask aqui
    try
    defWSDL :=
      'http://www.redeancoraservices.com.br/producao/awsredeancoraservice.aspx?WSDL';
    defURL :=
      'http://www.redeancoraservices.com.br/producao/awsredeancoraservice.aspx';
    dadosEnvio.Lines.Clear;
    dadosResposta.Lines.Clear;
    try
    itens := prepItensOrdCompra;

    Xml.Win.msxmldom.MSXMLDOMDocumentFactory.AddDOMProperty(
    'ProhibitDTD', False, True);

    // prepara servico ancora
    Ancora := WSRedeAncoraService_Execute.Create;
    try
    Ancora.Identification := montaidentification('GerarOrdemCompra',
      lver1.Text+lver2.Text+'.0');
    Ancora.Criterion := montacriterionOrdemCompra(itens);

    // tela mensagens
    TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        DadosEnvio.Lines.Add(Ancora.Identification);
        DadosEnvio.Lines.Add(Ancora.Criterion);
        DadosResposta.Lines.Add('AGUARDANDO RESPOSTA....');
      end
    );

    // aciona servico ancora usando chamado com parâmetros adicionais
    Resposta := (GetWSRedeAncoraServiceSoapPort(True,defWSDL,HTTPRIO1)).Execute(Ancora);

    TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        DadosResposta.Lines.Clear;
        dadosResposta.Lines.Add(Resposta.Result);
      end
    );
    finally
      Ancora.Free;
    end;
    except
      on e:exception do
      begin
        DadosResposta.Lines.Clear;
        DadosResposta.Lines.Add(e.message);
      end;
    end;
    finally
      coUninitialize;
    end;
  end);
end;

procedure TForm1.actLimpaTelaExecute(Sender: TObject);
begin
  DadosEnvio.Lines.Clear;
  DadosResposta.Lines.Clear;
  Erros.Lines.Clear;

  FDMarcas.Close;
  FDBuscarProdutos.Close;
  FDListaPrecos.Close;
  FDProdIncrementais.Close;

  StrGMarcas.Visible := false;
  StrGProdutosIncrementais.Visible := false;
  StrGListaPrecos.Visible := false;
  StrGBuscarProdutos.Visible := false;
end;

procedure TForm1.actlinhasProdutosExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('LinhasProdutos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionLinhasProdutos('LinhasProdutos', '');
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));
    DadosResposta.Lines.SaveToFile('linhasprodutos.xml');

    actMontaComboLinhasProdutosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actListasPrecoExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
  familha: string;
begin
  actLimpaTelaExecute(Self);

  StrGListaPrecos.Visible := true;

  if cbFamilias.ItemIndex >= 0 then
  begin
    familha :=  cbFamilias.Items[cbFamilias.ItemIndex];
    familha := Copy(familha,pos('=',familha)+1,10);
  end else
    familha := '';

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('ListasPreço',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionListasPrecos( 'ListasPreço', edMarca.Text,
    edCNA.Text, familha);
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );
    DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));
    DadosResposta.Lines.SaveToFile('listasprecos.xml');

    actMontaGridListaPrecosExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.actMontaComboCondPgtoExecute(Sender: TObject);
var CondicoesPagamento: IXMLResultCondicoesPagamentosType;
  I: Integer;
  Compare: TFMXObjectSortCompare;
begin
  if Not FileExists('CondicoesPagamento.xml') then
    EXIT;

  // Cria a classe
  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  CondicoesPagamento := LoadresultCondicoesPagamentos(
    'CondicoesPagamento.xml');
  try
  CondicoesPagamento.OwnerDocument.Encoding := 'UTF-8';
  CondicoesPagamento.OwnerDocument.Active := true;

  cbCondicoesPagamento.Items.Clear;
  for I := 0 to CondicoesPagamento.Resultados.Count - 1 do
  begin
    cbCondicoesPagamento.Items.Add(
      IntToStr(CondicoesPagamento.Resultados.ResultadosItem[I].Codigo)+'='+
      CondicoesPagamento.Resultados.ResultadosItem[I].Descricao);
  end;

  Compare := function(Item1, Item2: TFmxObject): Integer
  begin
    if TListBoxItem(Item1).Text = TListBoxItem(Item2).Text then
      Result := 0
    else
    if TListBoxItem(Item1).Text > TListBoxItem(Item2).Text then
      Result := 1
    else
      Result := -1;
  end;
  cbCondicoesPagamento.Sort(Compare);
  finally
    CondicoesPagamento := nil;
  end;
end;

procedure TForm1.actMontaComboFabricantesProdutosExecute(Sender: TObject);
var FabricantesProdutos:  IXMLResultFabricantesProdutosType;
  I: Integer;
  Compare: TFMXObjectSortCompare;
begin
  if Not FileExists('FabricantesProdutos.xml') then
    EXIT;

  // Cria a classe
  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  FabricantesProdutos := LoadresultFabricantesProdutos(
    'FabricantesProdutos.xml');
  try
  FabricantesProdutos.OwnerDocument.Encoding := 'UTF-8';
  FabricantesProdutos.OwnerDocument.Active := true;

  cbFabricantes.Items.Clear;
  for I := 0 to FabricantesProdutos.Resultados.Count - 1 do
  begin
    cbFabricantes.Items.Add(
      FabricantesProdutos.Resultados.ResultadosItem[I].Nome+'='+
      FabricantesProdutos.Resultados.ResultadosItem[I].Codigo);
  end;

  Compare := function(Item1, Item2: TFmxObject): Integer
  begin
    if TListBoxItem(Item1).Text = TListBoxItem(Item2).Text then
      Result := 0
    else
    if TListBoxItem(Item1).Text > TListBoxItem(Item2).Text then
      Result := 1
    else
      Result := -1;
  end;
  cbFabricantes.Sort(Compare);
  finally
    FabricantesProdutos := nil;
  end;
end;

procedure TForm1.actMontaComboFamiliasProdutosExecute(Sender: TObject);
var FamiliasProdutos:  IXMLResultFamiliasProdutosType;
  I: Integer;
begin
  if Not FileExists('FamiliasProdutos.xml') then
    EXIT;

  // Cria a classe
  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  FamiliasProdutos := LoadresultFamiliasProdutos('FamiliasProdutos.xml');
  try
  FamiliasProdutos.OwnerDocument.Encoding := 'UTF-8';
  FamiliasProdutos.OwnerDocument.Active := true;

  cbFamilias.Items.Clear;
  for I := 0 to FamiliasProdutos.Resultados.Count - 1 do
  begin
    cbFamilias.Items.Add(
      FamiliasProdutos.Resultados.ResultadosItem[I].Nome+'='+
      FamiliasProdutos.Resultados.ResultadosItem[I].Codigo);
  end;

  finally
    FamiliasProdutos := nil;
  end;
end;

procedure TForm1.actMontaComboLinhasProdutosExecute(Sender: TObject);
var LinhasProdutos:  IXMLResultLinhasV120Type;
  I: Integer;
begin
  if Not FileExists('LinhasProdutos.xml') then
    EXIT;

  // Cria a classe
  StrGBuscarProdutos.Visible := true;
  StrGMarcas.Visible := false;

  LinhasProdutos := LoadresultLinhasV120('LinhasProdutos.xml');
  try
  LinhasProdutos.OwnerDocument.Encoding := 'UTF-8';
  LinhasProdutos.OwnerDocument.Active := true;

  cbLinha.Items.Clear;
  for I := 0 to LinhasProdutos.Resultados.Count - 1 do
  begin
    cbLinha.Items.Add(LinhasProdutos.Resultados.ResultadosItem[I].Nome+'='+
      LinhasProdutos.Resultados.ResultadosItem[I].Codigo);
  end;

  finally
    LinhasProdutos := nil;
  end;
end;

procedure TForm1.actMontaGridBuscarProdutosExecute(Sender: TObject);
var BuscarProdutos:  IXMLResultBuscarProdutosType;
  I, Conta: Integer;
  Item: IXMLBPResultadosItemType;
begin
  // Cria a classe
  try
  //actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := true;

  BuscarProdutos := LoadresultBuscarProdutos('buscarprodutos.xml');
  try
  BuscarProdutos.OwnerDocument.Encoding := 'UTF-8';
  BuscarProdutos.OwnerDocument.Active := true;

  FDBuscarProdutos.Close;
  FDBuscarProdutos.DisableControls;
  FDBuscarProdutos.Open;

  item := BuscarProdutos.Resultados.ResultadosItem;
  conta := 0;
  I := BuscarProdutos.Resultados.ChildNodes.Count;

  for conta := 1 to I do
  begin
    FDBuscarProdutos.Append;
    FDBuscarProdutos.FieldByName('codigoredeancora').AsString :=
      Item.CodigoRedeAncora;
    FDBuscarProdutos.FieldByName('nome').AsString :=
      RemoveInvalid('C',Item.Nome);
    FDBuscarProdutos.FieldByName('descricao').AsString :=
      RemoveInvalid('C',Item.Descricao);
    FDBuscarProdutos.FieldByName('CNA').AsString :=
      item.CNA;
    FDBuscarProdutos.FieldByName('fabricante').AsString :=
      RemoveInvalid('C',item.Fabricante);
    FDBuscarProdutos.FieldByName('Fornecedor').AsString :=
      RemoveInvalid('C',item.Fornecedor);
    FDBuscarProdutos.FieldByName('CodigoFornecedor').AsString :=
      RemoveInvalid('C',item.CodigoFornecedor);
    FDBuscarProdutos.FieldByName('Marca').AsString :=
      RemoveInvalid('C',item.Marca);
    FDBuscarProdutos.FieldByName('familia').AsString :=
      RemoveInvalid('C',item.Familia);
    //FDBuscarProdutos.FieldByName('linha').AsString :=
      //RemoveInvalid('C',item.Linha);
    try
    FDBuscarProdutos.FieldByName('EAN').AsString :=
      item.EAN;
    except
      FDBuscarProdutos.FieldByName('EAN').AsString := '';
    end;

    FDBuscarProdutos.FieldByName('peso').AsCurrency :=
      StrToCurrDef(item.Peso,0.0000);
    FDBuscarProdutos.FieldByName('NCM').AsString :=
      item.NCM;
    FDBuscarProdutos.FieldByName('unVenda').AsString :=
      item.UnVenda;
    FDBuscarProdutos.FieldByName('unCompra').AsString :=
      item.UnCompra;
    FDBuscarProdutos.FieldByName('estoque').AsCurrency :=
      StrToCurrDef(item.Estoque,0.00);
    FDBuscarProdutos.FieldByName('Preco').AsCurrency :=
      StrToCurrDef(ConvertValor(item.Preco),0.0000);
    FDBuscarProdutos.Post;

    item := (Item.NextSibling as
      IXMLBPResultadosItemType);
  end;
  finally
    FDBuscarProdutos.EnableControls;
    BuscarProdutos := nil;
  end;
  Except
    on e:exception do
    Erros.Lines.Add('Ocorreu um erro ao ler dados da resposta: '+e.Message);
  end;
end;

procedure TForm1.actMontaGridListaPrecosExecute(Sender: TObject);
var ListaPrecos : IXMLResultListaPrecosType;
  I: Integer;
begin
  // Cria a classe
  StrGListaPrecos.Visible := true;

  ListaPrecos := LoadresultListaPrecos('ListasPrecos.xml');
  try
  ListaPrecos.OwnerDocument.Encoding := 'UTF-8';
  ListaPrecos.OwnerDocument.Active := true;

  FDListaPrecos.Close;
  FDListaPrecos.DisableControls;
  FDListaPrecos.Open;
  for I := 0 to ListaPrecos.Resultados.Count - 1 do
  begin
    FDListaPrecos.Append;
    FDListaPrecos.FieldByName('ProdutoCodigoRedeAncora').AsString :=
     ListaPrecos.Resultados.ResultadosItem[I].ProdutoCodigoRedeAncora;
    FDListaPrecos.FieldByName('ProdutoCNA').AsString :=
     ListaPrecos.Resultados.ResultadosItem[I].ProdutoCNA;
    FDListaPrecos.FieldByName('ProdutoCodigoFornecedor').AsString :=
     ListaPrecos.Resultados.ResultadosItem[I].ProdutoCodigoFornecedor;
    FDListaPrecos.FieldByName('Preco').AsCurrency :=
     StrToCurrDef(ConvertValor(
     ListaPrecos.Resultados.ResultadosItem[I].Preco),0.0000);
    FDListaPrecos.Post;
  end;

  finally
    FDListaPrecos.EnableControls;
    ListaPrecos := nil;
  end;
end;

procedure TForm1.actMontaGridMarcaProdutosExecute(Sender: TObject);
var Marcas : IXMLResultMarcasProdutosType;
  I: Integer;
begin
  // Cria a classe
  StrGMarcas.Visible := true;

  Marcas := LoadresultMarcasProdutos('marcasprodutos.xml');
  try
  Marcas.OwnerDocument.Encoding := 'UTF-8';
  Marcas.OwnerDocument.Active := true;

  FDMarcas.Close;
  FDMarcas.DisableControls;
  FDMarcas.Open;
  for I := 0 to Marcas.Resultados.Count - 1 do
  begin
    FDMarcas.Append;
    FDMarcas.FieldByName('descricao').AsString :=
      RemoveInvalid('C',Marcas.Resultados.ResultadosItem[I].Nome);
    FDMarcas.FieldByName('codigo').AsString :=
     Marcas.Resultados.ResultadosItem[I].Codigo;
    FDMarcas.Post;
  end;

  finally
    FDMarcas.EnableControls;
    Marcas := nil;
  end;
end;

procedure TForm1.actMontaGridProdutosIncrementaisExecute(Sender: TObject);
var ProdutosIncrementais : IXMLResultProdutosType;
  I: Integer;
begin
  if Not FileExists('ProdutosIncrementais.xml') then
    EXIT;

  // Prepara Grid Produtos Incrementais.
  StrGProdutosIncrementais.Visible := true;
  StrGBuscarProdutos.Visible := false;
  StrGMarcas.Visible := false;

  ProdutosIncrementais := LoadresultProdutos('ProdutosIncrementais.xml');
  try
  ProdutosIncrementais.OwnerDocument.Encoding := 'UTF-8';
  ProdutosIncrementais.OwnerDocument.Active := true;

  FDProdIncrementais.Close;
  FDProdIncrementais.DisableControls;
  FDProdIncrementais.Open;
  for I := 0 to ProdutosIncrementais.Resultados.Count - 1 do
  begin
    FDProdIncrementais.Append;
    FDProdIncrementais.FieldByName('ProdutoCodigoRedeAncora').AsInteger :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].ProdutoCodigoRedeAncora;
    FDProdIncrementais.FieldByName('Nome').AsString :=
      RemoveInvalid('C',ProdutosIncrementais.Resultados.ResultadosItem[I].Nome);
    FDProdIncrementais.FieldByName('Descricao').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Descricao);
    FDProdIncrementais.FieldByName('ProdutoCNA').AsInteger :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].ProdutoCNA;
    FDProdIncrementais.FieldByName('Fabricante').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Fabricante);
    FDProdIncrementais.FieldByName('Fornecedor').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Fornecedor);
    //Mudar Para String no DATABIND;
    //FDProdIncrementais.FieldByName('ProdutoCodigoFornecedor').AsInteger :=
    //  ProdutosIncrementais.Resultados.ResultadosItem[I].ProdutoCodigoFornecedor;
    FDProdIncrementais.FieldByName('Marca').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Marca);
    // Converter Para String no DataBIND
    FDProdIncrementais.FieldByName('Preco').AsCurrency :=
      StrToCurrDef(ConvertValor(FloatToStr(
      ProdutosIncrementais.Resultados.ResultadosItem[I].Preco)),0.0000)/100;
    FDProdIncrementais.FieldByName('Familia').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Familia);
    FDProdIncrementais.FieldByName('Linha').AsString :=
      RemoveInvalid('C',
      ProdutosIncrementais.Resultados.ResultadosItem[I].Linha);
    FDProdIncrementais.FieldByName('ProdutoEAN').AsString :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].ProdutoEAN;
    FDProdIncrementais.FieldByName('Peso').AsCurrency :=
      StrToCurrDef(ProdutosIncrementais.Resultados.ResultadosItem[I].Peso,0.0000);
    FDProdIncrementais.FieldByName('NCM').AsString :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].NCM;
    FDProdIncrementais.FieldByName('UnVenda').AsString :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].UnVenda;
    FDProdIncrementais.FieldByName('UnCompra').AsString :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].UnCompra;
    FDProdIncrementais.FieldByName('QuantidadeCompra').AsInteger :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].QuantidadeCompra;
    FDProdIncrementais.FieldByName('QuantidadeVenda').AsInteger :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].QuantidadeVenda;
    FDProdIncrementais.FieldByName('DataAlteracao').AsString :=
      ProdutosIncrementais.Resultados.ResultadosItem[I].DataAlteracao;
    FDProdIncrementais.Post;

    edCNALista.Text :=
      IntToStr(ProdutosIncrementais.Resultados.ResultadosItem[I].ProdutoCNA);
  end;
  finally
    FDProdIncrementais.EnableControls;
    ProdutosIncrementais := nil;
  end;
end;

procedure TForm1.actProdutosIncrementaisExecute(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := false;
  StrGMarcas.Visible := false;
  StrGProdutosIncrementais.Visible := true;

  try
  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification(
    'ProdutosIncrementais', lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := mcriterionProdutosIncrementais(
    'ProdutosIncrementais', edCNALista.Text, SpiBRegistros.Text);
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  if Resposta.Result <> '' then
  begin
    DadosResposta.Lines.Add( Resposta.Result );

    DadosResposta.Text :=
    Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));

    DadosResposta.Lines.SaveToFile('ProdutosIncrementais.xml');

    actMontaGridProdutosIncrementaisExecute(Self);
  end;
  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Ancora: WSRedeAncoraService_Execute;
  Resposta: WSRedeAncoraService_ExecuteResponse;
begin
  try
  actLimpaTelaExecute(Self);

  StrGBuscarProdutos.Visible := false;
  StrGProdutosIncrementais.Visible := false;
  StrGMarcas.Visible := true;

  Application.ProcessMessages;

  Ancora := WSRedeAncoraService_Execute.Create;
  Ancora.Identification := montaidentification('MarcasProdutos',
    lver1.Text+lver2.Text+'.0');
  DadosEnvio.Lines.Add(Ancora.Identification);
  DadosEnvio.Lines.Add('');
  Ancora.Criterion := montacriterion( 'MarcasProdutos','', edMarca.Text,'');
  DadosEnvio.Lines.Add(Ancora.Criterion);

  Resposta := GetWSRedeAncoraServiceSoapPort.Execute(Ancora);

  if Resposta.Erros <> '' then
  begin
    Erros.Lines.Add( 'O servidor Ancora retornou uma mensagem de erro:');
    Erros.Lines.Add( '------------------------------------------------' );
    Erros.Lines.Add( Resposta.Erros );
  end else
  begin
    Erros.Lines.Add('0 Erros');
  end;

  DadosResposta.Lines.Add( Resposta.Result );

  DadosResposta.Text := Remove_Acentos(StrTran(DadosResposta.Text,'  ',' '));

  DadosResposta.Lines.SaveToFile('marcasprodutos.xml');

  actMontaGridMarcaProdutosExecute(Self);

  except
    on e:exception do
    Erros.Lines.Add(
    'Ocorreu um erro ao processar resposta do servidor Ancora: '+e.message);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  GerarToken;
end;

procedure TForm1.edCNPJChange(Sender: TObject);
begin
  actApagaTokenExecute(Self);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  arquivo: textfile;
begin
  pathapp := ExtractFileDir(GetCurrentDir)+'\RedeAncora';
  GeradoToken := false;

  actCarregarTokenExecute(Self);
  { Temporariamente desativado
  actMontaComboLinhasProdutosExecute(Self);
  Application.ProcessMessages;
  actMontaComboFamiliasProdutosExecute(Self);
  Application.ProcessMessages;
  actMontaComboFabricantesProdutosExecute(Self);
   }
  // Temporario
  if FileExists('BuscarProdutos.xml') then
  begin
    actMontaGridBuscarProdutosExecute(Self);
  end;
end;

function TForm1.mcriterionbuscarprodutos(nameservice, EAN,
  cna: string): widestring;
var
  cnastr: TStringList;
  eanstr: TStringList;
  i: integer;
begin
  if cna+ean = '' then
    ShowMessage('Informe ao menos um codigo CNA ou EAN para busca');

  try
  cnaStr := TStringList.Create;
  if cna <> '' then cnaStr := Splitt(cna,',');
  eanStr := TStringList.Create;
  if ean <> '' then eanStr := Splitt(ean,',');
  try
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<CNPJ>'+edCNPJ.Text+'</CNPJ>'+
  '<Itens>';

  for i := 0 to cnaStr.Count -1 do
    result := result +
    '<ItensItem>'+
    '<CNA>'+cnaStr[i]+'</CNA>'+
    '</ItensItem>';

  for i := 0 to eanStr.Count -1 do
    result := result +
    '<ItensItem>'+
    '<EAN>'+eanStr[i]+'</EAN>'+
    '</ItensItem>';

  result := result +
  '</Itens>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
  except
    on e:exception do
      ShowMessage('Ocorreu um erro ao montar a consulta: '+e.Message);
  end;
  finally
    cnaStr := nil;
    eanStr := nil;
  end;
end;

function TForm1.mcriterionCondPgto(nameservice, cna,
  dataultimaconsulta: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>'+
  '<CNPJ>'+edCNPJ.Text+'</CNPJ>'+
  '<DataUltimaConsulta>'+dataultimaconsulta+'</DataUltimaConsulta>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionFabricantesProdutos(nameservice, Nome,
  DataUltimaConsulta: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>'+
  '<Nome>'+nome+'</Nome>'+
  '<DataUltimaConsulta>'+DataUltimaConsulta+'</DataUltimaConsulta>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionFamiliasProdutos(nameservice, codigo,
  nome: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<Codigo>'+codigo+'</Codigo>'+
  '<Nome>'+nome+'</Nome>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionLinhasProdutos(nameservice, nome: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<Nome>'+nome+'</Nome>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionListasPrecos(nameservice, marca,
  cna, familia: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<CNPJ>'+edCNPJ.Text+'</CNPJ>'+
  '<Marca>'+marca+'</Marca>'+
  '<Familia>'+familia+'</Familia>'+
  '<ProdutoCNA>'+edCNA.Text+'</ProdutoCNA>'+
  '<ProdutoCodigoFornecedor>'+edEAN.Text+'</ProdutoCodigoFornecedor>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionprodutos(nameservice, marca, familia, cna,
  codigofornecedor, dataultimaconsulta, alternativos,
  substitutos, linha: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<CNPJ>'+edCNPJ.Text+'</CNPJ>'+
  '<Marca>'+marca+'</Marca>'+
  '<Familia>'+familia+'</Familia>'+
  '<Linha>'+linha+'</Linha>'+
  '<ProdutoCNA>'+cna+'</ProdutoCNA>'+
  '<ProdutoCodigoFornecedor>'+codigofornecedor+'</ProdutoCodigoFornecedor>'+
  '<DataUltimaConsulta>'+dataultimaconsulta+'</DataUltimaConsulta>'+
  '<EnviarProdutosAlternativos>'+alternativos+'</EnviarProdutosAlternativos>'+
  '<EnviarProdutosSubstitutos>'+substitutos+'</EnviarProdutosSubstitutos>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.mcriterionProdutosIncrementais(nameservice, cna,
  registros: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<ProdutoCNA>'+cna+'</ProdutoCNA>'+
  '<Registros>'+registros+'</Registros>'+
  '<CNPJ>'+edCNPJ.Text+'</CNPJ>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.montacriterion(nameservice, codigo, nome,
  aplicacao: string): widestring;
begin
  result :=
  '<criterion'+nameservice+' xmlns="RedeAncoraServices">' +
  '<Filtros>' +
  '<Codigo>'+codigo+'</Codigo>'+
  '<Nome>'+nome+'</Nome>'+
  '<Aplicacao>'+aplicacao+'</Aplicacao>'+
  '</Filtros>'+
  '</criterion'+nameservice+'>';
end;

function TForm1.montacriterionOrdemCompra(itens: widestring): widestring;
begin
  result :=
  '<criterionGerarOrdemCompra xmlns="RedeAncoraServices">'+
  '<Cabecalho>'+
  '<CNPJ>'+edCnpj.Text+'</CNPJ>'+
  '<NumeroOCLojista>1</NumeroOCLojista>'+
  '<CondicaoPagamentoCodigo>1546</CondicaoPagamentoCodigo>'+
  '<Observacao>TESTE SIMULACAO</Observacao>'+
  '<Simulacao>S</Simulacao>'+
  '<DesconsiderarSemEstoque>S</DesconsiderarSemEstoque>'+
  '</Cabecalho>'+
  '<Itens>'+itens+'</Itens>'+
  '</criterionGerarOrdemCompra>';
end;

function TForm1.montaidentification(nameservice, versao: string): widestring;
begin
  result :=
  '<Identification xmlns="RedeAncoraServices">' +
  '<Security>' +
  '<Token>' + ltoken.Text + '</Token>' +
  '</Security>' +
  '<Service>' +
  '<Name>' +nameservice + '</Name>' +
  '<Version>' + versao + '</Version>' +
  '</Service>'+
  '</Identification>';
end;

function TForm1.prepItensOrdCompra: widestring;
begin
   Result :=
   '<Item>'+
   '<Sequencia>1</Sequencia>'+
   '<ProdutoCodigoRedeAncora></ProdutoCodigoRedeAncora>'+
   '<ProdutoCodigoFornecedor></ProdutoCodigoFornecedor>'+
   '<ProdutoCNA>708466</ProdutoCNA>'+
   '<ProdutoEAN>7898429268346</ProdutoEAN>'+
   '<PermiteProdutoSubstituto>S</PermiteProdutoSubstituto>'+
   '<ProdutoDescricao>'+
   'KIT DO AMORTECEDOR SUSPENSAO TRASEIRA (01 LADO  COMPLETO)'+
   '</ProdutoDescricao>'+
   '<Quantidade>10</Quantidade>'+
   '</Item>';
end;

procedure TForm1.StrGBuscarProdutosPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  StrGBuscarProdutos.Columns[0].Width := 50;
  StrGBuscarProdutos.Columns[1].Width := 300;
  StrGBuscarProdutos.Columns[2].Width := 10;
  StrGBuscarProdutos.Columns[3].Width := 50;
  StrGBuscarProdutos.Columns[4].Width := 100;
  StrGBuscarProdutos.Columns[5].Width := 1;
  StrGBuscarProdutos.Columns[6].Width := 40;
  StrGBuscarProdutos.Columns[7].Width := 60;
  StrGBuscarProdutos.Columns[8].Width := 70;
  StrGBuscarProdutos.Columns[9].Width := 60;
  StrGBuscarProdutos.Columns[10].Width := 60;
  StrGBuscarProdutos.Columns[11].Width := 40;
  StrGBuscarProdutos.Columns[12].Width := 50;
  StrGBuscarProdutos.Columns[13].Width := 20;
  StrGBuscarProdutos.Columns[14].Width := 20;
  StrGBuscarProdutos.Columns[2].Width := 50;
end;

procedure TForm1.StrGMarcasPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  StrGMarcas.Columns[0].Width := 40;
  StrGMarcas.Columns[1].Width := 500;
end;

end.
