unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Forms,
  FMX.Types,
  FMX.Layouts,
  FMX.Objects,
  FMX.Controls,

  System.Classes,
  System.UITypes,

  FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Effects, RICK.Sample.Base;

type
  TPageView1 = class(TPageBase)
    btShowForm: TSpeedButton;
    procedure btShowFormClick(Sender: TObject);
  protected
    procedure BeforeShow; virtual;
    procedure AfterShow; virtual;

  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK.ShowForm,
  RICK.Sample.VIew2;

{$R *.fmx}


procedure TPageView1.AfterShow;
begin
  Self.Close;
end;

procedure TPageView1.BeforeShow;
begin
  Application.MainForm:= PageView2;
end;

procedure TPageView1.btShowFormClick(Sender: TObject);
begin
  inherited;
  TRICKShowForm
    .New
      .Formulary(TPageView2)
      .Formulary(PageView2)
      .ExecuteBefore(BeforeShow)
      .ExecuteAfter(AfterShow)
    .Show;
end;

end.
