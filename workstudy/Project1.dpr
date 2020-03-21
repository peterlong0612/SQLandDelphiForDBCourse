program Project1;

uses
  Forms,
  register in 'register.pas' {Form1},
  sign_up in 'sign_up.pas' {Form2},
  main in 'main.pas' {mainwindow},
  clock in 'clock.pas' {digitalclock},
  selectform in 'selectform.pas' {selecttable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tmainwindow, mainwindow);
  Application.CreateForm(Tdigitalclock, digitalclock);
  Application.CreateForm(Tselecttable, selecttable);
  Application.Run;
end.
