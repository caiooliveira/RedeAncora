{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 18/03/2020 15:50:25                                  }
{       Generated from: D:\tempo\navcom\RedeAncora\FabricantesProdutos.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\FabricantesProdutos.xdb   }
{                                                                            }
{****************************************************************************}

unit FabricantesProdutos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultFabricantesProdutosType = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultFabricantesProdutosType }

  IXMLResultFabricantesProdutosType = interface(IXMLNode)
    ['{1EF47D90-6401-4D3B-87D1-28C3F7271D02}']
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
    ['{AF171A6F-794B-4A10-A6DE-895C238C54DE}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{B6DB56B3-FFB5-45BD-B64F-B5DEDE684C02}']
    { Property Accessors }
    function Get_Nome: UnicodeString;
    function Get_Codigo: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_Bairro: UnicodeString;
    function Get_CaixaPostal: UnicodeString;
    function Get_Complemento: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_CGCCPF: UnicodeString;
    function Get_InscricaoEstadual: UnicodeString;
    function Get_IsentoInscricaoEstadual: UnicodeString;
    function Get_Inativo: UnicodeString;
    function Get_InscricaoSubstituto: UnicodeString;
    function Get_IsentoInscricaoEstadualSubstituto: UnicodeString;
    function Get_Cooperativa: UnicodeString;
    function Get_PublicaFederal: UnicodeString;
    function Get_OrgaoPublico: UnicodeString;
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Logradouro(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_Bairro(Value: UnicodeString);
    procedure Set_CaixaPostal(Value: UnicodeString);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_CGCCPF(Value: UnicodeString);
    procedure Set_InscricaoEstadual(Value: UnicodeString);
    procedure Set_IsentoInscricaoEstadual(Value: UnicodeString);
    procedure Set_Inativo(Value: UnicodeString);
    procedure Set_InscricaoSubstituto(Value: UnicodeString);
    procedure Set_IsentoInscricaoEstadualSubstituto(Value: UnicodeString);
    procedure Set_Cooperativa(Value: UnicodeString);
    procedure Set_PublicaFederal(Value: UnicodeString);
    procedure Set_OrgaoPublico(Value: UnicodeString);
    { Methods & Properties }
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property Codigo: UnicodeString read Get_Codigo write Set_Codigo;
    property Logradouro: UnicodeString read Get_Logradouro write Set_Logradouro;
    property CEP: UnicodeString read Get_CEP write Set_CEP;
    property Bairro: UnicodeString read Get_Bairro write Set_Bairro;
    property CaixaPostal: UnicodeString read Get_CaixaPostal write Set_CaixaPostal;
    property Complemento: UnicodeString read Get_Complemento write Set_Complemento;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Municipio: UnicodeString read Get_Municipio write Set_Municipio;
    property CGCCPF: UnicodeString read Get_CGCCPF write Set_CGCCPF;
    property InscricaoEstadual: UnicodeString read Get_InscricaoEstadual write Set_InscricaoEstadual;
    property IsentoInscricaoEstadual: UnicodeString read Get_IsentoInscricaoEstadual write Set_IsentoInscricaoEstadual;
    property Inativo: UnicodeString read Get_Inativo write Set_Inativo;
    property InscricaoSubstituto: UnicodeString read Get_InscricaoSubstituto write Set_InscricaoSubstituto;
    property IsentoInscricaoEstadualSubstituto: UnicodeString read Get_IsentoInscricaoEstadualSubstituto write Set_IsentoInscricaoEstadualSubstituto;
    property Cooperativa: UnicodeString read Get_Cooperativa write Set_Cooperativa;
    property PublicaFederal: UnicodeString read Get_PublicaFederal write Set_PublicaFederal;
    property OrgaoPublico: UnicodeString read Get_OrgaoPublico write Set_OrgaoPublico;
  end;

{ Forward Decls }

  TXMLResultFabricantesProdutosType = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultFabricantesProdutosType }

  TXMLResultFabricantesProdutosType = class(TXMLNode, IXMLResultFabricantesProdutosType)
  protected
    { IXMLResultFabricantesProdutosType }
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
    function Get_Nome: UnicodeString;
    function Get_Codigo: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_CEP: UnicodeString;
    function Get_Bairro: UnicodeString;
    function Get_CaixaPostal: UnicodeString;
    function Get_Complemento: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_CGCCPF: UnicodeString;
    function Get_InscricaoEstadual: UnicodeString;
    function Get_IsentoInscricaoEstadual: UnicodeString;
    function Get_Inativo: UnicodeString;
    function Get_InscricaoSubstituto: UnicodeString;
    function Get_IsentoInscricaoEstadualSubstituto: UnicodeString;
    function Get_Cooperativa: UnicodeString;
    function Get_PublicaFederal: UnicodeString;
    function Get_OrgaoPublico: UnicodeString;
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_Logradouro(Value: UnicodeString);
    procedure Set_CEP(Value: UnicodeString);
    procedure Set_Bairro(Value: UnicodeString);
    procedure Set_CaixaPostal(Value: UnicodeString);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_CGCCPF(Value: UnicodeString);
    procedure Set_InscricaoEstadual(Value: UnicodeString);
    procedure Set_IsentoInscricaoEstadual(Value: UnicodeString);
    procedure Set_Inativo(Value: UnicodeString);
    procedure Set_InscricaoSubstituto(Value: UnicodeString);
    procedure Set_IsentoInscricaoEstadualSubstituto(Value: UnicodeString);
    procedure Set_Cooperativa(Value: UnicodeString);
    procedure Set_PublicaFederal(Value: UnicodeString);
    procedure Set_OrgaoPublico(Value: UnicodeString);
  end;

