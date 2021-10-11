unit W5Unit1;
// Auteur Montero-Ribas
// Logiciel sous license GNU GPL


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,Clipbrd, StdCtrls, Menus,generale, ExtDlgs,jpeg,printers,ShellApi,
  ComCtrls,HtmlHelpAPI ,maths;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Edition1: TMenuItem;
    Nouveau1: TMenuItem;
    Quitter1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    Contour1: TMenuItem;
    Point1: TMenuItem;
    Cercle1: TMenuItem;
    Oblong1: TMenuItem;
    Ellipse1: TMenuItem;
    Polynome1: TMenuItem;
    ouper1: TMenuItem;
    Coller1: TMenuItem;
    Copier1: TMenuItem;
    Fonte1: TMenuItem;
    Primitives1: TMenuItem;
    E1: TMenuItem;
    EtiY1: TMenuItem;
    EtiZ1: TMenuItem;
    RevX1: TMenuItem;
    RevY1: TMenuItem;
    RevZ1: TMenuItem;
    PyrX1: TMenuItem;
    PyrY1: TMenuItem;
    PyrZ1: TMenuItem;
    Cyl1: TMenuItem;
    Cone1: TMenuItem;
    Par1: TMenuItem;
    Sphere1: TMenuItem;
    Arbre1: TMenuItem;
    Borgne1: TMenuItem;
    Deplacement1: TMenuItem;
    Tx1: TMenuItem;
    Ty1: TMenuItem;
    Tz1: TMenuItem;
    Rx1: TMenuItem;
    Ry1: TMenuItem;
    Rz1: TMenuItem;
    Sym1: TMenuItem;
    SymYZ1: TMenuItem;
    SymZX1: TMenuItem;
    Euler1: TMenuItem;
    Gestion1: TMenuItem;
    NS1: TMenuItem;
    Piece1: TMenuItem;
    Couleur1: TMenuItem;
    EtiZ2: TMenuItem;
    Apropos1: TMenuItem;
    Topologique1: TMenuItem;
    Fusion1: TMenuItem;
    Coupe2: TMenuItem;
    Inter1: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    PrintDialog1: TPrintDialog;
    Lire1: TMenuItem;
    Sauver1: TMenuItem;
    Toutselectionner1: TMenuItem;
    Supprimer1: TMenuItem;
    Dfaire1: TMenuItem;
    Aide1: TMenuItem;
    Pressepapier1: TMenuItem;
    Sauverlimage1: TMenuItem;
    Imprimer1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Paint1: TMenuItem;
    RichEdit1: TRichEdit;
    N7: TMenuItem;

     procedure FormCreate(Sender: TObject);
    procedure Lire1Click(Sender: TObject);
    procedure Sauver1Click(Sender: TObject);
    procedure Copier1Click(Sender: TObject);
    procedure Coller1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Point1Click(Sender: TObject);
    procedure ouper1Click(Sender: TObject);
    procedure Edition1Click(Sender: TObject);
    procedure Polynome1Click(Sender: TObject);
    procedure changementvue;
    procedure Pressepapier1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Nouveau1Click(Sender: TObject);
    procedure Cercle1Click(Sender: TObject);
    procedure Oblong1Click(Sender: TObject);
    procedure Ellipse1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure EtiY1Click(Sender: TObject);
    procedure EtiZ2Click(Sender: TObject);
    procedure RevX1Click(Sender: TObject);
    procedure RevY1Click(Sender: TObject);
    procedure RevZ1Click(Sender: TObject);
    procedure PyrX1Click(Sender: TObject);
    procedure PyrY1Click(Sender: TObject);
    procedure PyrZ1Click(Sender: TObject);
    procedure Cyl1Click(Sender: TObject);
    procedure Cone1Click(Sender: TObject);
    procedure Par1Click(Sender: TObject);
    procedure Sphere1Click(Sender: TObject);
    procedure Arbre1Click(Sender: TObject);
    procedure Borgne1Click(Sender: TObject);
    procedure Tx1Click(Sender: TObject);
    procedure Ty1Click(Sender: TObject);
    procedure Tz1Click(Sender: TObject);
    procedure Rx1Click(Sender: TObject);
    procedure Ry1Click(Sender: TObject);
    procedure Rz1Click(Sender: TObject);
    procedure Sym1Click(Sender: TObject);
    procedure SymYZ1Click(Sender: TObject);
    procedure SymZX1Click(Sender: TObject);
    procedure Euler1Click(Sender: TObject);
    procedure NS1Click(Sender: TObject);
    procedure Piece1Click(Sender: TObject);
    procedure Couleur1Click(Sender: TObject);
    procedure Fusion1Click(Sender: TObject);
    procedure Coupe2Click(Sender: TObject);
    procedure Inter1Click(Sender: TObject);
    procedure Ajusteralecran1Click(Sender: TObject);
    procedure Z1Click(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Sauverlimage1Click(Sender: TObject);
    procedure Imprimer1Click(Sender: TObject);
    procedure Toutselectionner1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure Dfaire1Click(Sender: TObject);
    Procedure Relecture;
    procedure dessusdessous1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Aide1Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Paint1Click(Sender: TObject);
    procedure RichEdit1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RichEdit1KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);


  private
  { Déclarations privées }
  public
  { Déclarations publiques }      {$T+}
  end;

var
  Form1: TForm1;
  NomdeFichier:String;
  Visu:byte;
  dessinvalide,oncoupe,commentaire,modeanimation,animevalide,fichiermodifie,enfacecachee:boolean;
  numerodeligne,xsource,pourmemo:Integer;
  t_valmemo:single;
  dialogvaleur:integer;

var lecode:array[1..2] of array[0..13] of single;


Procedure sauvecontexte;
Procedure restituecontexte;
procedure posxy(memo:TRichedit;var x,y:Integer);
procedure bandeau(s:string);
procedure setvue(a,b,c:single);
Procedure Tracelesolide(Lesolide:Byte);
Procedure travailajuster(Lalargeur,lahauteur:Integer);
procedure dessine;
procedure Animation;
procedure Dessin_Solide_en_Cours;
implementation

uses Unit1,dessin;

{$R *.DFM}
Procedure sauvecontexte;
 begin
    oldloupe:=loupe;
    oldmilx:=milx;
    oldmily:=mily;
    oldcava:=cava;
 end;

 Procedure restituecontexte;
 begin
    loupe:=oldloupe;
    milx:=oldmilx;
    mily:=oldmily;
    cava:=oldcava;
 end;

procedure posxy(memo:TRichedit;var x,y:Integer);
begin
  y:=SendMessage(memo.Handle,EM_LineFromChar,memo.SelStart,0);
  x:=memo.Selstart-SendMessage(memo.Handle,EM_LineIndex,y,0)+1;
end;

procedure bandeau(s:string);
begin
  Form1.Caption:='Cad5W '+s;
end;

procedure Aide(s1,s2:string);
begin
    form1.Label1.Font.Color:=clblack;
    form1.Label2.Font.Color:=clblack;
    form1.Label1.Caption:=s1;
    form1.Label2.Caption:=s2;
end;

procedure Construitpalette;
var nuance,valeur:integer;
begin
  Tab_Couleur[1]:=Clred;
  Tab_Couleur[2]:=Clgreen;
  Tab_Couleur[3]:=Clyellow;
  Tab_Couleur[4]:=Clblue;
  Tab_Couleur[5]:=clFuchsia;
  Tab_Couleur[6]:=ClAqua;
  Tab_Couleur[7]:=ClGray;
  Tab_Couleur[8]:=ClBlack;

  for nuance:= 1 to 32 do
  begin
     valeur:=(nuance-1)*8;
     Tab_couleur[31+nuance]:=Rgb(valeur,0,0);        { Rouge }
     Tab_couleur[63+nuance]:=Rgb(0,valeur,0);        { vert }
     Tab_couleur[95+nuance]:=Rgb(valeur,valeur,0);   { jaune }
     Tab_couleur[127+nuance]:=Rgb(0,0,valeur);       { bleu }
     Tab_couleur[159+nuance]:=Rgb(valeur,0,valeur);  { magenta }
     Tab_couleur[191+nuance]:=Rgb(0,valeur,valeur);  { cyan }
     Tab_couleur[223+nuance]:=Rgb(valeur,valeur,valeur);   { blanc }
  end;
End;

procedure setvue(a,b,c:single);
begin
  Latitude:=a;
  Longitude:=b;
  Roulis:=c;
end;



procedure init;
var n:integer;
begin
  setvue(0,0,0);
  Solide_en_Cours:=0;
  modeanimation:=false;
  piece_a_dessiner:=0;
  Premiere_Passe:=True;
  Plan_de_coupe:=zero;
  dessinvalide:=false;
  milx:=500;mily:=350;
  rep:=true;
  oncoupe:=false;
  une_vue:=true;
  for n:=1 to 6 do form1.Richedit1.lines.Add('');
  Aide('Exemple de ligne de commande : Pt(0,20);Pt(0,0);Cercle(10,10,10,-90,90,0);   EtiZ(-5,8,1);  Tx(20);                Fusion;','                                                     Eventuellement Contour                               Primitive        Déplacement     Opération topologique')
end;

procedure TForm1.FormCreate(Sender: TObject);
var nn:Integer;
begin
  loupe:=3;
  enfacecachee:=false;

  init;
  visu:=contour;
  form1.Richedit1.lines[0]:= '';
  form1.Richedit1.lines[1]:= '';
  form1.Richedit1.lines[0]:= '';
  vlampe[x]:=39.0;
  vlampe[y]:=260;
  vlampe[z]:=108;
  pangle:=pi/4;
  pk:=0.5;
  vues[0]:='';
  for nn:=0 to Maxfacette do La_Facette[nn]:=nil;
  reallocmem(La_Facette[0],dimpaspoint+12*3);
  Construitpalette;
  Nbrefacette:=0;
end;

