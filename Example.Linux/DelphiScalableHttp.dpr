program DelphiScalableHttp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Grijjy.Http in '..\..\GrijjyFoundation\Grijjy.Http.pas',
  Grijjy.Uri in '..\..\GrijjyFoundation\Grijjy.Uri.pas',
  Grijjy.OpenSSL in '..\..\GrijjyFoundation\Grijjy.OpenSSL.pas',
  Grijjy.OpenSSL.API in '..\..\GrijjyFoundation\Grijjy.OpenSSL.API.pas',
  Grijjy.MemoryPool in '..\..\GrijjyFoundation\Grijjy.MemoryPool.pas';

var
  Response: TBytes;
  HTTP: TgoHttpClient;

begin
  try
    HTTP := TgoHttpClient.Create;
    try
      if HTTP.Get('http://www.grijjy.com', Response) then
        Writeln(TEncoding.ASCII.GetString(Response));
    finally
      HTTP.Free;
    end;

    // http2
    HTTP := TgoHttpClient.Create(True);
    try
      if HTTP.Get('https://nghttp2.org', Response) then
        Writeln(TEncoding.ASCII.GetString(Response));
    finally
      HTTP.Free;
    end;

    // wait
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
