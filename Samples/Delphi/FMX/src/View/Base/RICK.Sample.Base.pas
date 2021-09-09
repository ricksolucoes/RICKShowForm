unit RICK.Sample.Base;

interface

uses
  FMX.Types,
  FMX.Forms,
  FMX.Layouts,
  FMX.Objects,
  FMX.Controls,
  FMX.StdCtrls,
  FMX.Controls.Presentation,

  System.Classes,
  System.UITypes,
  System.SysUtils;

type
  TPageBase = class(TForm)
    lytContents: TLayout;
    recContents: TRectangle;
    StyleBook: TStyleBook;
    imgLogo: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

var
  PageBase: TPageBase;

implementation

{$R *.fmx}

{ TPageBase }

procedure TPageBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= TCloseAction.caFree;
  TPageBase(Sender):= nil;
end;

end.
