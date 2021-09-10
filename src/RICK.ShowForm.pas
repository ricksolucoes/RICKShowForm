unit RICK.ShowForm;

interface
uses
  FMX.Forms,
  System.Classes,

  RICK.ShowForm.Iterfaces,
  RICK.ShowForm.CallBack;
type
  TRICKShowForm = class(TInterfacedObject, iRICKShowForm)
  private
    FComponentClass: TComponentClass;
    FForm : TForm;
    FChangeDefaultMainForm: Boolean;
    FExecuteBefore: TRickShowFormCallBackProc;
    FExecuteAfter: TRickShowFormCallBackProc;

    function ChangeDefaultMainForm: iRICKShowForm;
    function Formulary(const AValue: TComponentClass): iRICKShowForm; overload;
    function ExecuteBefore(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function ExecuteAfter(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function Show: iRICKShowForm;
    function ShowOther: iRICKShowForm;

    constructor Create;
  public
    destructor Destroy; override;
    class function New: iRICKShowForm;

  end;
implementation

{ TRICKShowForm }

constructor TRICKShowForm.Create;
begin
  FChangeDefaultMainForm:= False;
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

function TRICKShowForm.ShowOther: iRICKShowForm;
begin
  Result:= Nil;
  Result:= New;
end;

function TRICKShowForm.ChangeDefaultMainForm: iRICKShowForm;
begin
  Result:= Self;
  FChangeDefaultMainForm:= True;
end;

function TRICKShowForm.Show: iRICKShowForm;
begin
  Result:= Self;

  if not Assigned(FForm) then
    Application.CreateForm(FComponentClass, FForm);

  if FChangeDefaultMainForm then
    Application.MainForm:= FForm;

  if Assigned(FExecuteBefore) then
    FExecuteBefore;

  FForm.Show;

  if Assigned(FExecuteAfter) then
    FExecuteAfter;

end;

end.