{ Global Functions }

function GetresultFabricantesProdutos(Doc: IXMLDocument): IXMLResultFabricantesProdutosType;
function LoadresultFabricantesProdutos(const FileName: string): IXMLResultFabricantesProdutosType;
function NewresultFabricantesProdutos: IXMLResultFabricantesProdutosType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultFabricantesProdutos(Doc: IXMLDocument): IXMLResultFabricantesProdutosType;
begin
  Result := Doc.GetDocBinding('resultFabricantesProdutos', TXMLResultFabricantesProdutosType, TargetNamespace) as IXMLResultFabricantesProdutosType;
end;

function LoadresultFabricantesProdutos(const FileName: string): IXMLResultFabricantesProdutosType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultFabricantesProdutos', TXMLResultFabricantesProdutosType, TargetNamespace) as IXMLResultFabricantesProdutosType;
end;

function NewresultFabricantesProdutos: IXMLResultFabricantesProdutosType;
begin
  Result := NewXMLDocument.GetDocBinding('resultFabricantesProdutos', TXMLResultFabricantesProdutosType, TargetNamespace) as IXMLResultFabricantesProdutosType;
end;

{ TXMLResultFabricantesProdutosType }

procedure TXMLResultFabricantesProdutosType.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultFabricantesProdutosType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultFabricantesProdutosType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultFabricantesProdutosType.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_Nome: UnicodeString;
begin
  Result := ChildNodes['Nome'].Text;
end;

