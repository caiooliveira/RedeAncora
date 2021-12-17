{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 17/03/2020 15:24:03                             }
{       Generated from: D:\tempo\navcom\RedeAncora\buscarprodutos.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\buscarprodutos.xdb   }
{                                                                       }
{***********************************************************************}

unit buscarprodutos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultBuscarProdutosType = interface;
  IXMLBPResultadosType = interface;
  IXMLBPResultadosItemType = interface;

{ IXMLResultBuscarProdutosType }

  IXMLResultBuscarProdutosType = interface(IXMLNode)
    ['{5A3EA2F4-69B5-4F8A-9ED2-9113A21987F5}']
    { Property Accessors }
    function Get_Xmlns: UnicodeString;
    function Get_Resultados: IXMLBPResultadosType;
    procedure Set_Xmlns(Value: UnicodeString);
    { Methods & Properties }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Resultados: IXMLBPResultadosType read Get_Resultados;
  end;

{ IXMLBPResultadosType }

  IXMLBPResultadosType = interface(IXMLNode)
    ['{A43FF301-0AB3-4E05-86FF-C8730A2461C6}']
    { Property Accessors }
    function Get_ResultadosItem: IXMLBPResultadosItemType;
    { Methods & Properties }
    property ResultadosItem: IXMLBPResultadosItemType read Get_ResultadosItem;
  end;

