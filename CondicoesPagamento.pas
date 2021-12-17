{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 28/09/2021 15:13:04                                 }
{       Generated from: D:\tempo\navcom\RedeAncora\CondicoesPagamento.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\CondicoesPagamento.xdb   }
{                                                                           }
{***************************************************************************}

unit CondicoesPagamento;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLResultCondicoesPagamentosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultCondicoesPagamentosType }

  IXMLResultCondicoesPagamentosType = interface(IXMLNode)
    ['{AECB69C3-6F01-4486-8334-9566AA858A37}']
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
    ['{3E5C5709-3220-4780-B403-8E139E5DDCD8}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{566F26F5-BD89-4E13-9088-B880F73C7F94}']
    { Property Accessors }
    function Get_Codigo: Integer;
    function Get_Descricao: UnicodeString;
    function Get_FabricanteCodigo: Integer;
    function Get_FamiliaCodigo: UnicodeString;
    function Get_MarcaCodigo: Integer;
    function Get_ProdutoCodigo: Integer;
    procedure Set_Codigo(Value: Integer);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_FabricanteCodigo(Value: Integer);
    procedure Set_FamiliaCodigo(Value: UnicodeString);
    procedure Set_MarcaCodigo(Value: Integer);
    procedure Set_ProdutoCodigo(Value: Integer);
    { Methods & Properties }
    property Codigo: Integer read Get_Codigo write Set_Codigo;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
    property FabricanteCodigo: Integer read Get_FabricanteCodigo write Set_FabricanteCodigo;
    property FamiliaCodigo: UnicodeString read Get_FamiliaCodigo write Set_FamiliaCodigo;
    property MarcaCodigo: Integer read Get_MarcaCodigo write Set_MarcaCodigo;
    property ProdutoCodigo: Integer read Get_ProdutoCodigo write Set_ProdutoCodigo;
  end;

{ Forward Decls }

  TXMLResultCondicoesPagamentosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultCondicoesPagamentosType }

  TXMLResultCondicoesPagamentosType = class(TXMLNode, IXMLResultCondicoesPagamentosType)
  protected
    { IXMLResultCondicoesPagamentosType }
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
    function Get_Codigo: Integer;
    function Get_Descricao: UnicodeString;
    function Get_FabricanteCodigo: Integer;
    function Get_FamiliaCodigo: UnicodeString;
    function Get_MarcaCodigo: Integer;
    function Get_ProdutoCodigo: Integer;
    procedure Set_Codigo(Value: Integer);
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_FabricanteCodigo(Value: Integer);
    procedure Set_FamiliaCodigo(Value: UnicodeString);
    procedure Set_MarcaCodigo(Value: Integer);
    procedure Set_ProdutoCodigo(Value: Integer);
  end;

{ Global Functions }

function GetresultCondicoesPagamentos(Doc: IXMLDocument): IXMLResultCondicoesPagamentosType;
function LoadresultCondicoesPagamentos(const FileName: string): IXMLResultCondicoesPagamentosType;
function NewresultCondicoesPagamentos: IXMLResultCondicoesPagamentosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetresultCondicoesPagamentos(Doc: IXMLDocument): IXMLResultCondicoesPagamentosType;
begin
  Result := Doc.GetDocBinding('resultCondicoesPagamentos', TXMLResultCondicoesPagamentosType, TargetNamespace) as IXMLResultCondicoesPagamentosType;
end;

function LoadresultCondicoesPagamentos(const FileName: string): IXMLResultCondicoesPagamentosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultCondicoesPagamentos', TXMLResultCondicoesPagamentosType, TargetNamespace) as IXMLResultCondicoesPagamentosType;
end;

function NewresultCondicoesPagamentos: IXMLResultCondicoesPagamentosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultCondicoesPagamentos', TXMLResultCondicoesPagamentosType, TargetNamespace) as IXMLResultCondicoesPagamentosType;
end;

{ TXMLResultCondicoesPagamentosType }

procedure TXMLResultCondicoesPagamentosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultCondicoesPagamentosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultCondicoesPagamentosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultCondicoesPagamentosType.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_Codigo: Integer;
begin
  Result := ChildNodes['Codigo'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_Codigo(Value: Integer);
begin
  ChildNodes['Codigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['Descricao'].Text;
end;

procedure TXMLResultadosItemType.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['Descricao'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_FabricanteCodigo: Integer;
begin
  Result := ChildNodes['FabricanteCodigo'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_FabricanteCodigo(Value: Integer);
begin
  ChildNodes['FabricanteCodigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_FamiliaCodigo: UnicodeString;
begin
  Result := ChildNodes['FamiliaCodigo'].Text;
end;

procedure TXMLResultadosItemType.Set_FamiliaCodigo(Value: UnicodeString);
begin
  ChildNodes['FamiliaCodigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_MarcaCodigo: Integer;
begin
  Result := ChildNodes['MarcaCodigo'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_MarcaCodigo(Value: Integer);
begin
  ChildNodes['MarcaCodigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_ProdutoCodigo: Integer;
begin
  Result := ChildNodes['ProdutoCodigo'].NodeValue;
end;

procedure TXMLResultadosItemType.Set_ProdutoCodigo(Value: Integer);
begin
  ChildNodes['ProdutoCodigo'].NodeValue := Value;
end;

end.