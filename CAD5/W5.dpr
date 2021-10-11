program W5;
// Auteur Montero-Ribas
// Logiciel sous license GNU GPL
uses
  Forms,
  W5Unit1 in 'W5Unit1.pas' {Form1},
  generale in 'generale.PAS',
  Unit1 in 'Unit1.pas' {AboutBox},
  Dessin in 'Dessin.pas' {Form2},
  HtmlHelpAPI in 'HtmlHelpAPI.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.HelpFile := 'Cad5W.chm';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.


