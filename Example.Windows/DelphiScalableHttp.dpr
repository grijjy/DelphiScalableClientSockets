program DelphiScalableHttp;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {FormMain},
  Grijjy.Http in '..\..\GrijjyFoundation\Grijjy.Http.pas',
  Grijjy.SocketPool.Win in '..\..\GrijjyFoundation\Grijjy.SocketPool.Win.pas',
  Grijjy.OpenSSL.API in '..\..\GrijjyFoundation\Grijjy.OpenSSL.API.pas',
  Grijjy.OpenSSL in '..\..\GrijjyFoundation\Grijjy.OpenSSL.pas',
  Grijjy.MemoryPool in '..\..\GrijjyFoundation\Grijjy.MemoryPool.pas',
  Grijjy.Collections in '..\..\GrijjyFoundation\Grijjy.Collections.pas',
  Grijjy.Winsock2 in '..\..\GrijjyFoundation\Grijjy.Winsock2.pas',
  Grijjy.Uri in '..\..\GrijjyFoundation\Grijjy.Uri.pas',
  Grijjy.BinaryCoding in '..\..\GrijjyFoundation\Grijjy.BinaryCoding.pas',
  Nghttp2 in '..\Nghttp2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
