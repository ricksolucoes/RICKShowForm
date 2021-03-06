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
    btnShowFormTwo: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    procedure btShowFormClick(Sender: TObject);
    procedure btnShowFormTwoClick(Sender: TObject);
  protected
    procedure BeforeShow; override;
    procedure AfterShow; override;
    procedure AfterShowClose;

  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK.ShowForm,
  RICK.Sample.VIew2, RICK.Sample.View3, FMX.Dialogs;

{$R *.fmx}


procedure TPageView1.AfterShow;
begin
  ShowMessage('After Show');
end;

procedure TPageView1.AfterShowClose;
begin
  ShowMessage('After Show');
  Self.Close;
end;

procedure TPageView1.BeforeShow;
begin
  ShowMessage('Before Show')
end;

procedure TPageView1.btnShowFormTwoClick(Sender: TObject);
begin
  inherited;
  TRICKShowForm
    .New
      .Formulary(TPageView2) //Inform the form's class
      .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
      .ExecuteAfter(AfterShow) //Procedure to be performed after show form
    .Show //Open the formulary
    .DoNewForm //Prepare new form to show
      .Formulary(TPageView3) //Inform the form's class
    .Show;  //Open the formulary

end;

procedure TPageView1.btShowFormClick(Sender: TObject);
begin
  inherited;
  TRICKShowForm
    .New
      .Formulary(TPageView2) //Inform the form's class
      .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
      .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
      .ChangeDefaultMainForm //Set the specified form as the main form
    .Show; //Open the formulary
end;

end.
