unit La_Chaine;
interface
implementation
uses variables;
Type
  pChaine = ^Chaine;
  Chaine = record
             Ech   : Echiquier;
             Suivant  : pChaine;
           end;
Var Depart_Chaine:pChaine;
    Nb_Chaine:Integer;

Procedure Insere(VAR NoeudCourant:pChaine);
Var Resultat: pChaine;
begin
  Try
    New(Resultat);
  Except
    exit;
  end;
  Inc(Nb_Chaine);
  if NoeudCourant.Suivant = NIL then NoeudCourant.Suivant := Resultat
                                else
  Begin
    Resultat.Suivant      := NoeudCourant.Suivant ;
    NoeudCourant.Suivant  := resultat ;
  end;
end;

procedure parcourir;
var p: PChaine;
begin
  p :=Depart_Chaine;
  while p <> nil do
  begin
  
    p := p^.suivant;
  end;
end;

procedure Effacer_Chaine;
var p, r: PChaine;
begin
  Nb_Chaine:=0;
  p := Depart_Chaine;
  while (p <> nil) do
  begin
    r := p^.suivant;
    dispose(p);
    p := r;
  end;
end;



end.
