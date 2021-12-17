{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 18/03/2020 15:23:35                               }
{       Generated from: D:\tempo\navcom\RedeAncora\FamiliasProdutos.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\FamiliasProdutos.xdb   }
{                                                                         }
{*************************************************************************}

unit FamiliasProdutos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultFamiliasProdutosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultFamiliasProdutosType }

  IXMLResultFamiliasProdutosType = interface(IXMLNode)
    ['{E7AEE86A-8481-4C42-9E6E-A031671FAA16}']
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
    ['{F52CBE01-98F0-4BA5-BC4A-98035A114491}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{3E68813B-8F1D-4F96-A072-177D9B47941B}']
    { Property Accessors }
    function Get_Familia: UnicodeString;
    function Get_Codigo: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_UltimoNivel: UnicodeString;
    function Get_FamiliaSuperiorCodigo: UnicodeString;
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_UltimoNivel(Value: UnicodeString);
    procedure Set_FamiliaSuperiorCodigo(Value: UnicodeString);
    { Methods & Properties }
    property Familia: UnicodeString read Get_Familia write Set_Familia;
    property Codigo: UnicodeString read Get_Codigo write Set_Codigo;
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property UltimoNivel: UnicodeString read Get_UltimoNivel write Set_UltimoNivel;
    property FamiliaSuperiorCodigo: UnicodeString read Get_FamiliaSuperiorCodigo write Set_FamiliaSuperiorCodigo;
  end;

{ Forward Decls }

  TXMLResultFamiliasProdutosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultFamiliasProdutosType }

  TXMLResultFamiliasProdutosType = class(TXMLNode, IXMLResultFamiliasProdutosType)
  protected
    { IXMLResultFamiliasProdutosType }
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
    function Get_Familia: UnicodeString;
    function Get_Codigo: UnicodeString;
    function Get_Nome: UnicodeString;
    function Get_UltimoNivel: UnicodeString;
    function Get_FamiliaSuperiorCodigo: UnicodeString;
    procedure Set_Familia(Value: UnicodeString);
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_UltimoNivel(Value: UnicodeString);
    procedure Set_FamiliaSuperiorCodigo(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultFamiliasProdutos(Doc: IXMLDocument): IXMLResultFamiliasProdutosType;
function LoadresultFamiliasProdutos(const FileName: string): IXMLResultFamiliasProdutosType;
function NewresultFamiliasProdutos: IXMLResultFamiliasProdutosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultFamiliasProdutos(Doc: IXMLDocument): IXMLResultFamiliasProdutosType;
begin
  Result := Doc.GetDocBinding('resultFamiliasProdutos', TXMLResultFamiliasProdutosType, TargetNamespace) as IXMLResultFamiliasProdutosType;
end;

function LoadresultFamiliasProdutos(const FileName: string): IXMLResultFamiliasProdutosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultFamiliasProdutos', TXMLResultFamiliasProdutosType, TargetNamespace) as IXMLResultFamiliasProdutosType;
end;

function NewresultFamiliasProdutos: IXMLResultFamiliasProdutosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultFamiliasProdutos', TXMLResultFamiliasProdutosType, TargetNamespace) as IXMLResultFamiliasProdutosType;
end;

{ TXMLResultFamiliasProdutosType }

procedure TXMLResultFamiliasProdutosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultFamiliasProdutosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultFamiliasProdutosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultFamiliasProdutosType.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_Familia: UnicodeString;
begin
  Result := ChildNodes['Familia'].Text;
end;

procedure TXMLResultadosItemType.Set_Familia(Value: UnicodeString);
begin
  ChildNodes['Familia'].NodeValue := Value;
end;

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

function TXMLResultadosItemType.Get_UltimoNivel: UnicodeString;
begin
  Result := ChildNodes['UltimoNivel'].Text;
end;

procedure TXMLResultadosItemType.Set_UltimoNivel(Value: UnicodeString);
begin
  ChildNodes['UltimoNivel'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_FamiliaSuperiorCodigo: UnicodeString;
begin
  Result := ChildNodes['FamiliaSuperiorCodigo'].Text;
end;

procedure TXMLResultadosItemType.Set_FamiliaSuperiorCodigo(Value: UnicodeString);
begin
  ChildNodes['FamiliaSuperiorCodigo'].NodeValue := Value;
end;

end.