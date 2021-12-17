
{********************************************************************************************}
{                                                                                            }
{                                      XML Data Binding                                      }
{                                                                                            }
{         Generated on: 16/03/2020 11:11:28                                                  }
{       Generated from: D:\backup\RainhaAutoPecas\RedeAncora\xmlretorno\MarcasProdutos.xml   }
{   Settings stored in: D:\backup\RainhaAutoPecas\RedeAncora\xmlretorno\MarcasProdutos.xdb   }
{                                                                                            }
{********************************************************************************************}

unit MarcasProdutos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultMarcasProdutosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultMarcasProdutosType }

  IXMLResultMarcasProdutosType = interface(IXMLNode)
    ['{48D92267-8597-4E5B-970D-9035AD96D562}']
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
    ['{21009C53-C0F3-471E-A521-CE78AAE8A41D}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{B5099D7E-AA1A-424E-AC05-F775C24C014B}']
    { Property Accessors }
    function Get_Codigo: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_Aplicacao: UnicodeString;
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Aplicacao(Value: UnicodeString);
    { Methods & Properties }
    property Codigo: UnicodeString read Get_Codigo write Set_Codigo;
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property Aplicacao: UnicodeString read Get_Aplicacao write Set_Aplicacao;
  end;

{ Forward Decls }

  TXMLResultMarcasProdutosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultMarcasProdutosType }

  TXMLResultMarcasProdutosType = class(TXMLNode, IXMLResultMarcasProdutosType)
  protected
    { IXMLResultMarcasProdutosType }
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
    function Get_Codigo: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_Aplicacao: UnicodeString;
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Aplicacao(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultMarcasProdutos(Doc: IXMLDocument): IXMLResultMarcasProdutosType;
function LoadresultMarcasProdutos(const FileName: string): IXMLResultMarcasProdutosType;
function NewresultMarcasProdutos: IXMLResultMarcasProdutosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultMarcasProdutos(Doc: IXMLDocument): IXMLResultMarcasProdutosType;
begin
  Result := Doc.GetDocBinding('resultMarcasProdutos', TXMLResultMarcasProdutosType, TargetNamespace) as IXMLResultMarcasProdutosType;
end;

function LoadresultMarcasProdutos(const FileName: string): IXMLResultMarcasProdutosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultMarcasProdutos', TXMLResultMarcasProdutosType, TargetNamespace) as IXMLResultMarcasProdutosType;
end;

function NewresultMarcasProdutos: IXMLResultMarcasProdutosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultMarcasProdutos', TXMLResultMarcasProdutosType, TargetNamespace) as IXMLResultMarcasProdutosType;
end;

{ TXMLResultMarcasProdutosType }

procedure TXMLResultMarcasProdutosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultMarcasProdutosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultMarcasProdutosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultMarcasProdutosType.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_Codigo: UnicodeString;
begin
  Result := ChildNodes['Codigo'].Text;
end;

procedure TXMLResultadosItemType.Set_Codigo(Value: UnicodeString);
begin
  ChildNodes['Codigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Nome: UnicodeString;
begin
  Result := ChildNodes['Nome'].Text;
end;

procedure TXMLResultadosItemType.Set_Nome(Value: UnicodeString);
begin
  ChildNodes['Nome'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Aplicacao: UnicodeString;
begin
  Result := ChildNodes['Aplicacao'].Text;
end;

procedure TXMLResultadosItemType.Set_Aplicacao(Value: UnicodeString);
begin
  ChildNodes['Aplicacao'].NodeValue := Value;
end;

end.