program luaskeliling;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uawal, upersegipanjang, uPersegi
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfPersegiPanjang, fPersegiPanjang);
  Application.CreateForm(TfPersegi, fPersegi);
  Application.Run;
end.

