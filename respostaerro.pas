{*********************************************************************}
{                                                                     }
{                          XML Data Binding                           }
{                                                                     }
{         Generated on: 25/03/2020 17:20:30                           }
{       Generated from: D:\tempo\navcom\RedeAncora\respostaerro.xml   }
{   Settings stored in: D:\tempo\navcom\RedeAncora\respostaerro.xdb   }
{                                                                     }
{*********************************************************************}

unit respostaerro;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLErrorsType = interface;
  IXMLErrorsErrorsItemType = interface;

{ IXMLErrorsType }

  IXMLErrorsType = interface(IXMLNodeCollection)
    ['{BE37B16A-62F8-4252-A325-80303E5F5A72}']
    { Property Accessors }
    function Get_Xmlns: UnicodeString;
    function Get_ErrorsErrorsItem(Index: Integer): IXMLErrorsErrorsItemType;
    procedure Set_Xmlns(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLErrorsErrorsItemType;
    function Insert(const Index: Integer): IXMLErrorsErrorsItemType;
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property ErrorsErrorsItem[Index: Integer]: IXMLErrorsErrorsItemType read Get_ErrorsErrorsItem; default;
  end;

{ IXMLErrorsErrorsItemType }

  IXMLErrorsErrorsItemType = interface(IXMLNode)
    ['{CAA5E31C-08CC-4BC2-8A29-2139EC99FD3E}']
    { Property Accessors }
    function Get_Xmlns: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Xmlns(Value: UnicodeString);
    procedure Set_Message(Value: UnicodeString);
    { Methods & Properties }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Message: UnicodeString read Get_Message write Set_Message;
  end;

{ Forward Decls }

  TXMLErrorsType = class;
  TXMLErrorsErrorsItemType = class;

{ TXMLErrorsType }

  TXMLErrorsType = class(TXMLNodeCollection, IXMLErrorsType)
  protected
    { IXMLErrorsType }
    function Get_Xmlns: UnicodeString;
    function Get_ErrorsErrorsItem(Index: Integer): IXMLErrorsErrorsItemType;
    procedure Set_Xmlns(Value: UnicodeString);
    function Add: IXMLErrorsErrorsItemType;
    function Insert(const Index: Integer): IXMLErrorsErrorsItemType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLErrorsErrorsItemType }

  TXMLErrorsErrorsItemType = class(TXMLNode, IXMLErrorsErrorsItemType)
  protected
    { IXMLErrorsErrorsItemType }
    function Get_Xmlns: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Xmlns(Value: UnicodeString);
    procedure Set_Message(Value: UnicodeString);
  end;

{ Global Functions }

function GetErrors(Doc: IXMLDocument): IXMLErrorsType;
function LoadErrors(const FileName: string): IXMLErrorsType;
function NewErrors: IXMLErrorsType;

const
  TargetNamespace = 'RedeAncoraServices';

implementation

{ Global Functions }

function GetErrors(Doc: IXMLDocument): IXMLErrorsType;
begin
  Result := Doc.GetDocBinding('Errors', TXMLErrorsType, TargetNamespace) as IXMLErrorsType;
end;

function LoadErrors(const FileName: string): IXMLErrorsType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Errors', TXMLErrorsType, TargetNamespace) as IXMLErrorsType;
end;

function NewErrors: IXMLErrorsType;
begin
  Result := NewXMLDocument.GetDocBinding('Errors', TXMLErrorsType, TargetNamespace) as IXMLErrorsType;
end;

{ TXMLErrorsType }

procedure TXMLErrorsType.AfterConstruction;
begin
  RegisterChildNode('Errors.ErrorsItem', TXMLErrorsErrorsItemType);
  ItemTag := 'Errors.ErrorsItem';
  ItemInterface := IXMLErrorsErrorsItemType;
  inherited;
end;

function TXMLErrorsType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLErrorsType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLErrorsType.Get_ErrorsErrorsItem(Index: Integer): IXMLErrorsErrorsItemType;
begin
  Result := List[Index] as IXMLErrorsErrorsItemType;
end;

function TXMLErrorsType.Add: IXMLErrorsErrorsItemType;
begin
  Result := AddItem(-1) as IXMLErrorsErrorsItemType;
end;

function TXMLErrorsType.Insert(const Index: Integer): IXMLErrorsErrorsItemType;
begin
  Result := AddItem(Index) as IXMLErrorsErrorsItemType;
end;

{ TXMLErrorsErrorsItemType }

function TXMLErrorsErrorsItemType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLErrorsErrorsItemType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLErrorsErrorsItemType.Get_Message: UnicodeString;
begin
  Result := ChildNodes['Message'].Text;
end;

procedure TXMLErrorsErrorsItemType.Set_Message(Value: UnicodeString);
begin
  ChildNodes['Message'].NodeValue := Value;
end;

end.