{ IXMLBPResultadosItemType }

  IXMLBPResultadosItemType = interface(IXMLNode)
    ['{C7DD2DF1-B6D2-4652-A55F-6DB4511C59B0}']
    { Property Accessors }
    function Get_CodigoRedeAncora: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_Descricao: UnicodeString;
    function Get_CNA: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_Fornecedor: UnicodeString;
    function Get_CodigoFornecedor: UnicodeString;
    function Get_Marca: UnicodeString;
    function Get_Preco: Unicodestring;
    function Get_Familia: UnicodeString;
    function Get_Linha: UnicodeString;
    function Get_EAN: UnicodeString;
    function Get_Peso: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_UnVenda: UnicodeString;
    function Get_UnCompra: UnicodeString;
    function Get_Estoque: UnicodeString;
    procedure Set_CodigoRedeAncora(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_CNA(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Fornecedor(Value: UnicodeString);
    procedure Set_CodigoFornecedor(Value: UnicodeString);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_Preco(Value: Unicodestring);
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Linha(Value: UnicodeString);
    procedure Set_EAN(Value: UnicodeString);
    procedure Set_Peso(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_UnVenda(Value: UnicodeString);
    procedure Set_UnCompra(Value: UnicodeString);
    procedure Set_Estoque(Value: UnicodeString);
    { Methods & Properties }
    property CodigoRedeAncora: UnicodeString read Get_CodigoRedeAncora write Set_CodigoRedeAncora;
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
    property CNA: UnicodeString read Get_CNA write Set_CNA;
    property Fabricante: UnicodeString read Get_Fabricante write Set_Fabricante;
    property Fornecedor: UnicodeString read Get_Fornecedor write Set_Fornecedor;
    property CodigoFornecedor: UnicodeString read Get_CodigoFornecedor write Set_CodigoFornecedor;
    property Marca: UnicodeString read Get_Marca write Set_Marca;
    property Preco: Unicodestring read Get_Preco write Set_Preco;
    property Familia: UnicodeString read Get_Familia write Set_Familia;
    property Linha: UnicodeString read Get_Linha write Set_Linha;
    property EAN: UnicodeString read Get_EAN write Set_EAN;
    property Peso: UnicodeString read Get_Peso write Set_Peso;
    property NCM: UnicodeString read Get_NCM write Set_NCM;
    property UnVenda: UnicodeString read Get_UnVenda write Set_UnVenda;
    property UnCompra: UnicodeString read Get_UnCompra write Set_UnCompra;
    property Estoque: UnicodeString read Get_Estoque write Set_Estoque;
  end;

{ Forward Decls }

  TXMLResultBuscarProdutosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultBuscarProdutosType }

  TXMLResultBuscarProdutosType = class(TXMLNode, IXMLResultBuscarProdutosType)
  protected
    { IXMLResultBuscarProdutosType }
    function Get_Xmlns: UnicodeString;
    function Get_Resultados: IXMLBPResultadosType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultadosType }

  TXMLResultadosType = class(TXMLNode, IXMLBPResultadosType)
  protected
    { IXMLBPResultadosType }
    function Get_ResultadosItem: IXMLBPResultadosItemType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultadosItemType }

  TXMLResultadosItemType = class(TXMLNode, IXMLBPResultadosItemType)
  protected
    { IXMLBPResultadosItemType }
    function Get_CodigoRedeAncora: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_Descricao: UnicodeString;
    function Get_CNA: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_Fornecedor: UnicodeString;
    function Get_CodigoFornecedor: UnicodeString;
    function Get_Marca: UnicodeString;
    function Get_Preco: Unicodestring;
    function Get_Familia: UnicodeString;
    function Get_Linha: UnicodeString;
    function Get_EAN: UnicodeString;
    function Get_Peso: UnicodeString;
    function Get_NCM: UnicodeString;
    function Get_UnVenda: UnicodeString;
    function Get_UnCompra: UnicodeString;
    function Get_Estoque: UnicodeString;
    procedure Set_CodigoRedeAncora(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_CNA(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Fornecedor(Value: UnicodeString);
    procedure Set_CodigoFornecedor(Value: UnicodeString);
    procedure Set_Marca(Value: UnicodeString);
    procedure Set_Preco(Value: Unicodestring);
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Linha(Value: UnicodeString);
    procedure Set_EAN(Value: UnicodeString);
    procedure Set_Peso(Value: UnicodeString);
    procedure Set_NCM(Value: UnicodeString);
    procedure Set_UnVenda(Value: UnicodeString);
    procedure Set_UnCompra(Value: UnicodeString);
    procedure Set_Estoque(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultBuscarProdutos(Doc: IXMLDocument): IXMLResultBuscarProdutosType;
function LoadresultBuscarProdutos(const FileName: string): IXMLResultBuscarProdutosType;
function NewresultBuscarProdutos: IXMLResultBuscarProdutosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultBuscarProdutos(Doc: IXMLDocument): IXMLResultBuscarProdutosType;
begin
  Result := Doc.GetDocBinding('resultBuscarProdutos', TXMLResultBuscarProdutosType, TargetNamespace) as IXMLResultBuscarProdutosType;
end;

function LoadresultBuscarProdutos(const FileName: string): IXMLResultBuscarProdutosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultBuscarProdutos', TXMLResultBuscarProdutosType, TargetNamespace) as IXMLResultBuscarProdutosType;
end;

function NewresultBuscarProdutos: IXMLResultBuscarProdutosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultBuscarProdutos', TXMLResultBuscarProdutosType, TargetNamespace) as IXMLResultBuscarProdutosType;
end;

{ TXMLResultBuscarProdutosType }

procedure TXMLResultBuscarProdutosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultBuscarProdutosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultBuscarProdutosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultBuscarProdutosType.Get_Resultados: IXMLBPResultadosType;
begin
  Result := ChildNodes['Resultados'] as IXMLBPResultadosType;
end;

{ TXMLResultadosType }

procedure TXMLResultadosType.AfterConstruction;
begin
  RegisterChildNode('ResultadosItem', TXMLResultadosItemType);
  inherited;
end;

function TXMLResultadosType.Get_ResultadosItem: IXMLBPResultadosItemType;
begin
  Result := ChildNodes['ResultadosItem'] as IXMLBPResultadosItemType;
end;

{ TXMLResultadosItemType }

function TXMLResultadosItemType.Get_CodigoRedeAncora: UnicodeString;
begin
  Result := ChildNodes['CodigoRedeAncora'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_CodigoRedeAncora(Value: UnicodeString);
begin
  ChildNodes['CodigoRedeAncora'].NodeValue := Value;
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

function TXMLResultadosItemType.Get_CNA: UnicodeString;
begin
  Result := ChildNodes['CNA'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_CNA(Value: UnicodeString);
begin
  ChildNodes['CNA'].NodeValue := Value;
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
  try
  Result := ChildNodes['Fornecedor'].Text;
  except
    Result := '';
  end;
end;

procedure TXMLResultadosItemType.Set_Fornecedor(Value: UnicodeString);
begin
  try
  ChildNodes['Fornecedor'].NodeValue := Value;
  except
    ChildNodes['Fornecedor'].NodeValue := '';
  end;
end;

function TXMLResultadosItemType.Get_CodigoFornecedor: UnicodeString;
begin
  Result := ChildNodes['CodigoFornecedor'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_CodigoFornecedor(Value: UnicodeString);
begin
  ChildNodes['CodigoFornecedor'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Marca: UnicodeString;
begin
  Result := ChildNodes['Marca'].Text;
end;

procedure TXMLResultadosItemType.Set_Marca(Value: UnicodeString);
begin
  ChildNodes['Marca'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Preco: Unicodestring;
begin
  Result := ChildNodes['Preco'].Text;
end;

procedure TXMLResultadosItemType.Set_Preco(Value: Unicodestring);
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

function TXMLResultadosItemType.Get_EAN: UnicodeString;
begin
  Result := ChildNodes['EAN'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_EAN(Value: UnicodeString);
begin
  ChildNodes['EAN'].NodeValue := Value;
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

function TXMLResultadosItemType.Get_Estoque: UnicodeString;
begin
  Result := ChildNodes['Estoque'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_Estoque(Value: UnicodeString);
begin
  ChildNodes['Estoque'].NodeValue := Value;
end;

end.