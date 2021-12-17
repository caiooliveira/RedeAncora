{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 18/03/2020 14:52:31                             }
{       Generated from: D:\tempo\navcom\RedeAncora\linhasprodutos.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\linhasprodutos.xdb   }
{                                                                       }
{***********************************************************************}

unit linhasprodutos;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultLinhasV120Type = interface;
  IXMLResultadosType = interface;
  IXMLResultadosItemType = interface;

{ IXMLResultLinhasV120Type }

  IXMLResultLinhasV120Type = interface(IXMLNode)
    ['{DEBA3BF1-D087-4FF9-B0FA-398C7EF91CCA}']
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
    ['{0951AE2A-2025-4F12-84FB-A36E2ABE9D56}']
    { Property Accessors }
    function Get_ResultadosItem(Index: Integer): IXMLResultadosItemType;
    { Methods & Properties }
    function Add: IXMLResultadosItemType;
    function Insert(const Index: Integer): IXMLResultadosItemType;
    property ResultadosItem[Index: Integer]: IXMLResultadosItemType read Get_ResultadosItem; default;
  end;

{ IXMLResultadosItemType }

  IXMLResultadosItemType = interface(IXMLNode)
    ['{A36037FA-7876-4309-B2E0-9D38ACE23DAA}']
    { Property Accessors }
    function Get_Nome: UnicodeString;
    function Get_Codigo: string;
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Codigo(Value: string);
    { Methods & Properties }
    property Nome: UnicodeString read Get_Nome write Set_Nome;
    property Codigo: string read Get_Codigo write Set_Codigo;
  end;

{ Forward Decls }

  TXMLResultLinhasV120Type = class;
  TXMLResultadosType = class;
  TXMLResultadosItemType = class;

{ TXMLResultLinhasV120Type }

  TXMLResultLinhasV120Type = class(TXMLNode, IXMLResultLinhasV120Type)
  protected
    { IXMLResultLinhasV120Type }
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
    function Get_Codigo: string;
    procedure Set_Nome(Value: UnicodeString);
    procedure Set_Codigo(Value: string);
  end;

{ Global Functions }

function GetresultLinhasV120(Doc: IXMLDocument): IXMLResultLinhasV120Type;
function LoadresultLinhasV120(const FileName: string): IXMLResultLinhasV120Type;
function NewresultLinhasV120: IXMLResultLinhasV120Type;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetresultLinhasV120(Doc: IXMLDocument): IXMLResultLinhasV120Type;
begin
  Result := Doc.GetDocBinding('resultLinhasV120', TXMLResultLinhasV120Type, TargetNamespace) as IXMLResultLinhasV120Type;
end;

function LoadresultLinhasV120(const FileName: string): IXMLResultLinhasV120Type;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('resultLinhasV120', TXMLResultLinhasV120Type, TargetNamespace) as IXMLResultLinhasV120Type;
end;

function NewresultLinhasV120: IXMLResultLinhasV120Type;
begin
  Result := NewXMLDocument.GetDocBinding('resultLinhasV120', TXMLResultLinhasV120Type, TargetNamespace) as IXMLResultLinhasV120Type;
end;

{ TXMLResultLinhasV120Type }

procedure TXMLResultLinhasV120Type.AfterConstruction;
begin
  RegisterChildNode('Resultados', TXMLResultadosType);
  inherited;
end;

function TXMLResultLinhasV120Type.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLResultLinhasV120Type.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLResultLinhasV120Type.Get_Resultados: IXMLResultadosType;
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

function TXMLResultadosItemType.Get_Codigo: string;
begin
  Result := ChildNodes['Codigo'].Text;
end;

procedure TXMLResultadosItemType.Set_Codigo(Value: string);
begin
  ChildNodes['Codigo'].NodeValue := Value;
end;

end.