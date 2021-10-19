unit RICK.ShowForm.Iterfaces;

interface

uses
  FMX.Forms,

  System.Classes,
  System.SysUtils;

type
  iRICKShowForm = interface
    ['{6253B165-6B99-4C62-A48E-239E40B8F37A}']
    function ChangeDefaultMainForm: iRICKShowForm;
    function Formulary(const AValue: TComponentClass): iRICKShowForm; overload;
    function ExecuteBefore(const AValue: TProc): iRICKShowForm;
    function ExecuteAfter(const AValue: TProc): iRICKShowForm;
    function Show: iRICKShowForm;
    function DoNewForm: iRICKShowForm;
  end;


implementation

end.
