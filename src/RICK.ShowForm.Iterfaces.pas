unit RICK.ShowForm.Iterfaces;

interface

uses
  FMX.Forms,

  System.Classes,

  RICK.ShowForm.CallBack;

type
  iRICKShowForm = interface
    ['{6253B165-6B99-4C62-A48E-239E40B8F37A}']
    function Formulary(const AValue: TComponentClass): iRICKShowForm; overload;
    function Formulary(const AValue : TForm): iRICKShowForm; overload;
    function ExecuteBefore(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function ExecuteAfter(const AValue: TRickShowFormCallBackProc): iRICKShowForm;
    function Show: iRICKShowForm;

  end;


implementation

end.
