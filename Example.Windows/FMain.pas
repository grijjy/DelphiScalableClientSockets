unit FMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Messaging,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Grijjy.Http;

type
  TFormMain = class(TForm)
    EditUrl: TEdit;
    MemoContent: TMemo;
    MemoHeaders: TMemo;
    LabelResponseHeaders: TLabel;
    LabelResponseContent: TLabel;
    ButtonGet: TButton;
    ButtonGetNonBlocking: TButton;
    procedure ButtonGetClick(Sender: TObject);
    procedure ButtonGetNonBlockingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure HttpResponseMessageListener(const Sender: TObject;
      const M: TMessage);
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
  HTTP: TgoHttpClient;
begin
  HTTP := TgoHttpClient.Create;
  try
    MemoContent.Text := HTTP.Get(EditUrl.Text);
    MemoHeaders.Text := HTTP.ResponseHeaders.AsString;
  finally
    HTTP.Free;
  end;
end;

procedure TFormMain.ButtonGetNonBlockingClick(Sender: TObject);
var
  HTTP: TgoHttpClient;
begin
  HTTP := TgoHttpClient.Create(True, False);
  try
    HTTP.Get('https://nghttp2.org');
  finally
    HttpClientManager.Release(HTTP);
  end;
end;

procedure TFormMain.HttpResponseMessageListener(const Sender: TObject;
  const M: TMessage);
var
  HttpResponseMessage: TgoHttpResponseMessage;
begin
  HttpResponseMessage := M as TgoHttpResponseMessage;
  MemoContent.Text := HttpResponseMessage.HttpClient.BytesToString(HttpResponseMessage.Response, HttpResponseMessage.ResponseContentCharset);
  MemoHeaders.Text := HttpResponseMessage.ResponseHeaders.AsString;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  TMessageManager.DefaultManager.SubscribeToMessage(TgoHttpResponseMessage,
    HttpResponseMessageListener);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  TMessageManager.DefaultManager.Unsubscribe(TgoHttpResponseMessage,
    HttpResponseMessageListener);
end;

end.
