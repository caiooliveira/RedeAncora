{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 18/03/2020 17:50:50                                   }
{       Generated from: D:\tempo\navcom\RedeAncora\ProdutosIncrementais.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\ProdutosIncrementais.xdb   }
{                                                                             }
{*****************************************************************************}

unit ProdutosIncrementais;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultProdutosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultProdutosType }

  IXMLResultProdutosType = interface(IXMLNode)
    ['{5DCA3008-F53C-4479-B074-286D91EAA076}']
    { Property Accessors }
    function Get_Xmlns: UnicodeString;
    function Get_Resultados: IXMLResultadosType;
    procedure Set_Xmlns(Value: UnicodeString);
    { Methods & Properties }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Resultados: IXMLResultadosType read Get_Resultados;
  end;

{ IXMLResultadosType }

  IXMLResultadosType = interface(IXMLNodeCollection)
    ['{E2B3F493-7972-47B6-95A2-6DACC4662BCB}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{681FCAD3-E6BC-4761-B118-419CB984415A}']
    { Property Accessors }
    function Get_ProdutoCodigoRedeAncora: Integer;
    function Get_Nome: UnicodeString;
    function Get_Descricao: UnicodeString;
    function Get_ProdutoCNA: Integer;
    function Get_Fabricante: UnicodeString;
    function Get_Fornecedor: UnicodeString;
    function Get_ProdutoCodigoFornecedor: Integer;
    function Get_Marca: UnicodeString;
    function Get_Preco: Currency;
    function Get_Familia: UnicodeString;
    function Get_Linha: UnicodeString;
    function Get_ProdutoEAN: UnicodeString;
    function Get_Peso: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_UnVenda: UnicodeString;
    function Get_UnCompra: UnicodeString;
    function Get_QuantidadeCompra: Integer;
    function Get_QuantidadeVenda: Integer;
    function Get_DataAlteracao: UnicodeString;
    procedure Set_ProdutoCodigoRedeAncora(Value: Integer);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_ProdutoCNA(Value: Integer);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Fornecedor(Value: UnicodeString);
    procedure Set_ProdutoCodigoFornecedor(Value: Integer);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_Preco(Value: Currency);
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Linha(Value: UnicodeString);
    procedure Set_ProdutoEAN(Value: UnicodeString);
    procedure Set_Peso(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_UnVenda(Value: UnicodeString);
    procedure Set_UnCompra(Value: UnicodeString);
    procedure Set_QuantidadeCompra(Value: Integer);
    procedure Set_QuantidadeVenda(Value: Integer);
    procedure Set_DataAlteracao(Value: UnicodeString);
    { Methods & Properties }
    property ProdutoCodigoRedeAncora: Integer read Get_ProdutoCodigoRedeAncora write Set_ProdutoCodigoRedeAncora;
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
    property ProdutoCNA: Integer read Get_ProdutoCNA write Set_ProdutoCNA;
    property Fabricante: UnicodeString read Get_Fabricante write Set_Fabricante;
    property Fornecedor: UnicodeString read Get_Fornecedor write Set_Fornecedor;
    property ProdutoCodigoFornecedor: Integer read Get_ProdutoCodigoFornecedor write Set_ProdutoCodigoFornecedor;
    property Marca: UnicodeString read Get_Marca write Set_Marca;
    property Preco: Currency read Get_Preco write Set_Preco;
    property Familia: UnicodeString read Get_Familia write Set_Familia;
    property Linha: UnicodeString read Get_Linha write Set_Linha;
    property ProdutoEAN: UnicodeString read Get_ProdutoEAN write Set_ProdutoEAN;
    property Peso: UnicodeString read Get_Peso write Set_Peso;
    property NCM: UnicodeString read Get_NCM write Set_NCM;
    property UnVenda: UnicodeString read Get_UnVenda write Set_UnVenda;
    property UnCompra: UnicodeString read Get_UnCompra write Set_UnCompra;
    property QuantidadeCompra: Integer read Get_QuantidadeCompra write Set_QuantidadeCompra;
    property QuantidadeVenda: Integer read Get_QuantidadeVenda write Set_QuantidadeVenda;
    property DataAlteracao: UnicodeString read Get_DataAlteracao write Set_DataAlteracao;
  end;

{ Forward Decls }

  TXMLResultProdutosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultProdutosType }

  TXMLResultProdutosType = class(TXMLNode, IXMLResultProdutosType)
  protected
    { IXMLResultProdutosType }
    function Get_Xmlns: UnicodeString;
    function Get_Resultados: IXMLResultadosType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultadosType }

  TXMLResultadosType = class(TXMLNodeCollection, IXMLResultadosType)
  protected
    { IXMLResultadosType }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultadosItemType }

  TXMLResultadosItemType = class(TXMLNode, IXMLResultadosItemType)
  protected
    { IXMLResultadosItemType }
    function Get_ProdutoCodigoRedeAncora: Integer;
    function Get_Nome: UnicodeString;
    function Get_Descricao: UnicodeString;
    function Get_ProdutoCNA: Integer;
    function Get_Fabricante: UnicodeString;
    function Get_Fornecedor: UnicodeString;
    function Get_ProdutoCodigoFornecedor: Integer;
    function Get_Marca: UnicodeString;
    function Get_Preco: Currency;
    function Get_Familia: UnicodeString;
    function Get_Linha: UnicodeString;
    function Get_ProdutoEAN: UnicodeString;
    function Get_Peso: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_UnVenda: UnicodeString;
    function Get_UnCompra: UnicodeString;
    function Get_QuantidadeCompra: Integer;
    function Get_QuantidadeVenda: Integer;
    function Get_DataAlteracao: UnicodeString;
    procedure Set_ProdutoCodigoRedeAncora(Value: Integer);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_ProdutoCNA(Value: Integer);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Fornecedor(Value: UnicodeString);
    procedure Set_ProdutoCodigoFornecedor(Value: Integer);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_Preco(Value: Currency);
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Linha(Value: UnicodeString);
    procedure Set_ProdutoEAN(Value: UnicodeString);
    procedure Set_Peso(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_UnVenda(Value: UnicodeString);
    procedure Set_UnCompra(Value: UnicodeString);
    procedure Set_QuantidadeCompra(Value: Integer);
    procedure Set_QuantidadeVenda(Value: Integer);
    procedure Set_DataAlteracao(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultProdutos(Doc: IXMLDocument): IXMLResultProdutosType;
function LoadresultProdutos(const FileName: string): IXMLResultProdutosType;
function NewresultProdutos: IXMLResultProdutosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultProdutos(Doc: IXMLDocument): IXMLResultProdutosType;
begin
  Result := Doc.GetDocBinding('resultProdutos', TXMLResultProdutosType, TargetNamespace) as IXMLResultProdutosType;
end;

function LoadresultProdutos(const FileName: string): IXMLResultProdutosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultProdutos', TXMLResultProdutosType, TargetNamespace) as IXMLResultProdutosType;
end;

function NewresultProdutos: IXMLResultProdutosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultProdutos', TXMLResultProdutosType, TargetNamespace) as IXMLResultProdutosType;
end;

{ TXMLResultProdutosType }

procedure TXMLResultProdutosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultProdutosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultProdutosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultProdutosType.Get_Resultados: IXMLResultadosType;
begin
  Result := ChildNodes['Resultados'] as IXMLResultadosType;
end;

{ TXMLResultadosType }

procedure TXMLResultadosType.AfterConstruction;
begin
  RegisterChildNode('ResultadosItem', TXMLResultadosItemType);
  ItemTag := 'ResultadosItem';
  ItemInterface := IXMLResultadosItemType;
  inherited;
end;

function TXMLResultadosType.Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
begin
  Result := List[Index] as IXMLResultadosItemType;
end;

function TXMLResultadosType.Add: IXMLResultadosItemType;
begin
  Result := AddItem(-1) as IXMLResultadosItemType;
end;

function TXMLResultadosType.Insert(const Index: Integer): IXMLResultadosItemType;
begin
  Result := AddItem(Index) as IXMLResultadosItemType;
end;

{ TXMLResultadosItemType }

function TXMLResultadosItemType.Get_ProdutoCodigoRedeAncora: Integer;
begin
  Result := ChildNodes['ProdutoCodigoRedeAncora'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_ProdutoCodigoRedeAncora(Value: Integer);
begin
  ChildNodes['ProdutoCodigoRedeAncora'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Nome: UnicodeString;
begin
  Result := ChildNodes['Nome'].Text;
end;

procedure TXMLResultadosItemType.Set_Nome(Value: UnicodeString);
begin
  ChildNodes['Nome'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['Descricao'].Text;
end;

procedure TXMLResultadosItemType.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['Descricao'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoCNA: Integer;
begin
  Result := ChildNodes['ProdutoCNA'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_ProdutoCNA(Value: Integer);
begin
  ChildNodes['ProdutoCNA'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Fabricante: UnicodeString;
begin
  Result := ChildNodes['Fabricante'].Text;
end;

procedure TXMLResultadosItemType.Set_Fabricante(Value: UnicodeString);
begin
  ChildNodes['Fabricante'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Fornecedor: UnicodeString;
begin
  Result := ChildNodes['Fornecedor'].Text;
end;

procedure TXMLResultadosItemType.Set_Fornecedor(Value: UnicodeString);
begin
  ChildNodes['Fornecedor'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoCodigoFornecedor: Integer;
begin
  Result := ChildNodes['ProdutoCodigoFornecedor'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_ProdutoCodigoFornecedor(Value: Integer);
begin
  ChildNodes['ProdutoCodigoFornecedor'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Marca: UnicodeString;
begin
  Result := ChildNodes['Marca'].Text;
end;

procedure TXMLResultadosItemType.Set_Marca(Value: UnicodeString);
begin
  ChildNodes['Marca'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Preco: Currency;
begin
  Result := ChildNodes['Preco'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_Preco(Value: Currency);
begin
  ChildNodes['Preco'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Familia: UnicodeString;
begin
  Result := ChildNodes['Familia'].Text;
end;

procedure TXMLResultadosItemType.Set_Familia(Value: UnicodeString);
begin
  ChildNodes['Familia'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Linha: UnicodeString;
begin
  Result := ChildNodes['Linha'].Text;
end;

procedure TXMLResultadosItemType.Set_Linha(Value: UnicodeString);
begin
  ChildNodes['Linha'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoEAN: UnicodeString;
begin
  Result := ChildNodes['ProdutoEAN'].Text;
end;

procedure TXMLResultadosItemType.Set_ProdutoEAN(Value: UnicodeString);
begin
  ChildNodes['ProdutoEAN'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Peso: UnicodeString;
begin
  Result := ChildNodes['Peso'].Text;
end;

procedure TXMLResultadosItemType.Set_Peso(Value: UnicodeString);
begin
  ChildNodes['Peso'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_NCM: UnicodeString;
begin
  Result := ChildNodes['NCM'].Text;
end;

procedure TXMLResultadosItemType.Set_NCM(Value: UnicodeString);
begin
  ChildNodes['NCM'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_UnVenda: UnicodeString;
begin
  Result := ChildNodes['UnVenda'].Text;
end;

procedure TXMLResultadosItemType.Set_UnVenda(Value: UnicodeString);
begin
  ChildNodes['UnVenda'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_UnCompra: UnicodeString;
begin
  Result := ChildNodes['UnCompra'].Text;
end;

procedure TXMLResultadosItemType.Set_UnCompra(Value: UnicodeString);
begin
  ChildNodes['UnCompra'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_QuantidadeCompra: Integer;
begin
  Result := ChildNodes['QuantidadeCompra'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_QuantidadeCompra(Value: Integer);
begin
  ChildNodes['QuantidadeCompra'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_QuantidadeVenda: Integer;
begin
  Result := ChildNodes['QuantidadeVenda'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_QuantidadeVenda(Value: Integer);
begin
  ChildNodes['QuantidadeVenda'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_DataAlteracao: UnicodeString;
begin
  Result := ChildNodes['DataAlteracao'].Text;
end;

procedure TXMLResultadosItemType.Set_DataAlteracao(Value: UnicodeString);
begin
  ChildNodes['DataAlteracao'].NodeValue := Value;
end;

end.