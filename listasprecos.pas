{*********************************************************************}
{                                                                     }
{                          XML Data Binding                           }
{                                                                     }
{         Generated on: 18/03/2020 18:41:07                           }
{       Generated from: D:\tempo\navcom\RedeAncora\listasprecos.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\listasprecos.xdb   }
{                                                                     }
{*********************************************************************}

unit listasprecos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultListaPrecosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultListaPrecosType }

  IXMLResultListaPrecosType = interface(IXMLNode)
    ['{C955A25F-C295-4FE0-96F4-912CD9D4D91D}']
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
    ['{BA7A5776-2FD5-4492-ABFF-8C475D063937}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{83E14456-6ABF-4E96-BB79-FD52964427B0}']
    { Property Accessors }
    function Get_ProdutoCodigoRedeAncora: UnicodeString;
    function Get_ProdutoCNA: UnicodeString;
    function Get_ProdutoCodigoFornecedor: UnicodeString;
    function Get_Preco: UnicodeString;
    procedure Set_ProdutoCodigoRedeAncora(Value: UnicodeString);
    procedure Set_ProdutoCNA(Value: UnicodeString);
    procedure Set_ProdutoCodigoFornecedor(Value: UnicodeString);
    procedure Set_Preco(Value: UnicodeString);
    { Methods & Properties }
    property ProdutoCodigoRedeAncora: UnicodeString read Get_ProdutoCodigoRedeAncora write Set_ProdutoCodigoRedeAncora;
    property ProdutoCNA: UnicodeString read Get_ProdutoCNA write Set_ProdutoCNA;
    property ProdutoCodigoFornecedor: UnicodeString read Get_ProdutoCodigoFornecedor write Set_ProdutoCodigoFornecedor;
    property Preco: UnicodeString read Get_Preco write Set_Preco;
  end;

{ Forward Decls }

  TXMLResultListaPrecosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultListaPrecosType }

  TXMLResultListaPrecosType = class(TXMLNode, IXMLResultListaPrecosType)
  protected
    { IXMLResultListaPrecosType }
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
    function Get_ProdutoCodigoRedeAncora: UnicodeString;
    function Get_ProdutoCNA: UnicodeString;
    function Get_ProdutoCodigoFornecedor: UnicodeString;
    function Get_Preco: UnicodeString;
    procedure Set_ProdutoCodigoRedeAncora(Value: UnicodeString);
    procedure Set_ProdutoCNA(Value: UnicodeString);
    procedure Set_ProdutoCodigoFornecedor(Value: UnicodeString);
    procedure Set_Preco(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultListaPrecos(Doc: IXMLDocument): IXMLResultListaPrecosType;
function LoadresultListaPrecos(const FileName: string): IXMLResultListaPrecosType;
function NewresultListaPrecos: IXMLResultListaPrecosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultListaPrecos(Doc: IXMLDocument): IXMLResultListaPrecosType;
begin
  Result := Doc.GetDocBinding('resultListaPrecos', TXMLResultListaPrecosType, TargetNamespace) as IXMLResultListaPrecosType;
end;

function LoadresultListaPrecos(const FileName: string): IXMLResultListaPrecosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultListaPrecos', TXMLResultListaPrecosType, TargetNamespace) as IXMLResultListaPrecosType;
end;

function NewresultListaPrecos: IXMLResultListaPrecosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultListaPrecos', TXMLResultListaPrecosType, TargetNamespace) as IXMLResultListaPrecosType;
end;

{ TXMLResultListaPrecosType }

procedure TXMLResultListaPrecosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultListaPrecosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultListaPrecosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultListaPrecosType.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_ProdutoCodigoRedeAncora: UnicodeString;
begin
  Result := ChildNodes['ProdutoCodigoRedeAncora'].Text;
end;

procedure TXMLResultadosItemType.Set_ProdutoCodigoRedeAncora(Value: UnicodeString);
begin
  ChildNodes['ProdutoCodigoRedeAncora'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoCNA: UnicodeString;
begin
  Result := ChildNodes['ProdutoCNA'].Text;
end;

procedure TXMLResultadosItemType.Set_ProdutoCNA(Value: UnicodeString);
begin
  ChildNodes['ProdutoCNA'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoCodigoFornecedor: UnicodeString;
begin
  Result := ChildNodes['ProdutoCodigoFornecedor'].Text;
end;

procedure TXMLResultadosItemType.Set_ProdutoCodigoFornecedor(Value: UnicodeString);
begin
  ChildNodes['ProdutoCodigoFornecedor'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Preco: UnicodeString;
begin
  Result := ChildNodes['Preco'].Text;
end;

procedure TXMLResultadosItemType.Set_Preco(Value: UnicodeString);
begin
  ChildNodes['Preco'].NodeValue := Value;
end;

end.