unit FMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Grijjy.Http;

type
  TFormMain = class(TForm)
    EditUrl: TEdit;
    MemoResponseContent: TMemo;
    MemoResponseHeaders: TMemo;
    LabelResponseHeaders: TLabel;
    LabelResponseContent: TLabel;
    ButtonGet: TButton;
    procedure ButtonGetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonGetClick(Sender: TObject);
var
  HTTP: TgoHTTPClient;
begin
  HTTP := TgoHTTPClient.Create;
  try
    MemoResponseContent.Text := HTTP.Get(EditUrl.Text, DEFAULT_TIMEOUT_RECV);
    MemoResponseHeaders.Text := HTTP.ResponseHeaders.Text;
  finally
    HTTP.Free;
  end;
end;

end.
