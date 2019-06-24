program MarginTransparentBackground3;

uses
  System.StartUpCopy,
  FMX.Forms,
  untApp in 'untApp.pas' {frmApp};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmApp, frmApp);
  Application.Run;
end.