procedure Coloration;             { coloration syntaxique adaptée d'une source de Edwin Moewis sur Delphi3000 }
const CodeC2: array[0..32] of String = ('Fusion','Coupe','Inter','Cyl','Par','Arbre','Cone','EtiX','RevZ','Sph',
                                        'Borgne','RevX','RevY','EtiY','EtiZ','PyrX','PyrY','PyrZ','Pt','Cercle',
                                        'Poly','Ellipse','Oblong','Tx','Ty','Tz','Rx','Ry','Rz','SymXY','SymYZ','SymZX','Euler');
var  FoundAt,FoundAt_mot,position: LongInt;
     StartPos, ToEnd, i : integer;
begin

  With  Form1.RichEdit1 do
  begin
   position:=selstart;
   Lines.BeginUpdate;
   SelectAll;
   SelAttributes.color := ClBlack;
   for i := 0 to 32 do
   begin
     StartPos := 0;
     ToEnd := Length(Text);
     FoundAt_Mot :=0;
     while (FoundAt_Mot <> -1) do
     begin
       FoundAt_Mot := FindText(CodeC2[i], StartPos, ToEnd, [stWholeWord]);
       if FoundAt_Mot <> -1 then
       begin
         SelStart := FoundAt_Mot;
         Startpos := FoundAt_Mot+1;
         FoundAt := FindText(';', StartPos, Length(Text), []);
         if FoundAt <> -1 then
         begin
           SelLength := (FoundAt - FoundAt_mot)+1;
           SelAttributes.Style := [fsBold];
           Case i of
                 0..2:SelAttributes.Color := clnavy;
                 3..17:SelAttributes.Color := clblue;
                 18..22:SelAttributes.Color := clgreen;
                 23..32:begin
                          SelAttributes.Color := clmaroon	;
                          SelAttributes.Style := [fsBold];
                        end;
           end;
           StartPos := FoundAt + 1;
         end;
       end;
      end;
    end;
  end;
  Startpos := 0;
  with Form1.RichEdit1 do
  begin
    StartPos := 0;
    ToEnd := Length(Text);
    FoundAt := FindText('>', StartPos, ToEnd, []);
    while (FoundAt <> -1) do
    begin
      SelStart := FoundAt;
      SelLength := 1;
      SelAttributes.Color := clred;
      SelAttributes.Style := [fsBold];
      StartPos := FoundAt +1;
      FoundAt := FindText('>', StartPos, ToEnd, []);
    end;
    StartPos := 0;
    ToEnd := Length(Text);
    FoundAt := FindText('<', StartPos, ToEnd, []);
    while (FoundAt <> -1) do
    begin
      SelStart := FoundAt;
      SelLength := 1;
      SelAttributes.Color := clPurple	;
      SelAttributes.Style := [fsBold];
      StartPos := FoundAt +1;
      FoundAt := FindText('<', StartPos, ToEnd, []);
    end;
    SelStart := 0;
    Lines.EndUpdate;
    selstart:=position;
  end;

end;

procedure TForm1.Sauver1Click(Sender: TObject);
var sa:string;
begin
   SaveDialog1.Filename:=ExtractFileName(NomdeFichier);
   If SaveDialog1.execute then
   begin
   try
     Nomdefichier:=SaveDialog1.Filename;
     sa:=changefileext(nomdefichier,'.CAD');
     Form1.Richedit1.lines.SaveToFile(sa);
     Caption:='W5  '+ExtractFilename(Nomdefichier);
     fichiermodifie:=false;
   finally
   end;
   end;
end;

procedure TForm1.Copier1Click(Sender: TObject);
begin
  Richedit1.CopytoClipBoard;
end;

procedure TForm1.Coller1Click(Sender: TObject);
begin
  Richedit1.PasteFromClipBoard;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Fonte1Click(Sender: TObject);
begin
  FontDialog1.Font := Form1.Richedit1.Font;
  If FontDialog1.execute then
  with Richedit1 do
  begin
   SelStart := 0;
   SelLength :=Length(Text);
   with ActiveControl as TRichEdit do SelAttributes.Assign(FontDialog1.Font)
  end;
  coloration;
end;

procedure Insertion(s:string;deca:byte);
 var curx,cury:Integer;
 i:Integer;
 s2:string;
 FoundAt: LongInt;
begin
  posxy(form1.Richedit1,curx,cury);
  i :=0;
  s2:=form1.Richedit1.lines[cury];
  if (s2<>'') and (curx<>1) and (curx<=length(s2))then   { ajouté le =}
  begin
    while (s2[curx]<>';') and (curx<length(s2))  do
    begin
      inc(i);
      inc(curx);
    end;
    inc(i);
  end;
  form1.Richedit1.selstart:=form1.Richedit1.selstart+i;
  form1.Richedit1.Seltext:=s;
  form1.Richedit1.selstart:=form1.Richedit1.selstart-deca;
  FoundAt:=form1.Richedit1.selstart;
  fichiermodifie:=true;
  coloration;
  form1.Richedit1.selstart:=FoundAt ;
end;

procedure TForm1.Point1Click(Sender: TObject);
begin
  Aide('Pt(Abscisse,Ordonnée); (2 arguments). Suivant la primitive choisie : travail dans le plan : OXY,OYZ ou OZX',' EtiZ & RevY : Pt(X,Y); EtiX & RevZ : Pt(Y,Z), EtiY & RevX : Pt(Z,X)');
  Insertion('Pt(,);',3);
end;

procedure TForm1.ouper1Click(Sender: TObject);
begin
  Richedit1.CutToClipBoard;
end;

procedure TForm1.Edition1Click(Sender: TObject);
Var Une_Selection:Boolean;
begin
   Une_selection:=Richedit1.SelLength<>0;
   ouper1.Enabled:=une_Selection;
   Copier1.Enabled:=Une_Selection;
   Coller1.Enabled:=ClipBoard.HasFormat(CF_TEXT);
   Supprimer1.enabled:=Une_selection;
   Dfaire1.Enabled:=Richedit1.canundo;
end;

procedure TForm1.Polynome1Click(Sender: TObject);
begin
  Aide('Poly(Rayon,Nombre);   Rayon > 0, Nombre > 2','Polygone régulier à Nombre cotés');
  Insertion('Poly(,);',3);
end;

procedure remplirmat(Latitude,Longitude,Roulis,Loupe:single);            { fabriquer la matrice de rotation }
begin
  a:=matidentite;b:=a;
  a[x,x]:=loupe*cos(Latitude);
  a[y,y]:=a[x,x];
  a[z,z]:=loupe;
  a[y,x]:=-loupe*sin(Latitude);
  a[x,y]:=-a[y,x];
  b[x,x]:=cos(Longitude);
  b[z,z]:=b[x,x];
  b[z,x]:=-sin(Longitude);
  b[x,z]:=-b[z,x];
  produitmatrice(b,a,d);
  a:=matidentite;
  a[y,y]:=cos(Roulis);
  a[z,z]:=a[y,y];
  a[z,y]:=-sin(Roulis);
  a[y,z]:=-a[z,y];
  produitmatrice(a,d,d);
  If cava Then
  begin
    a:=MatIdentite;a[y,x]:=-pk*cos(pangle);
    a[z,x]:=-pk*sin(pangle);
    produitmatrice(a,d,d);
  end;
  vecteurdy:=d[y];
  vecteurdz:=d[z];
end;

Procedure Sortie(s:String);             { en cas d'erreur dans le fichier }
var w:string;
begin
  dessinvalide:=false;
  w:=form1.Richedit1.Lines[numerodeligne];
  insert('>>>>',w,xsource);
  form1.Richedit1.Lines[numerodeligne]:=w{+'{<--Erreur'};
  Aide( w,s);
  form1.Label1.Font.Color:=clred;
  form1.Label2.Font.Color:=clred;
  MessageDlg(s, mtError, [mbOk], 0);
  form1.RichEdit1.Perform(EM_SCROLLCARET, 0, 0);
  coloration;
end;

function quelfac:Integer;     { Distribue un numéro de facette  0--> 255(?) }
begin
  inc(nbrequelfacs);
  If (Byte(nbrequelfacs) =0) or (byte(-nbrequelfacs)=0) or (Byte(nbrequelfacs) =255) or (byte(-nbrequelfacs)=255) then inc(nbrequelfacs);
  quelfac:=nbrequelfacs mod 256;
end;

procedure rotation(c:char;lequel:byte;angle:single);      { rotation du solide suivant x, y , z }
var t:Integer;
    tempo,sinang,cosang:single;
    i:byte;
    a,b:xyz;
begin
  if angle=0 then exit;
  depart[0]:=1;
  Finsol[0]:=Nbrefacette;
  degtorad(angle);
  sinang:=sin(angle);
  cosang:=cos(angle);
  case upcase(c) of
    'X':begin  a:=y;b:=z; end;
    'Y':begin  a:=z;b:=x; end;
    'Z':begin  a:=x;b:=y; end;
  end;
  For t:=depart[lequel] to Finsol[lequel] do With La_Facette[t]^ do for i:=1 to combien do
  begin
    tempo:=valeur[i,a]*cosang-valeur[i,b]*sinang;
    valeur[i,b]:=valeur[i,a]*sinang+valeur[i,b]*cosang;
    valeur[i,a]:=tempo;
  end;
end;

Procedure remplir_Nus;                 { remplir tableau de sinus , cosinus }
var i:byte;
    a:single;
Begin
  a:=DeuxPI/ns;for i:=1 to ns do
  begin
    cosinus[i]:= cos(a*i);
    sinus[i]  := sin(a*i);
  End;
End;

procedure rotgene;                     { fait tourner toutes les facettes }
var t:Integer;
    i:byte;
begin
  For t:=1 to nbrefacette do With La_Facette[t]^ do for i:=1 to combien do matricevecteur(d,valeur[i],valeur[i]);
  Matricevecteur(d,plan_de_coupe,plan_de_coupe_Op);
end;

procedure tracerepere;                 { les extrèmités des trois vecteurs de base sont stockées dans La_Facette[0]^ (pour gérer la rotation)}
var i:byte;
    debut,bout:vecteur;
    c:char;
Procedure ligne (a,b,c:integer);
begin
   bout[x]:=a; bout[y]:=b; bout[z]:=c;
   line(milx+round(scal(d[y],debut)/Loupe),mily-round(scal(d[z],debut)/Loupe),
                  milx+round(scal(d[y],bout)/Loupe), mily-round(scal(d[z],bout)/Loupe));
end;
begin
  setcolor(clblack);
  debut[x]:=200;
  debut[y]:=0;
  debut[z]:=0;
  ligne(240,0,0);
  ligne(215,5,0);
  ligne(215,-5,0);
  With La_Facette[0]^ Do
  Begin
    for i:=1 to 3 do
    begin
      moveto(milx,mily);
      linerel(round(scal(d[y],valeur[i])/Loupe),-round(scal(d[z],valeur[i])/Loupe));
      case i of
        1:c:='X';
        3:c:='Z';
        2:c:='Y';
      end;
      otxy(getx+10,gety,c);
    end;
  end;
End;

Procedure tracelafacette(t:Integer);        { manifestement trace la facette t ! }
Var i:byte;
    a,b:Integer;
Begin
  With La_Facette[t]^ do
  Begin
    a:=milx+round(scal(vecteurdy,valeur[1]));
    b:=mily-round(scal(vecteurdz,valeur[1]));
    moveto(a,b);
    for i:=combien downto 2 do lineto(milx+round(scal(vecteurdy,valeur[i])),mily-round(scal(vecteurdz,valeur[i])));
  End;
  lineto(a,b);
end;

Procedure Apparent(T1:Integer;v1,v2:vecteur;Var Ap1,Ap2:byte;var dx,dy:single);    { pour les cylindres et cônes}
Var Enface:Boolean;
    co,cosur2,Max,lap:Integer;
    carred,carre,D1X,D1Y,dd,d1:single;

Begin
  With La_Facette[T1]^do
  Begin
    max:=1;
    carred:=0;
    enface:=abs(scal(d[x],valeur[2])-scal(d[x],valeur[1]))-0.01<0;
    dd:=3333999;
    co:=combien;
    cosur2:=co div 2;
    dx:=scal(d[y],v2)-scal(d[y],v1);
    dy:=scal(d[z],v2)-scal(d[z],v1);
    lap:=1;while lap<=cosur2 do
    begin
      d1X:=(scal(d[y],valeur[lap])-scal(d[y],valeur[lap+cosur2]));
      D1Y:=(scal(d[z],valeur[lap])-scal(d[z],valeur[lap+cosur2]));
      carre:=sqrt(sqr(d1x)+sqr(d1y));
      If (not cava) or not enface then
      Begin
        if carre>carred then
        Begin
          Max:=lap;
          carred:=carre;
        end
      End  else if carre<>0 then
      Begin
        d1:=abs((d1x/carre)*dx+(d1y/carre)*dy);
        If d1<dd then
        Begin
          dd:=d1;
          max:=lap;
        End;
      end;
      Inc(Lap);
    End;
    AP1:=max;
    Ap2:=max+cosur2;
  End;
End;

Procedure Serie(c,b,I:Integer);               { trace une série de facettes }
Begin
  While (c<=b) do
  Begin
    tracelafacette(c);Inc(c,I);
  End;
End;

Procedure LaLigne(CetteFacette,CePoint:Integer;Dx,Dy:single);      { génératrice }
Begin
  With La_Facette[CetteFacette]^ do MoveTo(milx+round(scal(d[y],valeur[CePoint])),mily-round(scal(d[z],valeur[CePoint])));
  linerel(round(-dx),round(dy));
End;

Procedure Tracelesolide(Lesolide:Byte);
Var t1,t:Integer;
    dx,dy:single;
    Ap1,Ap2:Byte;
Var Dep,Base,Fin:Integer;
Begin
  setcolor(Tab_couleur[Couleur[Lesolide]]);
  Case Genre[LeSolide] of
    Cyl:begin
          t:=depart[lesolide];
          t1:=Finsol[leSolide]-1;
          TRACELAFACETTE(T1);
          TRACELAFACETTE(T1+1);
          Apparent(T1,La_Facette[t]^.valeur[2],La_Facette[t]^.valeur[3],Ap1,Ap2,dx,dy);
          LaLigne(T1,Ap1,dx,dy);
          LaLigne(T1,Ap2,dx,dy);
        end;
    Paral,Etir:Begin
                  t:=depart[lesolide];
                  With La_Facette[t]^do
                  Begin
                    dx:=scal(d[y],valeur[3])-scal(d[y],valeur[2]);
                    dy:=(scal(d[z],valeur[3])-scal(d[z],valeur[2]));
                   End;
                  t:=Finsol[leSolide]-1;
                  For Ap1:=1 To La_Facette[t]^.Combien do LaLigne(T,Ap1,dx,dy);
                  TRACELAFACETTE(T);
                  TRACELAFACETTE(T+1);
                End;
    Borgne,Con,Revo,arbr,Spher:Begin
                                  Fin:=FinSol[LeSolide];
                                  base:=La_Facette[Fin]^.Combien;
                                  dep:=depart[lesolide];
                                  While dep<=Fin-base Do
                                  Begin
                                    Serie(dep,Dep+Base,2);
                                    Inc(Dep,Base-3);
                                  End;
                                  tracelafacette(Fin-1);
                                  tracelafacette(Fin);
                                  tracelafacette(Fin-3);
                                End;
   else    Serie(depart[lesolide],Finsol[leSolide],1);
  End;
End;

procedure trace;          { trace en filaire  }
var lesolide:byte;

begin
  if not dessinvalide then exit;
  Cleardevice;
  Lesolide:=1;While (lesolide<=NbSolide) do
  begin
    Tracelesolide(lesolide);
    Inc(Lesolide);
  end;
  tracerepere;
end;

procedure encombrement;        { Encombrement général du solide à l'écran}
var t,i,lesolide:Integer;
    a:xyz;
Begin
  for a:=x to z do
  begin
    Gmax[a]:=-300000;
    Gmini[a]:=300000;
    For lesolide:=1 to NbSolide do if p[Lesolide]=1 then For t:=Depart[lesolide] to Finsol[Lesolide] do With La_Facette[t]^ do for i:=1 to combien do
    begin
      if Gmax[a]<valeur[i,a] then Gmax[a]:=valeur[i,a];
      if Gmini[a]>valeur[i,a] then Gmini[a]:=valeur[i,a];
    end;
  end;
End;



procedure cache(Passe:Byte);                 { routine mode aretes cachées }
label  onsetire;
var tf,ledepart,ydebut,yfin,ind:Integer;
    plan,maxx,coef,YMIL,ZMIL:SINGLE;
    Limite_Basse,PIece_50encours,i:byte;
    Tempo_Boo:Boolean;
    Linter:Tlinter;

procedure Pleine(const h1,b1:Integer;const nu:byte);
begin
  wg:=Limite_Basse;while wg<=fg do
  Begin
    if h1>=hg[wg] then
    begin
      if b1<=hg[wg] then
      begin
        hg[wg]:=h1;
        if b1<bg[wg] then bg[wg]:=b1;numg[wg]:=nu;
        exit;
      end;
    end else
    if h1>=bg[wg] then
    begin
      if b1<bg[wg] then bg[wg]:=b1;
      exit;
    end;
    inc(wg);
  End;
  inc(fg);
  bg[fg]:=b1;
  hg[fg]:=h1;
  numg[fg]:=nu;
end;

procedure Inter(const h1,b1:Integer;const nu:byte);
begin
  wg:=Limite_Basse;while wg<=fg do
  Begin
    if (b1>hg[wg]) or (h1<Bg[wg]) then
    begin
      if fg<>wg then
      begin
        hg[wg]:=hg[fg];
        bg[wg]:=bg[fg];
        numg[wg]:=numg[fg];
      end;
      dec(fg);
    end else
    begin
      If h1>=Hg[wg] then
      Begin
        if b1>bg[wg] then bg[wg]:=b1;
      End Else
      Begin
        Hg[wg]:=h1;
        Numg[wg]:=nu;
        if b1>bg[wg] then Bg[wg]:=b1;
      End;
      inc(wg);
    end;
  End;
end;

procedure Creuse(const h1,b1:Integer;const nu:byte);
Begin
  wg:=fg;while wg>=Limite_Basse do
  Begin
    if b1<=hg[wg] then if h1>=bg[wg] then
    begin
      if h1>=hg[wg] Then
      begin
        if b1<=bg[wg] then
        begin
          if fg<>wg then
          begin
            hg[wg]:=hg[fg];
            bg[wg]:=bg[fg];
            numg[wg]:=numg[fg];
          end;
          dec(fg);
        end else
        begin
          hg[wg]:=b1;numg[wg]:=nu;
        end;
      end  else
      begin
        if b1<=bg[wg] then bg[wg]:=h1 else
        begin
          inc(fg);
          hg[fg]:=b1;
          bg[fg]:=bg[wg];
          bg[wg]:=h1;
          numg[fg]:=nu;{exit;}
        end;
      end;
    end;
    dec(wg);
  end;
end;

procedure traitelaligne;                            { à un yy donné }
var fin,depart,derniere,ouderniere,putx:Integer;

procedure audessus(yy:Integer);
begin
  Limite_Basse:=1;
  Piece_50encours:=0;
  fg:=0;kg:=1;while kg<=nbrenu do
  begin
    If Piece_50[kg]<>Piece_50encours Then
    Begin
      Piece_50encours:=Piece_50[kg];
      Limite_Basse:=Fg+1;
    End;
    if discrim[kg,yy]<>0 then
    Case trou[kg] of
      1: Pleine(haut[kg,yy],bas[kg,yy],discrim[kg,yy]);
      2: Creuse(haut[kg,yy],bas[kg,yy],discrim[kg,yy]);
      3: Inter(haut[kg,yy],bas[kg,yy],discrim[kg,yy]);
    end;
    inc(kg);
  end;
  If fg>1 then
  Begin
    Maxig:=1;
    while fg>=2 do
    Begin
      if hg[fg]>hg[maxig] then maxig:=fg;
      dec(fg);
    end;
    numerocourant[yy]:=numg[maxig];
  End else numerocourant[yy]:=numg[fg];
end;

procedure plot(const x,y,coul:Integer);
begin
  if derniere=-500 then
  begin
    derniere:=coul;
    ouderniere:=y;
  end else
  if coul<>derniere then
  begin
     setcolor(tab_Couleur[derniere]);
     if derniere<>0 then line(x,y,x,ouderniere);
     derniere:=coul;
     ouderniere:=y;
  end;
end;

begin
  numg[0]:=0;
  putx:=milx+ycourant-1;
  numeromaxiprecedent:=0;
  yy:=grandminiypre;
  tempo:=0;
  numerocourant[yy]:=0;
  inc(yy,4);
  inc(grandmaxiypre,2);
  while yy<=grandmaxiypre do
  begin
    audessus(yy);
    if numerocourant[yy]=tempo then fillchar(numerocourant[yy-3],3,tempo) else
    Begin
      audessus(yy-2);
      if numerocourant[yy-2]=tempo then
      Begin
        numerocourant[yy-3]:=tempo;audessus(yy-1);
      end  else
      Begin
        audessus(yy-3);
        if numerocourant[yy-2]=numerocourant[yy]  then numerocourant[yy-1]:=numerocourant[yy] else audessus(yy-1);
      End;
      tempo:=numerocourant[yy];
    end;
    inc(yy,4);
  end;
  pre2:=0;
  depart:=max(-decran,grandminiypre);
  fin:=min(decran,grandmaxiypre);
  yy:=depart;
  derniere:=-500;
  plot(putx,decran+1-yy-3,0);
  If Visu In [Rendu256,Contour_Couleur] Then
  begin
  while yy<=fin do
  begin
    numeromaxi:=numerocourant[yy];
    if numeromaxi=pre2 then
    Begin
      numeromaxiprecedent:=numeromaxi;numerocourant[yy-1]:=numeromaxi;
    End else pre2:=numeromaxiprecedent;
    ye:=decran+1-yy;
    if coupeboo and (numeromaxiprecedent=255) then
    Begin
      if ((putx+ye) div 2) mod 8 <>0 then plot(putx,ye,7) else plot(putx,ye,8);
    End Else  plot(putx,ye,numeromaxiprecedent);
    numeromaxiprecedent:=numeromaxi;
    inc(yy);
  end ;
  plot(putx,ye+1,0);
  end   else
  while yy<= grandmaxiypre do
  begin
    numeromaxi:=numerocourant[yy];
    if (pre2<>numeromaxiprecedent) then
    Begin
      if numeromaxi<>pre2 then
      Begin
        putpixel(putx,decran+1-yy,Clblack);
        pre2:=numeromaxiprecedent;
      End else
      Begin
        numeromaxiprecedent:=numeromaxi;numerocourant[yy-1]:=numeromaxi;
      End;
    End else
    if (numeromaxiprecedent<>numero[yy-1]) then if numeromaxiprecedent<>numeroavant[yy-1] then putpixel(putx,decran+1-yy,ClBlack)
                                                                                          else numero[yy-1]:=numeromaxiprecedent;
    if coupeboo then if numeromaxi=255 then if ((putx+decran-1-yy) div 2) mod 8 =0 then putpixel(putx,decran-1-yy,ClBlack);
    numeromaxiprecedent:=numeromaxi;
    inc(yy);
  end;
  numeroavant:=numero;
  numero:=numerocourant;
  grandminiypre:=grandminiy;
  grandmaxiypre:=grandmaxiy+1;
end;

procedure calculepente;                       { mini , maxi et pente de la facette }
var i,nombreinter,nbreseg:byte;
    agauche:array[1..255] of boolean;
    ymini,ymaxi,t,y1,y2:Integer;
    z1,z2,ztempo,zinter,facteur,ley:single;
    v:VecteurInteger;
begin
  For t:=1 to nbrefacette do
  begin
    with La_Facette[t]^ do
    begin
      if endroit=0 then endroit:=113;
      nbreseg:=combien;
      for i:=1 to nbreseg do
      Begin
        v[x]:=round(coef*valeur[i,x]);
        v[y]:=round(valeur[i,y]);
        v[z]:=round(valeur[i,z])-ydeca;
        valeurInteger[i]:=v;
        if i=1 then
        Begin
          ymini:=v[y];ymaxi:=ymini;
        End Else
        Begin
          if ymini>v[y] then ymini:=v[y];
          if ymaxi<v[y] then ymaxi:=v[y];
        End;
      End;
      valeurInteger[nbreseg+1]:=valeurInteger[1];
      ley:=(ymini+ymaxi)/2;
      PenteFac:=0;
      MiniFacecran:=ymini;
      MaxiFacecran:=ymaxi;
      agauche[1]:=ley-valeurInteger[1,y]>=0;
      nombreinter:=0;
      i:=1;while i<=nbreseg do
      begin
        agauche[i+1]:=ley-valeurInteger[i+1,y]>=0;
        if agauche[i] xor agauche[i+1] then
        begin
          facteur:=(ley-valeurInteger[i,y])/(valeurInteger[i+1,y]-valeurInteger[i,y]);
          ytempo:=round(valeurInteger[i,z]+(valeurInteger[i+1,z]-valeurInteger[i,z])*facteur);
          ztempo:=valeurInteger[i,x]+(valeurInteger[i+1,x]-valeurInteger[i,x])*facteur;
          if nombreinter=0 then
          begin
            nombreinter:=1;
            yinter:=ytempo;
            zinter:=ztempo;
          end  else
          begin
            if ytempo<>yinter then
            begin
              if ytempo>yinter then
              begin
                y2:=ytempo;z2:=ztempo;
                y1:=yinter;Z1:=zinter;
              end              else
              begin
                y1:=ytempo;
                z1:=ztempo;
                y2:=yinter;
                Z2:=zinter;
              end;
              i:=101;
              PenteFac:=round((z2-z1)/(y2-y1+1));
            end;
          end;
        end;
        inc(i);
      end;
      if i<>102 then MaxiFacecran:=ydebut-3;
    end;
  end;
end;

Procedure remplirhautbas(var ddd:tableauint;const indice,debut,Count:integer;const base,increm:Integer);       { remplir haut ou bas }
var pour: integer;
    enplus:Integer;
Begin
   enplus:=0;
   for pour:=debut to debut+count do
   begin
    ddd[indice,pour]:=base+enplus;
    inc(enplus,increm);
   end;
end;

procedure traitelafacette(const fac:ptfacette);
Var  y1,y2,deb:Integer;
     Limite,indi,indiinter:Integer;
begin
  indi:=0;
  indiinter:=0;
  With fac^ do
  Begin
    ag1:=ycourant-valeurInteger[1,y];
    limite:=combien;
    while indi<limite do
    begin
      inc(indi);
      ag2:=ycourant-valeurInteger[indi+1,y];
      if (ag1>=0) xor (ag2>=0) then
      begin
        facteur:=ag1/(valeurInteger[indi+1,y]-valeurInteger[indi,y]);
        ytempo:=valeurInteger[indi,z]+round((valeurInteger[indi+1,z]-valeurInteger[indi,z])*facteur);
        if indiinter=0 then
        begin
          y1:=ytempo;
          facteurinter:=facteur;
          indiinter:=indi;
        end  else
        begin
          if ytempo>y1 then
          begin
            y2:=ytempo;
            deb:=valeurInteger[indiinter,x]+round((valeurInteger[indiinter+1,x]-valeurInteger[indiinter,x])*facteurinter);
          end              else
          if ytempo<y1 then
          begin
            y2:=y1;
            y1:=ytempo;
            deb:=valeurInteger[indi,x]+round((valeurInteger[indi+1,x]-valeurInteger[indi,x])*facteur);
          end else exit;
          if y2>decran then
          Begin
            y2:=decran;
            If y2<=y1 then exit;
          End;
          if y1<-decran then
          begin
            deb:=deb+PenteFac*(-decran-y1);
            y1:=-decran;
            If y2<=y1 then exit;
          end;
          if enfaceobs then
          begin
            if trou[nbrenu]<>2 then
            Begin
              Remplirhautbas(haut,nbrenu,y1,y2-y1+1,deb+Mange_Plein,PenteFac);
              fillchar(discrim[nbrenu,y1],y2-y1+1,byte(endroit));
              If y1<grandminiy then grandminiy:=y1;
              If y2>grandmaxiy then grandmaxiy:=y2;
            End                else Remplirhautbas(haut,nbrenu,y1,y2-y1+1,deb+Mange_trou,PenteFac);
          end else
          begin
            if trou[nbrenu]=2 then
            Begin
               fillchar(discrim[nbrenu,y1],y2-y1+1,byte(endroit));
               Remplirhautbas(bas,nbrenu,y1,y2-y1+1,deb-Mange_trou,PenteFac);
               Remplirhautbas(haut,nbrenu,y1,y2-y1+1,deb,PenteFac);
            end               else Remplirhautbas(bas,nbrenu,y1,y2-y1+1,deb-Mange_Plein,PenteFac);
          end;
          exit;
        end;
      end;
      ag1:=ag2;
    end;
  end;
end;

procedure quelle_couleur;  { indique la couleur de la facette en fonction de l'éclairage }
var Lesolide,t:Integer;

function coul(pt1,pt2,pt3:vecteur):Integer;
var va:single;
    v1,v2,v,w:vecteur;

begin
  soust(pt2,pt3,v1);
  soust(pt1,pt2,v2);
  vecto(v1,v2,v);
  directeur(v);
  w[x]:=(pt1[x]+pt2[x]+pt3[x])/3-vlampe[x]*maxx;
  w[y]:=(pt1[y]+pt2[y]+pt3[y])/3-vlampe[y]*maxx;
  w[z]:=(pt1[z]+pt2[z]+pt3[z])/3-vlampe[z]*maxx;
  directeur(w);
  va:=abs(scal(w,v));
  If Visu=Contour_Couleur Then
  Begin
    If Couleur_Piece[Piece[Lesolide]]=0 Then coul:=couleur[LeSolide] Else coul:=couleur_Piece[Piece[LeSolide]];

  End                      Else
  Begin
    If Couleur_Piece[Piece[Lesolide]]=0 Then coul:=couleur[LeSolide]*32+(31-trunc(va*30-1)) Else coul:=couleur_Piece[Piece[LeSolide]]*32+trunc(va*30-1);
  End;
end;

begin
  nbrequelfacs:=0;
  For Lesolide:=1 to NbSolide do
  For t:=depart[Lesolide] to Finsol[Lesolide] do With La_Facette[t]^ do
  if endroit<>255 then if visu=facette then
  begin
    if endroit<0 then endroit:=-quelfac else endroit:=quelfac;
  end else endroit:=coul(valeur[1],valeur[2],valeur[3]);
end;

procedure prepare;                        { mini et maxi de chaque solide }
var Lesolide,tf,limite,fo:Integer;
begin
  For lesolide:=1 to NbSolide do
  Begin
    minisol[Lesolide]:=round(Gmax[Y]);
    maxisol[lesolide]:=round(Gmini[Y]);
    for tf:=depart[Lesolide] to Finsol[lesolide] do With La_Facette[tf]^ do
    begin
      limite:=combien;
      fo:=0;while fo<limite do
      begin
        inc(fo);
        minisol[Lesolide]:= min(valeurInteger[fo,y],minisol[lesolide]);
        maxisol[lesolide]:=max(valeurInteger[fo,y],maxisol[lesolide]);
      end;
    end;
  end;
end;

Function Reamenage:Boolean;          { Si le nombre de solide dans la ligne est > MaxSolideParLigne : on bricole d'essayer d'en placer deux ensemble }
Var Croise:Boolean;
    i,jj:Integer;
Begin
  reamenage:=False;
  i:=1;While i<Nbrenu Do
  Begin
    If (trou[i]<>trou[i+1]) or (Piece_50[i]<>Piece_50[i+1]) then croise:=True else croise:=False;
    jj:=-Decran;While (not croise) And (jj<=Decran) do
    Begin
      If (Discrim[i,jj]<>0) And (Discrim[i+1,jj]<>0) then Croise:=true;
      Inc(JJ);
    End;
    If Not Croise Then
    Begin
      For JJ:=-decran to decran do if discrim[i+1,jj]<>0 then
      Begin
        Discrim[i,jj]:=Discrim[i+1,jj];
        Bas[i,jj]:=Bas[i+1,jj];
        Haut[i,jj]:=Haut[i+1,jj];
      End;
      For jj:=i+1 to Nbrenu-1 do
      Begin
        Bas[jj]:=Bas[jj+1];
        Haut[jj]:=Haut[jj+1];
        Discrim[jj]:=discrim[jj+1];
        Piece_50[jj]:=Piece_50[jj+1];
        Trou[jj]:=Trou[jj+1];
      End;
      dec(nbrenu);
      reamenage:=True;
      Exit;
    End;
    inc(i);
  End;
End;

procedure plancommun;               { Si deux facettes marquées "endroit<0" appartenant au même solide sont coplanaires : on les fusionne }
Var i,j,Lesolide,Le2solide:Integer;
    normal,vA,vb:vecteur;
    indic:boolean;
    pfi,pfj:ptfacette;
    k:byte;

function meme(f1,f2:ptfacette):boolean;
var wc:vecteur;
    i:Byte;
begin
  meme:=false;
  For i:=1 to 3 do
  Begin
    soust(f1^.valeur[i],f2^.valeur[i],wc);
    directeur(wc);
    if abs(scal(normal,wc))>0.002 then Exit;
  End;
  meme:=true;
end;

begin
  For Lesolide :=1 to NbSolide do For i:=Depart[Lesolide] to Finsol[Lesolide] do With La_Facette[i]^ do
    if (endroit<0) then  if ( (p[lesolide]=1) and (not enfaceobs)) or ((p[lesolide]=2) and enfaceobs) then endroit:=Abs(endroit);
  For Lesolide :=1 to NbSolide do
  For i:=Depart[Lesolide] to Finsol[Lesolide] do With La_Facette[i]^ do
  begin
    if (endroit<0) then
    Begin
      endroit:=abs(endroit);
      soust(valeur[1],valeur[2],va);
      soust(valeur[2],valeur[3],vb);
      vecto(va,vb,normal);
      directeur(normal);
      indic:=false;
      For le2solide:=lesolide+1 to NbSolide do
      Begin
        j:=depart[Le2solide];While j<=Finsol[Le2solide] do
        begin
          pfj:=La_Facette[j];
          if pfj^.endroit<0 then if piece[le2solide]=piece[lesolide] then if meme(La_Facette[i],pfj) then
          begin
            pfj^.endroit:=endroit;
            for k:=1 to pfj^.combien do pfj^.valeur[k,x]:=pfj^.valeur[k,x]+0.2;
            indic:=true;
            j:=Finsol[Le2solide];
          end;
          inc(j);
        end;
      end;
      if indic then for k:=1 to combien do valeur[k,x]:=valeur[k,x] +0.4;
    end;
  end;
end;

begin
  grandminiypre:=-decran+1;
  grandmaxiypre:=decran-1;
  setcolor(ClBlack);
  encombrement;maxx:=1;coupeboo:=false;
  if c_cboo[passe]<>3 then if oncoupe then if NbSolide<MaxSolide then if not yadespieces Then
  Begin
    tempo_boo:=true;Plan:=C_CPlan[Passe];
    Begin
      If C_CBoo[Passe]=0 Then
      {0 :on demande , 1 : on trace avec le plan, 3 :pas de coupe}
      Begin
        plan:=entrereel(Gmini[X]/loupe,Gmax[x]/loupe,position_coupe/loupe,tempo_boo,
        'Plan de coupe de la vue de '+vues[passe]+' entre '+strg(Gmini[X]/loupe)+' et '+strg(Gmax[x]/loupe))*loupe;
        C_CPlan[Passe]:=Plan;
      End;
      if not tempo_boo then c_cboo[passe]:=3;
      if tempo_boo then If Visu =Contour_Couleur Then
      Begin
        C_CBoo[Passe]:=1;
        if cava then if MessageDlg('Dessin des formes en avant du plan de coupe ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then C_CBoo[Passe]:=3;
      End;
      if tempo_boo then If plan<99996 then
      Begin
        inc(NbSolide);
        p[NbSolide]:=2;
        nbrefacette:=Finsol[NbSolide];
        For tf:=depart[NbSolide] to Finsol[NbSolide] do with La_Facette[tf]^ do
        for i:=1 to combien do
        Begin
          valeur[i,x]:=valeur[i,x]+plan;
          valeur[i,y]:=valeur[i,y]+gmini[y]-5;
          valeur[i,z]:=valeur[i,z]+gmini[z]-5;
        End;
        Coupeboo:=true;
      end;
    End;
  End;
  for tf:=1 to nbrefacette do
  begin
    with La_Facette[tf]^ do
    begin
      ymil:=0;zmil:=0;
      for i:=1 to combien do
      begin
        ymil:=ymil+valeur[i,y];
        zmil:=zmil+valeur[i,z];
        if abs(valeur[i,x])>maxx then maxx:=abs(valeur[i,x]);
      end;
      ymil:=ymil/combien;
      zmil:=zmil/combien;
      if (valeur[2,y]-valeur[1,y])*(valeur[2,z]-zmil)-(valeur[2,z]-valeur[1,z])*(valeur[2,y]-ymil)>0 then enfaceobs:=false else enfaceobs:=true;
    End;
  end;
  coef:=200000/maxx;
  Mange_Trou:=Round(0.3*Coef);
  Mange_Plein:=Round(0.05*Coef);
  fillchar(numero,sizeof(numero),0);
  numerocourant:=numero;
  numeroavant:=numero;
  if visu<>Contour then Quelle_couleur;
  if Visu In [contour,facette] then
  begin
    plancommun;
    setcolor(ClBlack);
  end;
  ydebut:=max(round(gmini[y]),-milx);
  yfin:=min(round(gmax[y]),getmaxx-milx);
  ydeca:=-decran+1+Mily;
  calculepente;
  prepare;
  For tf:=-decran to decran do Linter[tf]:=-24999;
  ycourant:=ydebut-1;while ycourant<=yfin+1 do
  begin
    nbrenu:=0;
    grandminiy:=decran-1;
    grandmaxiy:=-decran+1;
    ind:=0;
    for ledepart:=1 to NbSolide do
    Begin
      if nbrenu>=MaxSolideparligne then
      Begin
        If not reamenage then
        Begin
          MessageDlg('Saturation du buffer de profondeur', mtError, [mbOk], 0);
          goto onsetire;
        End;
      End;
      If p[ledepart]=3 then
      Begin
        inc(nbrenu);
        trou[nbrenu]:=p[ledepart];
        ind:=(decran*2+1)*nbrenu;
        Piece_50[Nbrenu]:=Piece[LeDepart];
        Fillchar(discrim[nbrenu],decran*2+1,1);
        Haut[nbrenu]:=Linter;
        Bas[nbrenu]:=Linter;
      End;
      if minisol[ledepart]<=ycourant then if maxisol[ledepart]>=ycourant then
      If not ( (nbrenu=0) and (p[ledepart]=2) ) then
      begin
        If p[ledepart]<>3 then
        Begin
          inc(nbrenu);
          trou[nbrenu]:=p[ledepart];
          ind:=(decran*2+1)*nbrenu;
          Piece_50[Nbrenu]:=Piece[LeDepart];
          Fillchar(discrim[nbrenu],decran*2+1,0);
        End;
        if (piece_a_dessiner=piece[Ledepart]) or (piece_a_dessiner=0) Then
        Begin
          For tf:=depart[ledepart] to finsol[ledepart] do With La_Facette[tf]^ do if (not enfaceobs) then if (MaxiFacecran>=ycourant) then
            if (MiniFacecran<=ycourant) then traitelafacette(La_Facette[tf]);
          For tf:=depart[ledepart] to finsol[ledepart] do With La_Facette[tf]^ do if (enfaceobs) then if (MaxiFacecran>=ycourant) then
            if (MiniFacecran<=ycourant) then traitelafacette(La_Facette[tf]);
        end;
      end;
      onsetire:
    end;
    traitelaligne;
    inc(ycourant);
  end;
end;

procedure lecture;                    {lecture et traitement du fichier créé dans le RichEdit}
var  debut:str4;
     encours,iii,ysource,DebutForme,pour:Integer;
     va:array[1..128] of single;
     vaechange:single;
     casepos,combiendevaleurs,NbredePtsBis,Pieceencours,CouleurEncours:Byte;
     li:string[255];
     topo:boolean;
     v40:vecteur;
     PointsBis:PleindePoints;
     axe:XYZ;


procedure newfacette(comb:shortint;endr:Integer);       { nouvelle facette ( in french !) }
var i:byte;
begin
  inc(nbrefacette);
  if Premiere_Passe then
  Begin
    if nbrefacette>=MaxFacette then sortie('Trop de facettes : '+Strg(nbrefacette));
    reallocmem(La_Facette[nbrefacette],dimpaspoint+12*comb);
  End;
  With La_Facette[Nbrefacette]^ do
  Begin
    for i:=1 to comb do valeur[i]:=interne[i];
    combien:=comb;
    endroit:=endr;
  End;
end;

Procedure pyra(v:vecteur;n:byte;vu:boolean);
Var I:Integer;
    fac1:Integer;
Begin
  fac1:=quelfac;
  points[nbredepts+1]:=points[1];
  interne[1]:=v;
  interne[3]:=points[1];
  for i:=1 to nbredepts do
  begin
    interne[2]:=interne[3];
    interne[3]:=points[i+1];
    if not vu then newfacette(3,fac1) else newfacette(3,-quelfac);
  end;
End;

Procedure grandefacette(danslordre:boolean;fac:Integer;Hauteur:Single);   { bas des cones et cylindres }
var i:byte;
begin
  for i:=1 to nbredepts do
  Begin
    if danslordre then interne[i]:=points[i] else interne[i]:=points[nbredepts-i+1];
    Interne[i,Z]:=Hauteur;
  End;
  newfacette(nbredepts,fac);
end;

procedure etire(h:single;n:byte;vu:boolean);
var i:byte;
    fac3:Integer;
begin
  fac3:=quelfac;
  points[nbredepts+1]:=points[1];
  Interne[2]:=points[1];
  Interne[3]:=Interne[2];
  Interne[3,z]:=h;
  for i:=1 to nbredepts do
  begin
    interne[1]:=Interne[2];Interne[4]:=Interne[3];
    Interne[2]:=points[i+1];
    Interne[3]:=Interne[2];Interne[3,z]:=h;
    if not vu then newfacette(4,fac3) else newfacette(4,-quelfac);
  end;
  Grandefacette(true,-Quelfac,h);
  Grandefacette(false,-Quelfac,0);
end;

procedure par(xx,yy,zz:single;n:byte;et:boolean);
var i:byte;
begin
  for i:=1 to 4 do points[i]:=zero;
  points[1,x]:=xx;
  points[2,x]:=xx;
  points[2,y]:=yy;
  points[3,y]:=yy;
  nbredepts:=4;
  etire(zz,n,et);
end;

procedure ellipse(r1,r2:single;nbre:byte);
var i:byte;
    a:single;
begin
  a:=DeuxPI/nbre;
  for i:=1 to nbre do
  begin
    points[i,x]:=r1*cos(a*(i-1));
    points[i,y]:=r2*sin(a*(i-1));
    points[i,z]:=0;
  end;
  nbredepts:=nbre;
end;

procedure Cercle_Rapide(r:single);
var i:byte;
begin
  for i:=1 to ns do Assigner(r*cosinus[i],r*sinus[i],0,points[i]);
  nbredepts:=ns;
end;

procedure cercle(r,xc,yc,angle1,angle2:single;trigo:boolean);
var i:byte;
    a,deca:single;
    n:Integer;
    moinsun:boolean;
begin
  If Angle1=360 then angle1:=0;
  If Angle2=0 then Angle2:=360;
  deca:=Angle2-Angle1;
  if deca<=0 then deca:=360+deca else if deca>360 then deca:=deca-360;
  if abs(deca)<180 then n:=ns div 3 else n:=ns div 2;
  If  not trigo then if n>6 then  n:=6;
  If r<=1 then n:=6 else  if  r<5 then if n>10 then n:=10;
  moinsun:=abs(deca)=360;
  If not trigo then deca:=360-deca;
  degtorad(Angle1);
  Degtorad(Angle2);
  Degtorad(Deca);
  if nbredepts>MaxPoints-(n+1) then sortie('Trop de points');
  a:=abs(deca)/n;
  if not trigo then a:=-a;
  for i:=0 to n do
  begin
    Assigner(xc+r*cos(Angle1+a*i),yc+r*sin(Angle1+a*i),0,
    points[nbredepts+i+1]);
  end;
  if moinsun then dec(n);
  inc(nbredepts,n+1);
end;

Procedure lireligne;
var encours:integer;
   onlachange:boolean;
Begin
  onlachange:=commentaire;
  li:=form1.Richedit1.lines[numerodeligne];
  if li[1] in  ['''','#'] then li:='' else while pos(#09,li) <>0 do delete(li,pos(#09,li),1);
  For encours:=1 To length(li) do if li[encours] in ['ë','é','è','ê'] then
  begin
    li[encours]:='e';
    onlachange:=true;
  end;
  For encours:=1 To length(li) do
  Case li[Encours] Of
    '{':Begin Commentaire:=True;onlachange:=true;li[encours]:=' ';End;
    '}':Begin Commentaire:=False;li[encours]:=' ';End;
     Else If (Commentaire or not (li[encours] in ['a'..'z','A'..'Z','0'..'9',';','.','(',')',',',':','=','-','+','*','/','^','!'])) then
     begin
       li[encours]:=' ';
       onlachange:=true;
     end;
  end;
  while pos(' ',li)>0 do delete(li,pos(' ',li),1);
  if onlachange then form1.Richedit1.Lines[numerodeligne]:=li;
  li:=UpperCase(li);
  inc(ysource);
  xsource:=1;
End;

procedure translation(autourde:Char;quoi:byte;dep:single);
var t:Integer;
    i:byte;
    a:xyz;
begin
  If dep=0 then exit;
  case autourde of
    'X':a:=x;
    'Y':a:=y;
    'Z':a:=z;
  end;
  For t:=Depart[quoi] to Finsol[quoi] do with La_Facette[t]^ do
  for i:=1 to combien do valeur[i,a]:=valeur[i,a]+dep;
end;

procedure revol(n:byte;touspareil:boolean);
var i:byte;
    r1,r2,h1,h2:single;
    fa,J:Integer;
    f:array[1..200] of Integer;
begin
  if abs(points[1,x])<=0.05 then points[1,x]:=0.05;
  if abs(points[nbredepts,x])<=0.05 then points[nbredepts,x]:=0.05;
  fa:=quelfac;
  for i:=1 to nbredepts do
  begin
    points[i,Z]:=points[i,y];points[i,y]:=0;
    if not touspareil then f[i]:=quelfac else f[i]:=fa;
  end;
  r1:=points[1,x];r2:=points[nbredepts,x];
  h1:=points[1,z];h2:=points[nbredepts,z];
  for j:=1 to nbredepts-1 do
  begin
     Interne[1]:=points[j];Interne[2]:=points[j+1];
     for i:=1 to NS do
     begin
       interne[4]:=Interne[1];Interne[3]:=Interne[2];
       Assigner(points[j,x]*cosinus[i]-points[j,y]*sinus[i],points[j,x]*sinus[i]+points[j,y]*cosinus[i],points[j,z],Interne[1]);
       Assigner(points[j+1,x]*cosinus[i]-points[j+1,y]*sinus[i],points[j+1,x]*sinus[i]+points[j+1,y]*cosinus[i],points[j+1,z],Interne[2]);
       newfacette(4,f[j])
     end;
  end;
  Cercle_Rapide(r1);
  grandefacette(false,-quelfac,h1);
  Cercle_Rapide(r2);
  grandefacette(true,-quelfac,H2);
end;

procedure cone(n:byte);
begin
  Assigner(va[1],0,0,Points[1]);
  Assigner(Va[2],Va[3],0,Points[2]);
  NbredePts:=2;
  Revol(n,False);
end;

Function pointsagauche(m,o,p:byte):shortint;  {vrai=1,faux:=-1,align‚=0}
Var tempo:single;
begin
  Tempo:=Points[M,x]*(Points[O,y]-Points[P,y])+points[M,Y]*(points[p,X]-Points[O,X])+(Points[O,X]*Points[P,Y]-Points[O,Y]*Points[P,X]);
  If tempo<0 then pointsagauche:=1 else if tempo=0 then pointsagauche:=0 else pointsagauche:=-1;
end;

Procedure Sup_Revol(N:Byte);
Var I:Byte;
Begin
  For i:=N to NbredePts-1 do Points[i]:=Points[i+1];
  dec(Nbredepts);
End;

procedure unedeplus(Const genr:Tgenre);
begin
  inc(NbSolide);
  numero_vraie[NbSolide]:=NbSolide_vrai+1;
  if NbSolide>=MaxSolide then  sortie('Trop de formes');
  genre[NbSolide]:=genr;
  Depart[NbSolide]:=Nbrefacette+1;
  if NbSolide>1 then finsol[NbSolide-1]:=Nbrefacette;
  Couleur[NbSolide]:=CouleurEncours;
  Piece[NbSolide]:=Pieceencours;
  ligne[NbSolide]:=numerodeligne;
end;

Procedure SortieDebug(Const S2:Str80);
Var i,po:byte;
    xxx,yyy,zzz:char;
    maxx,maxy,minix,miniy,coefx,coefy,interx,intery:Single;
    S:Str12;
    alors:string;
    centrex,centrey:Integer;
Begin
  if not dessinvalide then exit;
  Cleardevice;
  Setcolor(clBlack);
  Dessinvalide:=False;
  If DEBUT[4]='O' Then debut[4]:='Z';
  s:='XYZXYRXY';
  po:=Pos(Debut[4],s);
  Maxx:=-10000;
  Minix:=10000;
  Miniy:=Minix;
  Maxy:=Maxx;
  For i:=1 to NbredePtsDebug do
  Begin
    If PointsDebug[i,x]>Maxx Then Maxx:=PointsDebug[i,x];
    If PointsDebug[i,x]<Minix Then Minix:=PointsDebug[i,x];
    If PointsDebug[i,y]>Maxy Then Maxy:=PointsDebug[i,y];
    If PointsDebug[i,y]<Miniy Then Miniy:=PointsDebug[i,y];
  End;
  If minix>-10 then minix:=-10;
  if miniy>-10 then miniy:=-10;
  interx:=Maxx-Minix;
  If interx<40 then interx:=40;
  intery:=Maxy-Miniy;
  If intery<40 then intery:=40;
  Coefx:=(Getmaxx-120)/(interx);
  Coefy:=(Getmaxy-150)/(intery);
  centrex:=Round(30-minix*coefx);
  centrey:=Round(30-miniy*coefy);
  If Debut[1] in ['P','E'] then
  Begin
    xxx:=s[PO+1];
    yyy:=s[PO+2];
    zzz:=s[po];
  End Else
  Begin
    xxx:=s[PO+2];yyy:=s[PO];zzz:=s[po+1];
  End;
  Bandeau(Debut+', Nbdepts='+Strint(NbreDePtsDebug));
  MoveTo(centrex,getmaxy-centrey);Moverel(10,10);Ot(zzz);
  MoveTo(centrex,getmaxy-centrey);
  LineTo(centrex+100,getmaxy-centrey);
  Moverel(10,10);
  Ot(xxx);
  MoveTo(centrex,getmaxy-centrey);
  LineTo(centrex,getmaxy-(centrey+100));
  Moverel(10,10);Ot(yyy);
  Moveto(centrex+Round(coefx*(PointsDebug[1,x])),getmaxy-(centrey+Round(coefy*(PointsDebug[1,y]))));
  Setcolor(clred);
  For i:=2 to NbreDePtsDebug do LineTo(centrex+Round(coefx*(PointsDebug[i,x])),getmaxy-(centrey+Round(coefy*(PointsDebug[i,y]))));
  otxy(centrex+Round(coefx*(PointsDebug[1,x]))+10,getmaxy-( centrey+Round(coefy*(PointsDebug[1,y])+10)),'1');
  For i:=2 to NbreDePtsDebug do Otxy(centrex+Round(coefx*(PointsDebug[i,x]))+10,getmaxy-( centrey+Round(coefy*(PointsDebug[i,y])+10)),strint(i)  );
  Form2.Image1.repaint;
  If (debut ='ETIX') or (debut='PIRX') or (debut='REVZ') then alors:=' : travail dans le plan YZ : ' else
  If (debut ='ETIY') or (debut='PIRY') or (debut='REVX') then alors:=' : travail dans le plan ZX : ' else
  If (debut ='ETIZ') or (debut='PIRZ') or (debut='REVY') then alors:=' : travail dans le plan XY : ' else alors :='';
  MessageDlg(debut+alors+S2+#13+#13+ 'Consultez l''aide en ligne'+#13+#13+'ATTENTION : les échelles des abscisses et des ordonnées ne sont pas les mêmes', mtError, [mbOk], 0);
end;

Procedure Pre_Revol;
Var I,K:Integer;
    Oncontinue:Boolean;
Begin
  Nbredeptsdebug:=nbredepts;
  pointsdebug:=points;
  For i:=1 to NbredePts do points[i,x]:=Abs(points[i,x]);
  Oncontinue:=True;
  For i:=1 to NbredePts-1 do If points[i,y]>points[i+1,y] then
  If points[i,y]<=points[i+1,y]+0.07 then points[i+1,y]:=Points[i,y] else Oncontinue:=false;
  If not Oncontinue then
  begin
    for i:=1 to nbredepts do points[i]:=pointsdebug[nbredepts-i+1];
    Oncontinue:=True;
    For i:=1 to NbredePts-1 do
    If points[i,y]>points[i+1,y] then If points[i,y]<=points[i+1,y]+0.07 then points[i+1,y]:=Points[i,y] else  Oncontinue:=false;
    If not Oncontinue then SortieDebug(pasde);
  end;
  if not(dessinvalide) then exit;
  While (Nbredepts>=2) do
  begin
    i:=3;
    If Points[2,y]=Points[1,y] Then Sup_Revol(1);
    If nbredepts=1 then exit;
    If (Nbredepts=2) then
    Begin
      Unedeplus(Revo);
      Revol(NbSolide,false);
      Nbredepts:=0;
      i:=1000;
    End;
    While i<=Nbredepts do
    If Pointsagauche(i,i-1,i-2)<0 then
    Begin
      Nbredeptsbis:=0;
      For k:=i-1 to Nbredepts do
      begin
        Inc(nbredeptsbis);
        pointsbis[nbredeptsbis]:=points[k];
      End;
      Nbredepts:=i-1;
      If Points[Nbredepts,y]=Points[nbredepts-1,y] Then Sup_Revol(nbredepts);
      If Nbredepts>=2 then
      Begin
        if points[nbredepts,x]>pointsbis[1,x] then
        Begin
          If Points[NbredePts,y]-Points[NbredePts-1,y]>2 then pointsbis[1,y]:=pointsbis[1,y]-1.9 else  pointsbis[1,y]:=pointsbis[1,y]-0.6
        End                                   else
        Begin
          If pointsbis[2,y]-Pointsbis[1,y]<>0 then
          Begin
            If pointsbis[2,y]-Pointsbis[1,y]>2 then points[nbredepts,y]:=points[nbredepts,y]+1.9 else points[nbredepts,y]:=points[nbredepts,y]+0.6;
          End else
          Begin
            If Nbredeptsbis>2 then
            If pointsbis[3,y]-Pointsbis[1,y]>2 then points[nbredepts,y]:=points[nbredepts,y]+1.9 else points[nbredepts,y]:=points[nbredepts,y]+0.6;
          End;
        End;
        points[1,y]:=points[1,y]-0.2;
        Unedeplus(Revo);
        Revol(NbSolide,false);
        nbredepts:=nbredeptsbis;
        points:=pointsbis;
        I:=1000;
      End Else
      begin
       SortieDebug(Param);
       if not(dessinvalide) then exit;
      end;
    end else inc(i);
    If nbredepts=1 then exit;
    if (i<>1000) And (I>nbredepts) then
    begin
      Unedeplus(Revo);
      Revol(NbSolide,false);
      Nbredepts:=0;
    end;
  End;
End;

procedure arbre(n:byte);
var i:byte;
    r1,r2:single;
begin
  if va[3]<>0 then
  begin
    degtorad(va[4]);
    r1:=va[1]-va[3]*sin(va[4])/cos(va[4]);
    If r1<=0 then sortie(Param);
    if not(dessinvalide) then exit;
    Assigner(r1,0,0,Points[1]);
    Assigner(va[1],va[3],0,Points[2]);
    i:=3;
  end        else
  begin
    Assigner(va[1],0,0,Points[1]);
    i:=2;
  end;
  if va[5]<>0 then
  begin
    degtorad(va[6]);
    r2:=va[1]-va[5]*sin(va[6])/cos(va[6]);
    If r2<=0 then sortie(Param);
    if not(dessinvalide) then exit;
    Assigner(va[1],va[2]-va[5],0,Points[i]);
    inc(i);
    Assigner(r2,va[2],0,Points[i]);
  end        else
  begin
    Assigner(va[1],va[2],0,Points[i]);
  end;
  nbredepts:=i;
  revol(n,false);
end;

procedure sphere(n:byte);
Var I:Integer;
    angle:single;
begin
  angle:=PI/ns;
  for i:= 1 to ns+1 do Assigner(va[1]*cos(-PI/2+angle*(i-1)),va[2]*sin(-PI/2+angle*(i-1)),0,points[i]);
  nbredepts:=ns+1;
  revol(n,true);
end;

procedure oblong;
begin
  cercle(va[1],0,va[2]/2,0,180,true);
  cercle(va[1],0,-va[2]/2,180,360,true);
end;

Function Ev(Chaine:String;Var C_Est_Bon:Boolean):Single;       { Evaluateur d'expressions mathématiques}
Const Sinus:Char=#179;
      Valeur_Absolue:Char=#183;
      Operation:String[5]='^/*-+';

Var Encours:Char;
    Tab : Array ['a'..'z'] of Single;
    Ope_EnCours,Longueur:Integer;
    On_Continue,Erreur:Boolean;

Function Le_Char(Ici:Integer):Char;         (* Renvoie Chaine[Ici] ou un blanc*)
Begin
  If (Ici<=Length(Chaine)) And (Ici>0) Then Le_Char:=Chaine[Ici]
                                       Else Le_Char:=' ';
End;

Function Puissance(X,Y:Single):Single;                                     (* a^b *)
Var Tempo:Single;
    K:Integer;
Begin
  Tempo:=1;
  If X=0 Then Puissance:=0 Else                                    (* 0^a = 0 *)
  Begin
    If Abs(Y)=Abs(Trunc(Y)) Then                                (* Y Entier ? *)
    Begin
      Tempo:=1;
      For K:=1 to Abs(Trunc(y)) do Tempo:=Tempo*X;
    End Else If X>0 Then Tempo:=Exp(Abs(Y)*Ln(X)) ;
    If Y<0 Then Puissance:=1/Tempo Else  Puissance:=Tempo; (* Y<0 ? *)
  End;
End;

Procedure remplace;
Var base,jusque,la:Byte;
    ChaineBis:String;
    Tempo:String[4];
    Le_Char:Char;
    Err:integer;

Const   AZ         = ['A'..'Z'];
        Chiffre    = ['0'..'9','.'];
        Pas_Touche = ['(',')','+','-','*','/','^','!'];
Begin
  Base:=1;ChaineBis:='';
  While Base<=Length(Chaine) Do
  Begin
    Jusque:=Base;
    If Chaine[Base] in Pas_Touche Then
    Begin
      le_Char:=Chaine[Base];Inc(Jusque);
    End  Else
    If Chaine[Base] in AZ Then
    Begin
      While (Chaine[Jusque] in AZ) And (Jusque<=Length(Chaine)) Do Inc(Jusque);
      Tempo:=(Copy(Chaine,Base,Jusque-Base))+'$$$$';
      La:=Pos(Tempo,'SIN$COS$LN$$EXP$ABS$U$$$V$$$W$$$R$$$S$$$T$$$PI$$A$$$');
      If La=0 Then Begin Erreur:=True;Exit;End Else La:=La Div 4 +1;
      Case La Of
        1..5:Le_Char:=Char(178+La);
        6..13:Begin
                Le_Char:=Encours;
                Tab[Le_Char]:=T_Val[la-5];
                Inc(Encours);
              End;
      End;
    End Else
    If Chaine[Base] In Chiffre Then
    Begin
      While (Chaine[Jusque] in Chiffre) And (Jusque<=Length(Chaine)) Do Inc(Jusque);
      Val(Copy(Chaine,Base,
      Jusque-Base),
      Tab[Encours],
      Err);
      Le_Char:=Encours;
      Inc(Encours);
    End Else Begin Erreur:=True;Exit;End;
    Base:=Jusque;
    ChaineBis:=ChaineBis+Le_Char;
  End;
  Chaine:=ChaineBis;
End;

Procedure Retire_parenthese;                                   (*  (a) --> a  *)
var K:Integer;

Procedure Retire_Moins(J:Integer);             (*   -a+b  -->  a+b avec a:=-a *)
Begin
  If Le_Char(J+1) in ['a'..'z'] Then
  If ((Chaine[J]='-') And (Pos(Le_Char(J+2),'^!')=0)) Or (Chaine[J]='+') Then
  Begin
    If Chaine[J]='-' Then Tab[Chaine[J+1]]:=-Tab[Chaine[J+1]];
    Delete(Chaine,J,1);
  End;
End;

Begin
  Retire_Moins(1);
  K:=1;
  While K<=length(Chaine)-3 do
  Begin
    If (Pos(Chaine[K],'(')<>0) Then Retire_Moins(K+1);
    Inc(K);
  End;
  K:=1;
  While K<=Length(Chaine)-2 Do
  Begin
    If (Chaine[K]='(') And (Chaine[K+1] In ['a'..'z'])
                       And (Chaine[K+2]=')') Then
    Begin
      Delete(Chaine,K+2,1);Delete(Chaine,K,1);
    End Else Inc(K);
  End;
End;

Function Recherche_Operation(Op:Char):Boolean;      (* (a+b) *)
Var K:Integer;
    Bon:Boolean;
Begin
  K:=1;
  While K<=Length(Chaine)-2 do
  If (Chaine[K] in ['a'..'z']) and (Chaine[K+1]=Op)
                               and (Chaine[K+2] in ['a'..'z']) Then
  Begin
    Bon:=True;
    Case Op Of
      '-':If (Pos(Le_Char(K+3),'*/^!')=0) And (Pos(Le_Char(K-1),'^*/-')=0) Then Tab[Chaine[K]]:=Tab[Chaine[K]]-Tab[Chaine[K+2]] Else Bon:=False;
      '+':If (Pos(Le_Char(K+3),'*/^!')=0) And (Pos(Le_Char(K-1),'^*/-')=0) Then Tab[Chaine[K]]:=Tab[Chaine[K]]+Tab[Chaine[K+2]] Else Bon:=False;
      '*':If (Pos(Le_Char(K+3),'^!')=0)   And (Pos(Le_Char(K-1),'^')=0) Then Tab[Chaine[K]]:=Tab[Chaine[K]]*Tab[Chaine[K+2]] Else Bon:=False;
      '/':If (Pos(Le_Char(K+3),'^!')=0)   And (Tab[Chaine[K+2]]<>0.0)  And (Pos(Le_Char(K-1),'^')=0) Then Tab[Chaine[K]]:=Tab[Chaine[K]]/Tab[Chaine[K+2]] Else Bon:=False;
      '^':If (Pos(Le_Char(K-1),'^')=0) Then Tab[Chaine[K]]:=Puissance(Tab[Chaine[K]],Tab[Chaine[K+2]]) Else Bon:=False;
    End;
    If Bon Then
    Begin
      Delete(Chaine,K+1,2);
      Recherche_Operation:=True;
      Exit;
    End Else Inc(K);
  End Else Inc(K);
  Recherche_Operation:=False;
End;

Function Factorielle(Nombre:Integer):Single;                          (* a! *)
Var j:Integer;
    Tempo:Single;
Begin
  Tempo:=1;
  If Nombre>0 Then For J:=1 to Nombre Do Tempo:=Tempo*J;
  Factorielle:=Tempo;
End;

Function Recherche_Fonction:Boolean;
Var K:Integer;

Begin
  K:=1;While K<=Length(Chaine)-1 Do
  If ((Chaine[K]) In [Sinus..Valeur_Absolue])
                               and (Chaine[K+1] In ['a'..'z']) Then
  Begin
    Case Ord(Chaine[K]) of
     (*Sinus*)   179:Tab[Chaine[K+1]]:=Sin(Tab[Chaine[K+1]]);
     (*Cosinus*) 180:Tab[Chaine[K+1]]:=Cos(Tab[Chaine[K+1]]);
     (*Ln*)      181:If Tab[Chaine[K+1]]>0                  Then
                     Tab[Chaine[K+1]]:=ln(Tab[Chaine[K+1]]) Else exit;
      (*Exp*)    182:Tab[Chaine[K+1]]:=Exp(Tab[Chaine[K+1]]);
      (*Abs*)    183:Tab[Chaine[K+1]]:=Abs(Tab[Chaine[K+1]]);
    End;
    Delete(Chaine,K,1);
    Recherche_Fonction:=True;
    Exit;
  End else Inc(K);
  K:=2;While K<=length(Chaine) do
  If (Chaine[K]='!')      And (Chaine[K-1] in ['a'..'z']) And
     (Tab[Chaine[K-1]]>=0) And (Tab[Chaine[K-1]]<33)       And
     (Tab[Chaine[K-1]]= Trunc(Tab[Chaine[K-1]])) Then
  Begin
    Tab[Chaine[K-1]]:=Factorielle(Round(Tab[Chaine[K-1]]));
    Delete(Chaine,K,1);
    Recherche_Fonction:=True;
    Exit;
  End Else Inc(K);
  Recherche_Fonction:=False;
End;

Begin
  Erreur:=False;
  Encours:='a';
  Remplace;
  Longueur:=255;
  While longueur>length(Chaine) Do (*Se termine si la longueur ne varie plus*)
  Begin
    On_Continue:=True;
    Ope_Encours:=1;
    Longueur:=Length(Chaine);
    While On_Continue And (Ope_Encours<=5) Do
    Begin
      Retire_Parenthese;
      On_Continue:=Not Recherche_Fonction;
      If On_Continue Then On_Continue:=Not Recherche_Operation(Operation[Ope_Encours]);
      Inc(Ope_Encours);
    End;
  End;
  Erreur:=Length(Chaine)<>1;           (* Il ne doit rester qu'une minuscule *)
  If Erreur Then Ev:=0 Else Ev:=Tab[Chaine[1]];
  C_Est_Bon:=Not Erreur;
End;



procedure trouvelesvaleurs;
var i,j,k:byte;
    cestbon:boolean;
begin
  For i:=1 to 6 do va[i]:=0;
  inc(encours);
  combiendevaleurs:=1;
  i:=encours;
  while true do
  begin
    j:=i;
    if i>=length(li) then
    begin
      lireligne;encours:=1;i:=1;j:=1;
    end;
    while not ( li[i] in[',',';'] ) and (i<=length(li))  do inc(i);
    If (li[i]=';') and (li[i-1]=')') and not (casepos in [49..54,56] ) then k:=i-1 else k:=i;
    va[combiendevaleurs]:=Ev(copy(li,j,k-j),cestbon);
    if (not cestbon) then sortie(Param);
    if not(dessinvalide) then exit;
    if (li[i]=')') or (li[i]=';') then
    begin
      if li[i+1]=';' then encours:=i+1 else encours:=i;
      exit;
    end;
    inc(i);inc(combiendevaleurs);
  end;
end;

procedure trou(n:byte);
begin
  Assigner(va[1],0,0,Points[1]);
  Assigner(Va[1],Va[2],0,Points[2]);
  Assigner(0,va[2]+va[1]*sin(PI/6),0,Points[3]);
  NbredePts:=3;
  Revol(n,False);
end;

procedure pyramide(vu:Boolean);
Begin
  if (nbredepts>2) then
  Begin
    if (combiendevaleurs>=3) and (va[3]>0) then
    Begin
      Assigner(va[1],va[2],va[3],v40);
      pyra(v40,NbSolide,vu);
      grandefacette(false,-quelfac,0);
    End Else sortie(Param);
  end else sortie(Pasde);
End;

procedure zax(a:xyz);
Var Pour:Integer;
Begin
  For pour:=debutforme to NbSolide do
  Begin
    If a=x then
    begin
      ROTATION('Y',pour,-90);
      ROTATION('X',pour,90);
      ROTATION('Z',pour,180);
    End Else
    Begin
      ROTATION('X',Pour,-90);
      ROTATION('Y',pour,-90);
    End;
  End;
End;

Function precedent(N:Byte):Byte;
Begin
  If N=1 then precedent:=NbredePts else precedent:=n-1;
end;

Function suivant(N:Byte):Byte;
Begin
  If N=NbredePts then suivant:=1 else suivant:=n+1;
end;

Procedure creefacette(debut,fin:byte);
Var courant,comb:byte;
Begin
  NbredePtsbis:=NbredePts;Pointsbis:=Points;Comb:=0;
  courant:=debut;while courant<>suivant(fin) do
  Begin
    Inc(comb);Points[comb]:=pointsbis[courant];
    courant:=suivant(courant);
  End;
  NbredePts:=comb;
End;

Procedure Preetire(deCombien:Single;vu:boolean;Const Rens:Tgenre);
Var suite:Boolean;
    i,debut,fin:byte;
Function alinterieur(lui,debut,fin:byte):boolean;
var courant:byte;
    bon:boolean;
Begin
  bon:=(pointsagauche(lui,debut,fin)>0);
  courant:=suivant(debut);
  While (courant<>suivant(fin)) and bon do
  Begin
    bon:=bon and (pointsagauche(lui,courant,precedent(courant))>0);
    courant:=suivant(courant);
  End;
  alinterieur:=bon;
End;
 Function Distance(i,j:byte):Single;
Begin
  Distance:=Sqrt(sqr(Points[i,x]-Points[j,x])+sqr(Points[i,y]-Points[j,y]));
End;

Procedure supprimer(debut,fin:byte);
Var courant:byte;
    sup_points:pleindepoints;
    Sup_NbredePts:Integer;
Begin
  Sup_NbredePts:=0;
  courant:=suivant(fin);while courant<>debut do
  Begin
    Inc(Sup_NbredePts);
    Sup_Points[Sup_NbredePts]:=points[courant];
    courant:=suivant(courant);
  End;
  points:=Sup_points;NbredePts:=Sup_NbredePts;
  If Nbredepts<3 then
  begin
    SortieDebug(pasde);
    if not(dessinvalide) then exit;
  end;
End;

function NbredePtsentre(debut,fin:byte):Byte;
Var tempo,courant:byte;
Begin
  If debut=fin then
  begin
    NbredePtsentre:=0;exit;
  end;
  if suivant(debut)=fin then
  begin
    NbredePtsentre:=1;exit;
  end;
  courant:=suivant(debut);
  tempo:=0;
  While courant<>fin do
  Begin
    inc(tempo);
    courant:=suivant(courant);
  End;
  NbredePtsentre:=tempo;
End;

Function convexe(debut,Fin:byte):Boolean;
Var courant:byte;
    bon:boolean;
Begin
  bon:=(pointsagauche(debut,fin,precedent(fin))>=0) and (pointsagauche(suivant(debut),debut,fin)>=0)
  and (pointsagauche(fin,precedent(fin),precedent(precedent(fin)))>=0);
  courant:=suivant(debut);
  while (courant<>fin) and bon do
  Begin
    bon:=bon and (pointsagauche(suivant(courant),courant,precedent(courant))>=0);
    courant:=suivant(courant);
  End;
  convexe:=bon;
end;

Procedure desaligne;       { efface des points intermédiaires trop raprochés ou alignés par trois }
Var courant:Byte;
    bon:boolean;
Begin
  bon:=false;
  While not bon do
  Begin
    bon:=true;
    courant:=1;
    While (courant<NbredePts) And Bon do
    Begin
      bon:=true;
      If distance(courant,precedent(courant))<0.2 then
      begin
        bon:=false;
        supprimer(courant,courant);
      end;
      courant:=suivant(courant);
    End;
    courant:=1;
    While (courant<NbredePts) and bon do
    Begin
      If abs(Pointsagauche(suivant(courant),courant,precedent(courant)))<=0.2 then
      Begin
        Supprimer(courant,courant);
        bon:=false;
      End;
      courant:=suivant(courant);
    End;
    If pointsagauche(1,nbredepts,precedent(byte(nbredepts)))=0 then supprimer(Nbredepts,NbredePts);
  End;
End;

Function Decompose(var debut,fin:byte):Boolean;        { décompose des profils convexes }
Var i,lepluspro,leplus,courant,marchant:byte;
    oncontinue:boolean;

Begin
  decompose:=false;debut:=0;fin:=0;
  desaligne;
  if convexe(1,NbredePts) then begin decompose:=true;exit;end;
  If NbredePts<{=}3 then
  begin
     sortieDebug(pasde);
     if not(dessinvalide) then exit;
  end;
  Courant:=1;leplus:=0;
  While courant<>NbredePts do
  Begin
    marchant:=suivant(suivant(courant));oncontinue:=true;
    while (marchant<>courant) and oncontinue do
    begin
      lepluspro:=NbredePtsentre(courant,marchant);
      If convexe(courant,marchant) then
      Begin
        i:=suivant(marchant);
        while (i<>courant) and oncontinue do
        begin
          oncontinue:=oncontinue and not alinterieur(i,courant,marchant);
          i:=suivant(i);
        end;
        if oncontinue then
        Begin
          if lepluspro>leplus then
          Begin
            leplus:=lepluspro;debut:=courant;fin:=marchant;
          End;
        end else oncontinue:=false ;
      end else oncontinue:=false;
      marchant:=suivant(marchant);
    end;
    courant:=suivant(courant);
  end;
End;

Function lemax:byte;
var nu,i:byte;
    maxi:single;
begin
  nu:=1;
  maxi:=points[1,y];
  for i:=2 to nbredepts do if points[i,y]>maxi then
  begin
    maxi:=points[i,y];
    nu:=i;
  end;
  lemax:=nu;
end;

Begin
  Nbredeptsdebug:=nbredepts;
  pointsdebug:=points;
  for i:=1 to nbredepts do points[i,z]:=0;
  If distance(nbredepts,Nbredepts-1)<0.2 then dec(Nbredepts);
  if nbredepts=0 then sortiedebug(pasde);
  if not(dessinvalide) then exit;
  i:=lemax;
  If pointsagauche(suivant(i),i,precedent(i))<0 then for i:=1 to nbredepts do points[i]:=pointsdebug[nbredepts-i+1];
  suite:=false;
  While not suite do
  Begin
    suite:=decompose(debut,fin);
    If not suite then
    Begin
      If debut=0 then
      begin
         SortieDebug(pasde);
         if not(dessinvalide) then exit;
      end;
      creefacette(debut,fin);
      desaligne;
      unedeplus(Rens);
      if nbredepts>2 then
      begin
        if rens=pyram then pyramide(vu) else  etire(deCombien,NbSolide,vu);
      end else
      begin
         sortieDebug(Pasde);
         if not(dessinvalide) then exit;
      end;
      points:=pointsbis;
      NbredePts:=NbredePtsbis;
      supprimer(suivant(debut),precedent(fin));
      desaligne;
    End;
  End;
  unedeplus(Rens);
  desaligne;
  if nbredepts>2 then
  begin
    if rens=pyram then pyramide(vu) else  etire(deCombien,NbSolide,vu);
  end else
  begin
   sortieDebug(Pasde);
   if not(dessinvalide) then exit;
  end;
End;

Procedure Transrot(c,autourde:Char;argument:Single);
Var i:Integer;
begin
  For I:=DebutForme To NbSolide Do If c='R' then rotation(autourde,i,argument) else translation(autourde,i,argument);
End;

procedure Symetrie(a:xyz;pour:Integer);
var t:Integer;
    i:byte;
    tempo:vecteur;

procedure decale;
var j:Integer;
begin
  With La_Facette[t]^ do
  begin
    tempo:=valeur[1];
    for j:=1 to combien-1 do valeur[j]:=valeur[j+1];
    valeur[combien]:=tempo;
  end;
end;

begin
  For t:=depart[pour] to Finsol[pour] do With La_Facette[t]^ do
  Begin
    for i:=1 to combien do
    begin
      points[i]:=valeur[i];
      points[i,a]:=-points[i,a];
    end;
    For i:=1 to Combien do valeur[i]:=points[combien-i+1];
    decale;
    decale;
  end;
end;

begin
  topo:=true;
  Couleurencours:=0;
  Pieceencours:=1;
  NbSolide:=0;
  NbSolide_vrai:=0;
  NbrequelFacs:=0;
  For pour:=1 to Nbrefacette do if La_Facette[pour]<> nil then reallocmem(La_Facette[pour],0);
  Nbrefacette:=0;
  nbredepts:=0;
  ysource:=0;
  yadespieces:=False;
  For Pour:=2 to 8 Do T_Val[Pour]:=0;T_Val[7]:=PI;
  fillchar(p,sizeof(p),0);
  fillchar(ligne,sizeof(ligne),0);
  animevalide:=false;
  For Pour :=1 To MaxSolide Do Couleur_piece[Pour]:=0;
  numerodeligne:=0;
  commentaire:=false;
  dessinvalide:=true;
  while (numerodeligne<form1.Richedit1.lines.count) do
  begin
  if not(dessinvalide) then exit;
    lireligne;
    while (length(li)>0) and dessinvalide do
    begin
      encours:=1;
      while not (li[encours] in ['(',';',':','=']) and (encours<=length(li)) do
      inc(encours);
      debut:=copy(li,1,encours-1)+'****';
      Casepos:=pos(debut,
      'TX**TY**TZ**RX**RY**RZ**CYL*NS**'+
      'BORGARBRPOLYELLICERCOBLOCONESPH*'+
      'SOLEVUE*PT**ECHEPAR*ETIRDEBUFACE'+
      'CENTCAVAROTAPIECANIMMANUATANSAUV'+
      'FUSICOUPINTEETIXETIYETIZREVOPYRA'+
      'REVXREVYREVZPYRXPYRYPYRZPLANCOUL'+
      '****V***W***R***S***T******MA***'+
      'IFU*SYMXSYMYSYMZEULE');
      {x   x   x   x   x   x   x   x   }
      If (casepos-1) Mod 4=0 then Casepos:=Casepos div 4+1
                             else sortie('Syntaxe ligne N° '+Strint(Numerodeligne+1)+' : '+li);
      if dessinvalide then if casepos in [7,9,10,15,16,21,22,30,36..46] then
      Begin
        DebutForme:=NbSolide+1;
        if not topo then sortie('Opération topologique ?') else topo:=false;
       End;
      if dessinvalide then If casepos in [33,34,35] then
      Begin
        topo:=true;
        inc(NbSolide_vrai);
      end;
      if dessinvalide then For pour:=1 to 6 do va[pour]:=0;
      If casepos in [1,2,3,4,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,25,27,28,29,31,36,37,38,40,44,45,46,47,48,57,61] then trouvelesvaleurs;
      if dessinvalide then
      Case casepos of
        1..6:if (va[3]=0)  then
             Begin
               IF va[2]=0 Then
               Begin
                 If Topo Then sortie('Pas de La_Facette en cours') Else If casepos<4 Then transrot('T',debut[2],va[1]) else Transrot('R',debut[2],va[1]);
               End Else
               Begin
                 For pour:=1 to NbSolide do If (Piece[Pour] = byte(Round(va[2]))) Then If casepos<4 Then translation(debut[2],pour,va[1])
                                                                                  else ROTATION(debut[2],pour,va[1]);
               End;
             End;
           7:if (va[1]<=0) or (va[2]<=0) then sortie('Rayon et Hauteur >0') else
             begin
                unedeplus(Cyl);
                Cercle_Rapide(va[1]);
                etire(va[2],NbSolide,false);
             end;
           8:begin
               if li[encours]=':' then inc(encours);
               TrouvelesValeurs;
               if (va[1]>=8) and (va[1]<=MaxNS) then ns:=round(va[1]) else ns:=32;
               Remplir_Nus;
             end;
           9:begin
               if (va[1]<=0) or (va[2]<=0) then sortie('Rayon et Hauteur >0');
               unedeplus(Borgne);
               trou(NbSolide);
               p[NbSolide]:=2;
             end;
           10:begin
                unedeplus(Arbr);
                if (va[1]<=0) or (va[2]<=0) or not((va[3]<va[1]) and (va[5]<va[1])) or (va[4]>=90) or (va[6]>=90) or ((va[3]=0) and (va[5]=0)) then sortie(Param);
                arbre(NbSolide);
                p[NbSolide]:=1;
              end;
           11:if (va[2]>2) and (va[2]<40) then ellipse(va[1],va[1],round(va[2])) else sortie(Param);
           12:if (va[1]>0) and (va[2]>0) then ellipse(va[1],va[2],ns) else sortie(Param);
           13:cercle(va[1],va[2],va[3],va[4],va[5],va[6]=0);
           14:if (va[1]>0) and (va[2]>0) then OBLONG else sortie(Param);
           15:if (combiendevaleurs=3) and ((va[1]>0) or (va[2]>0)) and (va[3]>0) then
              begin
                unedeplus(Con);
                Cone(NbSolide);
              end else sortie(Param);
           16:begin
                unedeplus(Spher);
                sphere(NbSolide);
              end;
           17:{Assigner(va[1],va[2],va[3],vlampe)};

           19:begin
                inc(nbredepts);
                if (nbredepts>MaxPoints) then sortie('Trop de points');
                if (combiendevaleurs<2) then sortie('L''instruction Pt(); nécessite au moins 2 arguments !');
                Assigner(va[1],va[2],va[3],points[nbredepts]);
              end;
           20:{if Premiere_Passe then
              if (va[1]>0) and (va[1]<30) then loupe:=va[1] else sortie(Param)};
           21:begin
                unedeplus(Paral);
                if (va[1]<=0) or (va[2]<=0) or (va[3]<=0) then sortie('Dimensions strictement positives')
                                                          else par(va[1],va[2],va[3],NbSolide,true);
              end;
           22:begin
                if Nbredepts<3 then sortie('Profil défini par '+strint(nbredepts)+' points ?');
                if va[1]<=0 then sortie('Paramétre strictement positif !') else Preetire(va[1],va[2]=1,etir);
                Finsol[NbSolide]:=Nbrefacette;
              end;
           23:;
           24:if (nbredepts<>0) then
                begin
                  for iii:=1 to combiendevaleurs do interne[iii]:=points[round(va[iii])];
                  newfacette(combiendevaleurs,-quelfac);
                end             else sortie(Pasde);
           27:Begin
                Transrot('R','X',va[3]);
                Transrot('R','Y',-va[2]);
                Transrot('R','Z',va[1]);
              End;
           28:Begin
                iii:=Round(va[1]);
                If (iii<1) Or (iii>255) Then Sortie(Param);
                For Pour :=1 to NbSolide do If Piece[Pour]=iii Then
                    sortie('Déjà attribué');
                Pieceencours:=iii;
                If Round(Va[2]) in [1..7] Then Couleur_Piece[iii]:=Round(Va[2]);
                Yadespieces:=True;
              End;
          29:if not modeanimation then
             begin
                animevalide:=true;
                if Anime_Inf<>Va[1] then Anime_Inf:=Va[1];
                if Anime_Sup<>Va[2] then Anime_Sup:=Va[2];
                if Anime_Iter<>Round(Va[3])
                then
                begin
                  Anime_Iter:=Round(Va[3]);
                  form2.scrollbar6.max:=anime_iter;
                  form2.scrollbar6.min:=0;
                  form2.scrollbar6.position:=0;
                  form2.scrollbar6.visible:=true;
                end;
                T_Val[1]:=Anime_Inf+form2.scrollbar6.position*(Anime_Sup-Anime_Inf)/Anime_Iter;
             end                   else  T_Val[1]:=Anime_Inf+pourmemo*(Anime_Sup-Anime_Inf)/Anime_Iter;
           30:unedeplus(Fac);
           31:Begin
                 T_Val[8]:=ATAN(va[2],va[1]);
              End;
           33..35:begin
                     For Pour := Debutforme to NbSolide do p[Pour]:=casepos-32;
                     If (casepos=35) then if ((NbSolide-debutforme)>0) then
                     begin
                       debut:='';
                       sortiedebug ('Cette forme doit être convexe');
                     end;
                  end;
           36,37,38:begin
                      if va[2]=va[1] then sortie(Param);
                      if va[2]<va[1] then
                      begin
                        vaechange:=va[2];
                        va[2]:=va[1];
                        va[1]:=vaechange;
                      end;
                     if (nbredepts>=3) then preetire(va[2]-va[1],va[3]=1,etir) else sortie('Profil défini par '+strint(nbredepts)+' points ?');
                     Finsol[NbSolide]:=Nbrefacette;
                     case casepos of
                       36:begin
                            Zax(x);
                            Transrot('T','X',va[1]);
                          end;
                       37:begin
                            Zax(y);
                            Transrot('T','Y',va[1]);
                          end;
                       38:Transrot('T','Z',va[1]);
                    end;
                  end;
           39,41,42,43:Begin
                         if (nbredepts<>0) then pre_revol else sortie(Pasde);
                         Finsol[NbSolide]:=Nbrefacette;
                         case casepos of
                           41:Zax(x);
                           42:Zax(y);
                         End;
                      End;
             40,46:preetire(0,va[4]=1,pyram);
             44:Begin
                  preetire(0,va[4]=1,pyram);
                  Finsol[NbSolide]:=Nbrefacette;
                  Zax(x);
                End;
             45:Begin
                  preetire(0,va[4]=1,pyram);
                  Finsol[NbSolide]:=Nbrefacette;
                  Zax(y);
                End;
             48:if va[1]>=0 then if va[1]<=7 then CouleurEncours:=byte(Round(VA[1]));
            { 49;}
             50..54,56:Begin
                         if li[encours]=':' then inc(encours);
                         TrouvelesValeurs;
                         T_Val[Casepos-48]:=Va[1];
                       End;
              57:If (va[1]<>T_Val[1]) then li:='';
              58,59,60:if (va[2]=0) or (va[2]=T_Val[1]) then
                       Begin
                         Case Casepos of
                           58:Axe:=Z;
                           59:Axe:=x;
                           60:Axe:=y;
                         End;
                         if li[encours]='(' then trouvelesvaleurs;
                         IF va[1]=0 Then
                         Begin
                           If Topo Then sortie(solideencours) Else For Pour:=Debutforme to NbSolide Do Symetrie(axe,pour);
                         End        Else For pour:=1 to NbSolide do If (Piece[Pour] = byte(Round(va[1]))) Then Symetrie(axe,pour);
                       End;
           61:Begin
                IF va[4]=0 Then
                Begin
                  If Topo Then sortie(solideencours)  Else
                  Begin
                    transrot('R','Z',va[3]);
                    transrot('R','X',va[2]);
                    transrot('R','Z',va[1]);
                  End;
                End Else
                  Begin
                    For pour:=1 to NbSolide do
                      If (Piece[Pour] = byte(Round(va[4]))) Then
                      Begin
                        ROTATION('Z',pour,va[3]);
                        ROTATION('X',pour,va[2]);
                        ROTATION('Z',pour,va[1]);
                      End;
                  End;
                End;
      End;
      if dessinvalide then If not (casepos in [19,11,12,14,24,13]) then nbredepts:=0;
      if dessinvalide then If NbSolide>0 then Finsol[NbSolide]:=Nbrefacette;
      delete(li,1,encours);inc(xsource,encours);
    end;
   inc(numerodeligne);
  end;
  if dessinvalide then if not topo then sortie('Opération topologique manquante !');
  if dessinvalide then If NbSolide<MaxSolide then
  Begin
    unedeplus(paral);
    par(1100,2500,2500,NbSolide,false);
    p[NbSolide]:=2;
    Finsol[NbSolide]:=Nbrefacette;
    La_Facette[NbreFacette-3]^.endroit:=255;
    For Pour:=1 to NbSolide do if couleur[Pour]=0 then
    begin
       case p[pour] of
          1:couleur[pour]:=4;
          2:couleur[pour]:=1;
          3:couleur[pour]:=2;
        end;
    end;
    dec(NbSolide);
  End;
  nbrefacette:=Finsol[NbSolide];
  Bandeau('Vue('+strg(radtodeg(Latitude))+','+strg(radtodeg(Longitude))+','+strg(radtodeg(Roulis))+'), Echelle='+strg(loupe)+', '+
     inttostr(NbSolide_vrai)+' Formes, '+inttostr(Nbrefacette)+' facettes, U='+strg(t_val[1]));
  form2.SpeedButton4.enabled:=dessinvalide and animevalide;
  form2.ScrollBar6.enabled:=form2.SpeedButton4.enabled;
  Aide('Exemple de ligne de commande : Pt(0,20);Pt(0,0);Cercle(10,10,10,-90,90,0);   EtiZ(-5,8,1);  Tx(20);                Fusion;','                                                     Eventuellement Contour                               Primitive        Déplacement     Opération topologique')
end;

Procedure tform1.Relecture;
Begin
  NS:=24;
  Remplir_Nus;
  fillchar(La_Facette[0]^,dimpaspoint+12*3,0);
  With La_Facette[0]^ do
  begin
    assigner(100,0,0,valeur[1]);
    assigner(0,100,0,valeur[2]);
    assigner(0,0,100,valeur[3]);
    combien:=3;
  End;
  lecture;
  remplirmat(Latitude,Longitude,Roulis,Loupe);
End;

procedure troisvues;
var    dispo,prise,interh,interv:single;
       OldLoupe:Single;
begin
  OldLoupe:=Loupe;
  remplirmat(Latitude,Longitude,Roulis,1);
  rotgene;
  encombrement;
  dispo:=getmaxy-10-30;
  prise:=(gmax[z]-gmini[z]+gmax[x]-gmini[x]);
  Loupe:=dispo/prise;
  dispo:=getmaxx-10-30;
  prise:=gmax[y]-gmini[y]+gmax[x]-gmini[x];
  if dispo/prise<Loupe then Loupe:=dispo/prise;
  If OldLoupe<Loupe Then  position_coupe:=plan_de_coupe_Op[x]*loupe;
  prise:=(gmax[y]-gmini[y]+gmax[x]-gmini[x])*Loupe;
  interh:=(getmaxx-prise)/3;
  prise:=(gmax[z]-gmini[z]+gmax[x]-gmini[x])*Loupe;
  interv:=(getmaxy-10-prise)/3;
  vues[1]:='Face';
  mx[1]:=round(interh-gmini[y]*Loupe);
  mx[2]:=mx[1]+round(gmax[y]*Loupe+interh-gmini[x]*Loupe);
  mx[3]:=mx[1];mangle[2]:=90;
  vues[2]:='Gauche';
  my[1]:=round(interv+gmax[z]*Loupe);
  my[2]:=my[1];
  my[3]:=my[1]+round(-gmini[z]*Loupe+interv-gmini[x]*Loupe);
  mangle[3]:=90;
  vues[3]:='Dessus';
end;

Procedure Trace_1_ou_3(trois:Boolean);
Begin
  If Not Une_Vue then
  Begin
    If Trois Then troisvues
    Else
    Begin
      remplirmat(Latitude,Longitude,Roulis,1);
      rotgene;
    End;
    If Une_Vue Then exit;
    milx:=mx[1];mily:=my[1];
    remplirmat(0,0,0,loupe);
    rotgene;
    cache(1);
    milx:=mx[2];
    mily:=my[2];
    form1.Relecture;
    remplirmat(Latitude,Longitude,Roulis,Loupe);rotgene;
    rotation('Z',0,mangle[2]);
    If mangle[2]=90 then position_coupe:=-plan_de_coupe_Op[y] else position_coupe:=plan_de_coupe_Op[y] ;
    remplirmat(0,0,0,1);rotgene;Cache(2);
    milx:=mx[3];mily:=my[3];
    form1.Relecture;
    remplirmat(Latitude,Longitude,Roulis,Loupe);
    rotgene;
    rotation('Y',0,mangle[3]);
    If mangle[3]=90 then position_coupe:=plan_de_coupe_Op[z] else position_coupe:=-plan_de_coupe_Op[z] ;
    remplirmat(0,0,0,1);
    rotgene;
    Cache(3);
    milx:=mx[1];
    mily:=my[1];
  End else
  Begin
    Vues[1]:='';
    remplirmat(Latitude,Longitude,Roulis,Loupe);
    rotgene;position_coupe:=plan_de_coupe_Op[x];
    Cache(1);
    If Rep Then Tracerepere;
  End;
End;

Procedure rectangledencombrement(var xmini,xmaxi,ymini,ymaxi:Integer);
var i,a,b,miniy,maxy,miniz,maxz,t,lesolide:integer;
begin
  miniy:=30000;
  maxy:=-miniy;
  miniz:=miniy;
  maxz:=maxy;
  form1.relecture;
  RemplirMat(Latitude,Longitude,Roulis,1);
  For Lesolide:=1 to NbSolide do if p[lesolide]{<>2}=1 then
  For t:=depart[lesolide] to finsol[lesolide] do With La_Facette[t]^ do
  begin
    for i:=1 to combien do
    begin
      a:=round(scal(d[y],valeur[i]));
      b:=round(scal(d[z],valeur[i]));
      maxy:=max(maxy,a);
      miniy:=min(miniy,a);
      maxz:=max(maxz,b);
      miniz:=min(miniz,b);
    end;
  end;
  xmini:=miniy;xmaxi:=maxy;ymini:=miniz;ymaxi:=maxz;
end;

procedure dessine;
begin
  Cleardevice;
  form1.relecture;
  if (NbSolide=0) or not(dessinvalide) then exit;
  C_CBoo[1]:=0;
  C_CBoo[2]:=0;
  C_CBoo[3]:=0;
  Mx[0]:=Milx;
  My[0]:=Mily;
  if dessinvalide then
  begin
    If Visu=Contour_Couleur Then
    Begin
      Trace_1_OU_3(true);
      form1.Relecture;
      Visu:=contour;
      Trace_1_OU_3(False);
      Visu:=Contour_Couleur;
     End                     Else  Trace_1_OU_3(true);
    end;
end;

procedure tform1.changementvue;
begin
  form2.SpeedButton1.enabled:=not yadespieces;
  form2.SpeedButton3.enabled:=not yadespieces;
  relecture;
  remplirmat(Latitude,Longitude,Roulis,Loupe);
  if dessinvalide then if enfacecachee then dessine else trace;
end;

Function peutonsetirer:boolean;
var s:tobject;
begin
   peutonsetirer:=false;
   If fichiermodifie then
  begin
     Dialogvaleur:=MessageDlg('Sauver le fichier ?', mtConfirmation,
      [mbYes,mbno,mbcancel], 0);
     Case dialogvaleur of
       id_yes:form1.Sauver1Click(S);
       id_Cancel:peutonsetirer:=true;
     end;
  end;
end;

procedure TForm1.Lire1Click(Sender: TObject);
begin
  if peutonsetirer then exit;
  if openDialog1.execute then
  Begin
     init;
     form2.SpeedButton9.caption:='Historique';
     form2.SpeedButton9.font.Color:=ClBlack;
     Form2.ScrollBar3.Position:=0;
     Form2.ScrollBar1.Position:=0;
     Form2.ScrollBar2.Position:=0;
     NomdeFichier:=Opendialog1.filename;
     Richedit1.lines.LoadFromFile(NomdeFichier);
     Richedit1.SelsTart:=0;
     If Uppercase(ExtractfileExt(Nomdefichier))='.SUW' then Nomdefichier:='sansnom';
     nomdefichier:=changefileext(nomdefichier,'');
     Form2.Caption :=' Cad5W  '+ExtractFilename(NomdeFichier);
     Cleardevice;
     relecture;
     loupe:=3;
     remplirmat(Latitude,Longitude,Roulis,Loupe);
     if dessinvalide then
     begin
       cava:=true;
       travailajuster(min(form2.width-30,getmaxx),min(form2.height-60,getmaxy));
     end;
     fichiermodifie:=False;
     form2.scrollbar6.position:=0;
     coloration;
  End;
end;

procedure TForm1.Pressepapier1Click(Sender: TObject);
begin
   ClipBoard.Assign(form2.Image1.picture);
end;

procedure Animation;
var co,li,pour,vieuxgetmaxx,vieuxgetmaxy,pourco,pourli,bouclemily,bouclegetmaxx,bouclegetmaxy,vieuxanime_iter,
    miniy,maxy,miniz,maxz:Integer;
    tempohauteur,tempolargeur,l1,l2:single;
begin
  sauvecontexte;
  form1.relecture; if NbSolide=0 then exit;
  if (Anime_iter=0) or (Anime_inf>=Anime_Sup) then exit;
  vieuxanime_iter:=anime_iter;
  modeanimation :=true;
  vieuxgetmaxx:=getmaxx;
  vieuxgetmaxy:=getmaxy;
  rectangledencombrement(miniy,maxy,miniz,maxz);
  begin
    tempolargeur:=(maxy-miniy);if tempolargeur=0 then exit;
    tempohauteur:=(maxz-miniz);if tempohauteur=0 then exit;
    if tempolargeur<(tempohauteur/2) then
    begin
       co:=5;
       li:=1;
    end                              else
    if tempolargeur<(tempohauteur) then
    begin
      co:=3;
      li:=1;
    end                              else
    if (tempolargeur/2)>(tempohauteur) then
    begin
      co:=2;
      li:=4;
    end                              else
    begin
      co:=3;
      li:=2;
    end;
    While co*li<anime_iter do
    begin
      inc(co);
      if co*li<anime_iter then inc(li);
    end;
    getmaxx:=getmaxx div co;
    getmaxy:=getmaxy div li;
    l1:=getmaxx/(tempolargeur*1.15);
    l2:=getmaxy/(tempohauteur*1.15);
    if l1>l2 then loupe:=l2 else loupe:=l1;
    milx:=round( -miniy*loupe +15);
    mily:=round(maxz*loupe+15);
    bouclegetmaxx:=getmaxx;
    bouclegetmaxy:=getmaxy;
    getmaxx:=vieuxgetmaxx;
    getmaxy:=vieuxgetmaxy;
    Cleardevice;
    bouclemily:=mily;
    milx:=milx-bouclegetmaxx;
    For pourco:=1 to co do
    begin
      inc(milx,bouclegetmaxx);
      mily:=bouclemily-bouclegetmaxy;
      for pourli:=1 to li do
      begin
         inc(mily,bouclegetmaxy);
        pourmemo:=(pourli-1)*co+pourco;
        if pourmemo<vieuxanime_iter then
        begin
          form1.Relecture;
          C_CBoo[1]:=0;C_CBoo[2]:=0;C_CBoo[3]:=0;
          Mx[0]:=Milx;My[0]:=Mily;
          if dessinvalide then
          begin
            If Visu=Contour_Couleur Then
            Begin
              remplirmat(Latitude,Longitude,Roulis,Loupe);
              rotgene;position_coupe:=plan_de_coupe_Op[x];
              Cache(1);
              form1.Relecture;
              Visu:=contour;
              remplirmat(Latitude,Longitude,Roulis,Loupe);
              rotgene;
              position_coupe:=plan_de_coupe_Op[x];
              Cache(1);
              Visu:=Contour_Couleur
            End  else
            begin
              remplirmat(Latitude,Longitude,Roulis,Loupe);
              rotgene;
              position_coupe:=plan_de_coupe_Op[x];
              Cache(1);
              Form2.image1.repaint;
            end;
          end;
        End;
      end;
    end;
 end;
 restituecontexte;
 modeanimation:=false;
end;

procedure TForm1.Apropos1Click(Sender: TObject);
begin
  Aboutbox.copyright.caption:='Cad5';
  Aboutbox.productname.caption:='Montero-Ribas';
  Aboutbox.showmodal
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if peutonsetirer then canclose:=false;
end;

procedure TForm1.Nouveau1Click(Sender: TObject);
begin
  if peutonsetirer then exit;
  Richedit1.clear;
  form2.SpeedButton9.caption:='Historique';
  form2.SpeedButton9.font.Color:=ClBlack;
  init;
  fichiermodifie:=false;
  Richedit1.lines[1]:='';
  changementvue;
end;

procedure TForm1.Cercle1Click(Sender: TObject);
begin
   Aide('Cercle(R,abscisse,ordonnée,Arc_debut,Arc_fin,Tri=0/1);','Suivant la primitive choisie : EtiZ,RevY: Plan XOY, EtiX,RevZ: Plan YOZ, EtiY,RevX: Plan ZOX');
   Insertion('Cercle(,,,,,);',7);
end;

procedure TForm1.Oblong1Click(Sender: TObject);
begin
  Aide('Oblong(Rayon,Longueur); Rayon et Longueur > 0. Longueur entre centres','Suivant la primitive choisie : EtiX : L sur Z, EtiY : L sur X, EtiZ : L sur Y');
  Insertion('Oblong(,);',3);
end;

procedure TForm1.Ellipse1Click(Sender: TObject);
begin
  Aide('Ellipse(Rayon1,Rayon2); Rayon1 et Rayon2 >0','');
  Insertion('Ellipse(,);',3);
end;
{ procedure eti(c:char;s:str4);
begin
  bandeau('Eti'+c+'('+c+'mini,'+c+'Maxi,0 ou 1); Etirage suivant '+c+' d''un contour de '+s);
  Insertion('Eti'+c+'(,,1);',5);
end; }
procedure TForm1.E1Click(Sender: TObject);
begin
  {eti('X','YOZ');}
   Aide('EtiX(Xmini,XMaxi,0 ou 1);','Etirage suivant X d''un contour de YOZ');
  Insertion('EtiX(,,1);',5);
end;

procedure TForm1.EtiY1Click(Sender: TObject);
begin
    Aide('EtiY(Ymini,YMaxi,0 ou 1);','Etirage suivant Y d''un contour de ZOX');
    Insertion('EtiY(,,1);',5);
end;

procedure TForm1.EtiZ2Click(Sender: TObject);
begin
   Aide('EtiZ(Zmini,ZMaxi,0 ou 1);','Etirage suivant Z d''un contour de XOY');
   Insertion('EtiZ(,,1);',5);
end;

procedure TForm1.RevX1Click(Sender: TObject);
begin
   Aide('Révolution / X d''un contour de ZOX','Rayon sur Z');
   Insertion('RevX;',0);
end;

procedure TForm1.RevY1Click(Sender: TObject);
begin
  Aide('Révolution / Y d''un contour de XOY','Rayon sur X');
  Insertion('RevY;',0);
end;

procedure TForm1.RevZ1Click(Sender: TObject);
begin
   Aide('Révolution / Z d''un contour de YOZ','Rayon sur Y');
   Insertion('RevZ;',0);
end;

procedure TForm1.PyrX1Click(Sender: TObject);
begin
   Aide('PyrX(Ys,Zs,Xs,0/1);','Pyramide de sommet Ys,Zs,Xs, base dans YOZ');
   Insertion('PyrX(,,,1);',6);
end;

procedure TForm1.PyrY1Click(Sender: TObject);
begin
   Aide('PyrY(Zs,Xs,Ys,0/1);','Pyramide de sommet Zs,Xs,Ys, base dans ZOX');
   Insertion('PyrY(,,,1);',6);
end;

procedure TForm1.PyrZ1Click(Sender: TObject);
begin
   Aide('PyrZ(Xs,Ys,Zs,0/1);','Pyramide de sommet Xs,Ys,Zs, base dans XOY');
   Insertion('PyrZ(,,,1);',6);
end;

procedure TForm1.Cyl1Click(Sender: TObject);
begin
   Aide('Cyl(Rayon,Hauteur); Rayon et Hauteur > 0','Axe Z, posé en O');
   Insertion('Cyl(,);',3);
end;

procedure TForm1.Cone1Click(Sender: TObject);
begin
   Aide('Cone(Rayonbas,Rayonhaut,Hauteur); Rayonbas et Rayonhaut >= 0, Hauteur > 0',
         'Axe Z, posé en O, Les deux rayons ne peuvent pas être nuls en même temps');
   Insertion('Cone(,,);',4);
end;

procedure TForm1.Par1Click(Sender: TObject);
begin
    Aide('Par(Profondeur,largeur,Hauteur); Profondeur,largeur,Hauteur >O',' parallélépipède placé dans le premier quadrant');
   Insertion('Par(,,);',4);
end;

procedure TForm1.Sphere1Click(Sender: TObject);
begin
  Aide('Sph(Rayon1,Rayon2); Rayon1 et Rayon2 > 0','Ellipsoïde centré en 0');
  Insertion('Sph(,);',3);
end;

procedure TForm1.Arbre1Click(Sender: TObject);
begin
   Aide('Arbre(Rayon,Hauteur,Chanfrein1,Angle1,Chanfrein2,Aangle2); Rayon,Hauteur>0, Chanfrein>=0, Angle en degrés (1 en bas)','Cylindre avec deux chanfreins d''axe Z, posé en O');
   Insertion('Arbre(,,,,,);',7);
end;

procedure TForm1.Borgne1Click(Sender: TObject);
begin
   Aide('Borgne(Rayon,Hauteur); Rayon, Hauteur>0, hauteur du cylindre seul','Cylindre terminé par un cône à 120° d''axe Z posé en O');
   Insertion('Borgne(,);',3);
end;

procedure TForm1.Tx1Click(Sender: TObject);
begin
   Aide('TX(valeur); ou TX(valeur,numéro de pièce);','Translation suivant X');
   Insertion('Tx();',2);
end;

procedure TForm1.Ty1Click(Sender: TObject);
begin
   Aide('TY(valeur); ou TY(valeur,numéro de pièce);','Translation suivant Y');
   Insertion('Ty();',2);
end;

procedure TForm1.Tz1Click(Sender: TObject);
begin
    Aide('TZ(valeur); ou TZ(valeur,numéro de pièce);','Translation suivant Z');
   Insertion('Tz();',2);
end;

procedure TForm1.Rx1Click(Sender: TObject);
begin
   Aide('RX(valeur); ou RX(valeur,numéro de pièce)','Rotation autour de X');
   Insertion('Rx();',2);
end;

procedure TForm1.Ry1Click(Sender: TObject);
begin
  Aide('RY(valeur); ou RY(valeur,numéro de pièce)','Rotation autour de Y');
  Insertion('Ry();',2);
end;

procedure TForm1.Rz1Click(Sender: TObject);
begin
   Aide('RZ(valeur); ou RZ(valeur,numéro de pièce)','Rotation autour de Z');
   Insertion('Rz();',2);
end;

procedure TForm1.Sym1Click(Sender: TObject);
begin
  Aide('Symétrie par rapport au plan OXY','');
  Insertion('SymXY;',0);
end;

procedure TForm1.SymYZ1Click(Sender: TObject);
begin
   Aide('Symétrie par rapport au plan OYZ','');
   Insertion('SymYZ;',0);
end;

procedure TForm1.SymZX1Click(Sender: TObject);
begin
  Aide('Symétrie par rapport au plan OZX','');
  Insertion('SymZX;',0);
end;

procedure TForm1.Euler1Click(Sender: TObject);
begin
  Aide('Euler(Psi,Theta,Phi{,numéro_de_pièce});','Paramétrage d''Euler');
  Insertion('Euler(,,);',4);
end;

procedure TForm1.NS1Click(Sender: TObject);
begin
   Aide('8 <= Ns <= 32','Nombre de segments discrétisant un cercle');
  Insertion('NS:=;',1);
end;

procedure TForm1.Piece1Click(Sender: TObject);
begin
   Aide('Piéce(Numéro,Couleur);','Couleur de 1 à 7');
   Insertion('Piece(,);',3);
end;

procedure TForm1.Couleur1Click(Sender: TObject);
begin
   Aide('Couleur(C);','Rouge=1,Vert=2,Jaune=3,Bleu=4,Magenta=5,Cyan=6,Gris=7');
   Insertion('Couleur();',2);
end;

procedure TForm1.Fusion1Click(Sender: TObject);
begin
  Aide('Fusion avec les formes précédentes appartenant à la même pièce','');
  Insertion('Fusion;',0);
end;

procedure TForm1.Coupe2Click(Sender: TObject);
begin
  Aide('Coupe des formes précédentes appartenant à la même pièce','');
  Insertion('Coupe;',0);
end;

procedure TForm1.Inter1Click(Sender: TObject);
begin
   Aide('Intersection avec les formes précédentes appartenant à la même pièce','ATTENTION : cette forme doit être CONVEXE');
  Insertion('Inter;',0);
end;

Procedure travailajuster(Lalargeur,lahauteur:Integer);
var delta,miniy,maxy,miniz,maxz:Integer;
    tempo,l1,l2:single;
begin
  rectangledencombrement(miniy,maxy,miniz,maxz);
  tempo:=(maxy-miniy);if tempo=0 then exit;
  l1:=lalargeur/(tempo*1.05);
  tempo:=(maxz-miniz);if tempo=0 then exit;
  l2:=lahauteur/(tempo*1.05);
  if l1>l2 then loupe:=l2 else loupe:=l1;
  delta:=lalargeur-round((maxy-miniy)*loupe);
  milx:=15+delta div 2 - round(miniy*loupe);
  delta:=lahauteur-round((maxz-miniz)*loupe);
  mily:=delta div 2 + round(maxz*loupe);
  form1.changementvue;
end;

procedure TForm1.Ajusteralecran1Click(Sender: TObject);
begin
  if  dessinvalide then travailajuster(getmaxx,getmaxy);
end;

procedure TForm1.Z1Click(Sender: TObject);
var tempo:boolean;
begin
   Loupe:=entrereel(0.1,10,loupe,tempo,'Nouvelle echelle ? (entre 0.1 et 10)');
   changementvue;
end;

procedure TForm1.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var curx,cury:Integer;
begin
   posxy(form1.Richedit1,curx,cury);
   bandeau(strint(curx)+','+strint(cury+1));
   fichiermodifie:=true;
   dessinvalide:=false;
end;


procedure TForm1.Sauverlimage1Click(Sender: TObject);
var JpegImg: TJpegImage;
begin
  form1.SavePictureDialog1.Filename:='Sansnom';
  If form1.SavePictureDialog1.execute then
  begin
    Nomdefichier:=form1.SavepictureDialog1.Filename;
    nomdefichier:=changefileext(nomdefichier,'.jpg');
    JpegImg := TJpegImage.Create;
  try
    JpegImg.Assign(Form2.image1.picture.Bitmap);
    JpegImg.SaveToFile(nomdefichier);
  finally
  JpegImg.Free
  end;
 end;
end;

procedure TForm1.Imprimer1Click(Sender: TObject);
var ScaleX, ScaleY: Integer;
  R: TRect;
begin
  if not (visu in [contour,facette]) then
  begin
    MessageDlg('Pas d''impression dans ce mode', mtWarning,[mbOk], 0);
    exit;
  end;
  Printer.BeginDoc;
  with Printer do
    try
      PrintScale:=poproportional;
      ScaleX := GetDeviceCaps(Handle, logPixelsx) div PixelsPerInch;
      ScaleY := GetDeviceCaps(Handle, logPixelsy) div PixelsPerInch;
      R := Rect(0, 0, form2.Image1.Picture.Width * ScaleX, form2.Image1.Picture.Height * ScaleY);
      Canvas.StretchDraw(R, form2.Image1.Picture.Graphic);
    finally
      EndDoc;
    end;
end;

procedure TForm1.Toutselectionner1Click(Sender: TObject);
begin
   form1.Richedit1.SelectAll;
end;

procedure TForm1.Supprimer1Click(Sender: TObject);
begin
   Form1.Richedit1.ClearSelection;
end;

procedure TForm1.Dfaire1Click(Sender: TObject);
begin
   form1.Richedit1.undo;
end;

procedure TForm1.dessusdessous1Click(Sender: TObject);
begin
  Form1.left:=0;
  form1.top:=0;
  if screen.height <getmaxy+20+100 then form1.height:=(Screen.height div 3) else  form1.height:=(Screen.height div 3);
  form2.left:=0;    
  form2.clientwidth:=min(Screen.width-40,bitmap.width+form2.panel1.width);
  form1.clientwidth:=min(Screen.width-40,bitmap.width+form2.panel1.width);
  form2.height:=min(Screen.height-60,getmaxy+20);
  form2.top:=60;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  form1.Setfocus;
end;

procedure TForm1.Aide1Click(Sender: TObject);        { Appel de l'aide qui était à l'ancien format windows 3 et mdifiée }
begin
 { Application.HelpFile := 'Cad5W.HLP';
  Application.HelpCommand(HELP_FINDER, 0);   }
  HtmlHelpShowContents;
end;

procedure dessin_Solide_en_Cours;
var pour,pourligne:Integer;
begin
  form1.relecture;
  if not dessinvalide then exit;
  for pour:=1 to NbSolide do if numero_vraie[pour]=Solide_en_Cours then
  begin
     Piece_a_dessiner:=piece[pour];
     With form2.SpeedButton9.Font do Case p[pour] of
       1:Color:=Clblue;
       2:Color:=Clred;
       3:Color:=ClGreen;
     end;
  end;
  form2.SpeedButton9.caption:='forme: '+strint(Solide_en_Cours)+#13+'pièce: '+strint(Piece_a_dessiner);
  if  Enfacecachee then dessine else
  begin
   Cleardevice;
   for pour:=1 to NbSolide do if piece[pour]=Piece_a_dessiner then tracelesolide(pour);
   tracerepere;
  end;
  form1.relecture;
  Feuille.Pen.Width:=2;
  for pour:=1 to NbSolide do if numero_vraie[pour]=Solide_en_Cours then
  begin
    tracelesolide(pour);
    pourligne:=pour;
  end;
  Feuille.Pen.Width:=1;
  Piece_a_dessiner:=0;
  If pourligne<form1.Richedit1.lines.count then
  begin
    form1.RichEdit1.lines[ligne[pourligne]]:=form1.RichEdit1.lines[ligne[pourligne]]+'<<<<';
    form1.RichEdit1.Perform(EM_SCROLLCARET, 0, 0);
  end;
  coloration;
end;

procedure TForm1.Memo1DblClick(Sender: TObject);
var xx,pour,k:Integer;
begin
  relecture;
  if not dessinvalide then exit;
  k:=0;
  posxy(form1.Richedit1,xx,k);
  for pour:=1 to NbSolide_vrai do if ligne[pour]=k then
  Begin
    Piece_a_dessiner:=piece[Pour];
    Solide_en_Cours:=numero_vraie[pour];
  end;
  if  Enfacecachee then dessine else trace;
  if Piece_a_dessiner=0 then
  begin
    otxy(25,10,'Pas de primitive dans cette ligne');
    exit;
  end;
  Dessin_Solide_en_Cours;
  Piece_a_dessiner:=0;
end;

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  form1.Setfocus;
end;

procedure TForm1.Label1MouseEnter(Sender: TObject);
begin
  label1.Font.Color:=clRed;
end;

procedure TForm1.Label1MouseLeave(Sender: TObject);
begin
   label1.Font.Color:=clblack;
end;

procedure TForm1.Label2MouseLeave(Sender: TObject);
begin
   label2.Font.Color:=clblack;
end;

procedure TForm1.Label2MouseEnter(Sender: TObject);
begin
  label2.Font.Color:=clRed;
end;

procedure TForm1.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
   If key in ['a'..'z'] then Aide('Utilisez le menu ci-dessus pour entrer les fonctions','');
end;
procedure debloque(s:string);
var Attributs : Word;
begin
  if FileExists(s) then  Attributs := FileGetAttr(s);
  if Attributs and faReadOnly = faReadOnly then
  begin
    FileSetAttr(s, Attributs and not faReadOnly);
  end;
end;

function GetTempDir: string;
var l: integer;
begin
  SetLength(result, MAX_PATH);
  l := Windows.GetTempPath(MAX_PATH, @result[1]);
  SetLength(result, l);
  if result[l] <>'\' then
  result := result + '\';
end;

procedure TForm1.Paint1Click(Sender: TObject);
var s1,s3:string;
begin
  s1:='Mspaint';s3:='';
  Nomdefichier:='temporaire.bmp';
  nomdefichier:=GetTempDir+changefileext(nomdefichier,'.bmp');
  try
    debloque(nomdefichier);
    Form2.image1.picture.SaveToFile(nomdefichier);
    ShellExecute (handle,'Open', PChar(s1)  ,PChar(Nomdefichier),PChar(s3),SW_SHOWNORMAL);
  finally
  end;
end;

procedure TForm1.RichEdit1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   form1.Setfocus;
end;

procedure TForm1.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   If key in ['a'..'z'] then
   begin
     form1.Label1.Font.Color:=clgreen;
     form1.Label1.Caption:='Utilisez le menu ci-dessus pour entrer les fonctions';
     form1.Label2.Caption:='';
   end;
end;

procedure TForm1.RichEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var curx,cury:Integer;
begin
  posxy(form1.richedit1,curx,cury);
  bandeau(strint(curx)+','+strint(cury+1));
  fichiermodifie:=true;
  dessinvalide:=false;
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  form1.Setfocus;
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  form1.Setfocus;
end;

end.
