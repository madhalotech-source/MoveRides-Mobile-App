program MoveRides_p;

uses
  System.StartUpCopy,
  FMX.Forms,
  MoveRides in 'MoveRides.pas' {Form1},
  database_u in 'database_u.pas' {Form2},
  biometric_u in 'biometric_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

