unit RICK.Sample.View2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, RICK.Sample.Base;

type
  TPageView2 = class(TPageBase)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageView2: TPageView2;

implementation

{$R *.fmx}

end.
