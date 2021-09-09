unit RICK.ShowForm;

interface
uses
  FMX.Forms,
  System.Classes,

  RICK.ShowForm.CallBack,
  RICK.ShowForm.Iterfaces;
type
  TRICKShowForm = class(TInterfacedObject, iRICKShowForm)
  private
    FComponentClass: TComponentClass;
    FForm : TForm;
    FExecuteBefore: TRickShowFormCallBackProc;
    FExecuteAfter: TRickShowFormCallBackProc;

    function Formulary(const AValue: TComponentClass): iRICKShowForm; overload;
    function Formulary(const AValue : TForm): iRICKShowForm; overload;
    function ExecuteBefore(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function ExecuteAfter(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function Show: iRICKShowForm;

    constructor Create;
  public
    destructor Destroy; override;
    class function New: iRICKShowForm;

  end;
implementation

{ TRICKShowForm }

constructor TRICKShowForm.Create;
begin

end;

destructor TRICKShowForm.Destroy;
begin

  inherited;
end;

function TRICKShowForm.ExecuteAfter(
  const AValue: TRickShowFormCallBackProc): iRICKShowForm;
begin
  Result:= Self;
  FExecuteAfter:= AValue;
end;

function TRICKShowForm.ExecuteBefore(
  const AValue: TRickShowFormCallBackProc): iRICKShowForm;
begin
  Result:= Self;
  FExecuteBefore:= AValue;
end;

function TRICKShowForm.Formulary(const AValue: TForm): iRICKShowForm;
begin
  Result:= Self;
  FForm:= AValue;
end;

function TRICKShowForm.Formulary(
  const AValue: TComponentClass): iRICKShowForm;
begin
  Result:= Self;
  FComponentClass:= AValue;
end;

class function TRICKShowForm.New: iRICKShowForm;
begin
  Result:= Self.Create;
end;

function TRICKShowForm.Show: iRICKShowForm;
begin
  Result:= Self;
  if not Assigned(FForm) then
    Application.CreateForm(FComponentClass, FForm);

  if Assigned(FExecuteBefore) then
    FExecuteBefore;

  FForm.Show;

  if Assigned(FExecuteAfter) then
    FExecuteAfter;

end;

end.
