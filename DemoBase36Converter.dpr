program DemoBase36Converter;

uses
  Vcl.Forms,
  Base36Converter in 'Base36Converter.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