procedure TXMLResultadosItemType.Set_Nome(Value: UnicodeString);
begin
  ChildNodes['Nome'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Codigo: UnicodeString;
begin
  Result := ChildNodes['Codigo'].Text;
end;

procedure TXMLResultadosItemType.Set_Codigo(Value: UnicodeString);
begin
  ChildNodes['Codigo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Logradouro: UnicodeString;
begin
  Result := ChildNodes['Logradouro'].Text;
end;

procedure TXMLResultadosItemType.Set_Logradouro(Value: UnicodeString);
begin
  ChildNodes['Logradouro'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_CEP: UnicodeString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLResultadosItemType.Set_CEP(Value: UnicodeString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Bairro: UnicodeString;
begin
  Result := ChildNodes['Bairro'].Text;
end;

procedure TXMLResultadosItemType.Set_Bairro(Value: UnicodeString);
begin
  ChildNodes['Bairro'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_CaixaPostal: UnicodeString;
begin
  Result := ChildNodes['CaixaPostal'].Text;
end;

procedure TXMLResultadosItemType.Set_CaixaPostal(Value: UnicodeString);
begin
  ChildNodes['CaixaPostal'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Complemento: UnicodeString;
begin
  Result := ChildNodes['Complemento'].Text;
end;

procedure TXMLResultadosItemType.Set_Complemento(Value: UnicodeString);
begin
  ChildNodes['Complemento'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Pais: UnicodeString;
begin
  Result := ChildNodes['Pais'].Text;
end;

procedure TXMLResultadosItemType.Set_Pais(Value: UnicodeString);
begin
  ChildNodes['Pais'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Estado: UnicodeString;
begin
  Result := ChildNodes['Estado'].Text;
end;

procedure TXMLResultadosItemType.Set_Estado(Value: UnicodeString);
begin
  ChildNodes['Estado'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Municipio: UnicodeString;
begin
  Result := ChildNodes['Municipio'].Text;
end;

procedure TXMLResultadosItemType.Set_Municipio(Value: UnicodeString);
begin
  ChildNodes['Municipio'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_CGCCPF: UnicodeString;
begin
  Result := ChildNodes['CGCCPF'].Text;
end;

procedure TXMLResultadosItemType.Set_CGCCPF(Value: UnicodeString);
begin
  ChildNodes['CGCCPF'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_InscricaoEstadual: UnicodeString;
begin
  Result := ChildNodes['InscricaoEstadual'].Text;
end;

procedure TXMLResultadosItemType.Set_InscricaoEstadual(Value: UnicodeString);
begin
  ChildNodes['InscricaoEstadual'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_IsentoInscricaoEstadual: UnicodeString;
begin
  Result := ChildNodes['IsentoInscricaoEstadual'].Text;
end;

procedure TXMLResultadosItemType.Set_IsentoInscricaoEstadual(Value: UnicodeString);
begin
  ChildNodes['IsentoInscricaoEstadual'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Inativo: UnicodeString;
begin
  Result := ChildNodes['Inativo'].Text;
end;

procedure TXMLResultadosItemType.Set_Inativo(Value: UnicodeString);
begin
  ChildNodes['Inativo'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_InscricaoSubstituto: UnicodeString;
begin
  Result := ChildNodes['InscricaoSubstituto'].Text;
end;

procedure TXMLResultadosItemType.Set_InscricaoSubstituto(Value: UnicodeString);
begin
  ChildNodes['InscricaoSubstituto'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_IsentoInscricaoEstadualSubstituto: UnicodeString;
begin
  Result := ChildNodes['IsentoInscricaoEstadualSubstituto'].Text;
end;

procedure TXMLResultadosItemType.Set_IsentoInscricaoEstadualSubstituto(Value: UnicodeString);
begin
  ChildNodes['IsentoInscricaoEstadualSubstituto'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_Cooperativa: UnicodeString;
begin
  Result := ChildNodes['Cooperativa'].Text;
end;

procedure TXMLResultadosItemType.Set_Cooperativa(Value: UnicodeString);
begin
  ChildNodes['Cooperativa'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_PublicaFederal: UnicodeString;
begin
  Result := ChildNodes['PublicaFederal'].Text;
end;

procedure TXMLResultadosItemType.Set_PublicaFederal(Value: UnicodeString);
begin
  ChildNodes['PublicaFederal'].NodeValue := Value;
end;

function TXMLResultadosItemType.Get_OrgaoPublico: UnicodeString;
begin
  Result := ChildNodes['OrgaoPublico'].Text;
end;

procedure TXMLResultadosItemType.Set_OrgaoPublico(Value: UnicodeString);
begin
  ChildNodes['OrgaoPublico'].NodeValue := Value;
end;

end.