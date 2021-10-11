unit generale;
// Auteur Montero-Ribas
// Logiciel sous license GNU GPL
interface
Uses Windows,graphics,SysUtils,Classes,dialogs;

Const Decran            = 900 ;
      MaxSolide         = 2000;
      MaxSolideParLigne = 128;
      MaxFacette        = 15000;
      MaxPiece          = 100;
      MaxPoints         = 240;
      MaxNS             = 48;
      ta:array [0..15] of Byte=(0,1,2,3,4,5,20,7,56,57,58,59,60,61,62,63);
      Solideencours='Pas de Solide en cours';
      Facette:Byte=1;
      Contour:Byte=2;
      Rendu256:Byte=4;
      Contour_Couleur:Byte=5;
      Facette_Couleur:Byte=6;
      dimpaspoint=1+4*4+1+16;  { Pourquoi + 16 ? : marche pas autrement ! }

type  XYZ=(x,y,z);
      Vecteur=Array [XYZ] of single;
      VecteurInteger=array [XYZ] of integer;
      pleindepoints=array[1..255] of vecteur;
      pleinIntegerdepoints=array[1..255] of VecteurInteger;
      matrice=array[XYZ] of Vecteur;
      { tableaux utilisés pour représenter l'intersection des solides avec un plan perpendiculaire à l'écran}
      tlinter=Array[-decran..decran+1] of Integer;
      tableauint= array [1..MaxSolideParLigne] of Tlinter;
      tlbyte= Array[-decran..decran+1] of Byte;
      tableaubyte=array [1..MaxSolideParLigne] of Tlbyte;
      ptfacette=^Une_facette;
      Une_facette=record                                                          { dimpaspoint+combien*12}
                    combien:shortint;                                            
                    endroit,minifacecran,maxifacecran,pentefac:integer;
                    enfaceobs:bytebool;
                    case integer of
                      1:(valeur:pleindepoints);
                      2:(valeurInteger:pleinIntegerdepoints);
                  end;
      T_Couleur=Array [1..255] of Tcolor;
      Tgenre= (Fac,Cyl,Paral,Etir,Borgne,Arbr,Con,Spher,Revo,Pyram);
      str2=string[2];
      Str4=String[4];
      Str12=String[12];
      Str20=String[20];
      Str80=String[80];

var a,b,c,d:matrice;
    Feuille:Tcanvas;
    La_Facette:Array[0..MaxFacette] of PtFacette;
    points,interne,PointsDebug:pleindepoints;
    Nbrefacette,NbSolide,NS,nbredepts,milx,mily,NbredeptsDebug,nbrequelfacs,Solide_en_Cours,NbSolide_vrai,Getmaxx,Getmaxy,epais,oldmilx,oldmily,
    grandminiy,grandmaxiy,grandminiypre,grandmaxiypre,ydeca,ye,Indiceg,ag1,ag2,ytempo,yinter,ycourant,yy,Mange_Plein,Mange_Trou:Integer;
   
    Haut,bas: tableauint;
    discrim:tableaubyte;
    mangle,mx,my,mz:array[0..3] of Integer;
    vues:array[0..3] of str12;
    gmax,gmini:array[xyz] of single;
    ligne,finsol,depart,minisol,maxisol,numero_vraie:array[0..MaxSolide] of Integer;
    Genre:Array [1..MaxSolide] of Tgenre;
    hg,bg:array [0..(MaxSolideParLigne+1)] of Integer;
    Piece_50,numg,trou:array[0..(MaxSolideParLigne+1)] of byte;
    numerocourant,numeroavant,numero:array[-decran..decran] of byte;
    nbrenu,pre2,tempo,numeromaxi,numeromaxiprecedent,mm,wg,kg,maxig,fg,Anime_Iter,Anime_Encours,V3,Piece_a_dessiner:Byte;
    facteur,facteurinter,Anime_Inf,Anime_Sup,Latitude,longitude,Roulis,Position_coupe,oldloupe,loupe,pangle,pk:single;
    Piece,p,couleur,Couleur_Piece:Array[1..MaxSolide] of byte;
    Plan_de_coupe,Plan_de_coupe_Op,vlampe:Vecteur;
    Une_Vue,Cava,coupeboo,Premiere_Passe,Rep,Yadespieces,oldcava:Boolean;
    Cosinus,Sinus:Array[1..MaxNS] of Single;
    T_Val : Array [1..8] Of single;
    C_CBoo:Array[1..3] Of Byte;
    C_CPlan:Array[1..3] Of Single;
    Vecteurdy,vecteurdz:vecteur;
    Tab_Couleur:T_Couleur;

Const deuxpi:Single=2*PI;
      zero:vecteur=(0,0,0);
      matidentite:matrice=((1,0,0),(0,1,0),(0,0,1));
      Pasde:Str20='Contour invalide';
      Param:Str20='Paramètres invalides';

function atan(x,y:Single):Single;
Procedure SetLinestyle(S:TpenStyle;Epaisseur:Integer);
function strg(a:single):string;
function strint(a:Integer):string;
Procedure Putpixel(x,y:Integer;col:TColor);
Procedure MoveTo(x,y:Integer);
Procedure ClearDevice;
Procedure line(X1,Y1,X2,Y2:Integer);
Procedure lineTo(X,Y:Integer);
procedure Rectangle(X1, Y1, X2, Y2: Integer);
Procedure linerel(XX,YY:Integer);
Procedure Moverel(XX,YY:Integer);
Function Getx:Integer;
Function Gety:Integer;
Procedure Ot(s:String);
Procedure Otxy(x,y:Integer;s:String);
Procedure SetColor(Coul:TColor);
function strg5(a:Single):string;
PROCEDURE VEcto(v1,v2:vecteur;var v:vecteur);
procedure soust(v1,v2:vecteur;var v3:vecteur);
function scal(v1,v2:vecteur):single;
procedure directeur(var w:vecteur);
procedure produitmatrice(b,c:matrice;var a:matrice);
procedure matricevecteur(b:matrice;vec2:vecteur;var vec1:vecteur);
Procedure Assigner(a,b,c:Single;Var V:Vecteur);
procedure degtorad(var angle:single);
Function Max(a,b:Integer):Integer;
Function Min(a,b:Integer):Integer;
function ed(entete,demande:string;var ouiounon:boolean):string;
Function entrereel(borneinf,bornesup,valeur:single;var dac:boolean;s2:string):single;
procedure bonangle(var a:single);
function radtodeg(angle:single):single;
implementation

function atan(x,y:Single):Single;{pas x=y=0}
var angle:Single;
begin
  if X=0 then
  begin
    if Y>0 then angle:=pi/2 else angle:=3*pi/2;
  end    else
  if y=0 then
  begin
    if x>0 then angle:=0 else angle:=pi;
  end    else
  begin
    angle:=arctan((Y)/abs(X));
    if angle<0 then angle:=2*PI+angle;
    if X<0 then
    begin
     if Y>0 then angle:=pi-angle else angle:=3*PI-angle;
    end;
  end;
  atan:=angle;
end;

Procedure SetLinestyle(S:TpenStyle;Epaisseur:Integer);
Begin
  With Feuille.Pen do
  begin
    Style:=S;
    Width:=Epais;
  end;
End;

function strg(a:single):string;
var s:string;
begin
  str(a:3:2,s);
  If a=0 then s:='0';
  If pos('.',s)<>0 then while s[length(s)]='0' do delete(s,length(s),1);
  if s[length(s)]='.' then delete(s,length(s),1);
  strg:=s;
end;

function strint(a:Integer):string;
var s:string;
begin
  str(a,s);strint:=s;
end;

Procedure Putpixel(x,y:Integer;Col:TColor);
Begin
 With Feuille do pixels[x,y]:=col;
End;

Procedure MoveTo(x,y:Integer);
Begin
 With Feuille do MoveTo(x,y);
End;

Procedure ClearDevice;
Var Arect:TRect;
begin
 With Feuille do
   Begin
     CopyMode:=cmWhiteness;
     ARect:=Rect(0,0,GetmaxX,GetmaxY);
     CopyRect(Arect,feuille,Arect);
     CopyMode:=cmSrcCopy;
   End
end;

Procedure line(X1,Y1,X2,Y2:Integer);
Begin
  With Feuille do
  begin
    MoveTo(X1,Y1);
    LineTo(X2,Y2);
  end;
end;

Procedure lineTo(X,Y:Integer);
Begin
  With Feuille do LineTo(X,Y);
end;

procedure Rectangle(X1, Y1, X2, Y2: Integer);
begin
  With Feuille do Rectangle(X1, Y1, X2, Y2);
end;

Procedure linerel(XX,YY:Integer);
Begin
  With Feuille do LineTo(PenPos.X+XX,PenPos.Y+YY);
End;

Procedure Moverel(XX,YY:Integer);
Begin
  With Feuille do MoveTo(PenPos.X+XX,PenPos.Y+YY);
End;

Function Getx:Integer;
begin
  With feuille do Getx:=PenPos.X;
End;

Function Gety:Integer;
begin
  With feuille do Gety:=PenPos.Y;
End;

Procedure Ot(s:String);
Begin
  With Feuille do TextOut(Penpos.x,Penpos.y,s);
End;

Procedure Otxy(x,y:Integer;s:String);
Begin
  With Feuille do TextOut(x,y,s);
End;

Procedure SetColor(Coul:TColor);
Begin
  Feuille.Pen.Color:=Coul;
  Feuille.font.color:=Coul;
End;

function strg5(a:Single):string;
var s:string;
begin
  str(a:7:7,s);
  If a=0 then s:='0';
  If pos('.',s)<>0 then while s[length(s)]='0' do delete(s,length(s),1);
  if s[length(s)]='.' then delete(s,length(s),1);
  Strg5:=s;
end;

PROCEDURE VEcto(v1,v2:vecteur;var v:vecteur);
begin
  v[x]:=v1[y]*v2[z]-v1[z]*v2[y];
  v[y]:=v1[z]*v2[x]-v1[x]*v2[z];
  v[z]:=v1[x]*v2[y]-v1[y]*v2[x];
end;

procedure soust(v1,v2:vecteur;var v3:vecteur);
begin
  v3[x]:=v2[x]-v1[x];
  v3[y]:=v2[y]-v1[y];
  v3[z]:=v2[z]-v1[z];
end;

function scal(v1,v2:vecteur):single;
begin
  scal:=v1[x]*v2[x]+v1[y]*v2[y]+v1[z]*v2[z];
end;

procedure directeur(var w:vecteur);
var norme:single;
begin
  norme:=sqrt(scal(w,w));
  if norme<>0 then
  begin
    w[x]:=w[x]/norme;
    w[y]:=w[y]/norme;
    w[z]:=w[z]/norme;
  end;
end;

procedure produitmatrice(b,c:matrice;var a:matrice);
var li,co:xyz;
begin
  for co:=x to z do for li:=x to z do
  begin
    a[li,co]:=b[li,x]*c[x,co]+b[li,y]*c[y,co]+b[li,z]*c[z,co];
  end;
end;

procedure matricevecteur(b:matrice;vec2:vecteur;var vec1:vecteur);
var li:xyz;
begin
  for li:=x to z do vec1[li]:=b[li,x]*vec2[x]+b[li,y]*vec2[y]+b[li,z]*vec2[z];
end;

Procedure Assigner(a,b,c:Single;Var V:Vecteur);
Begin
  V[x]:=a;
  V[y]:=b;
  V[z]:=c;
End;

procedure degtorad(var angle:single);
begin
  angle:=angle*(PI/180);
end;

Function Max(a,b:Integer):Integer;
begin
  If a>b then Max:=a else Max:=b;
end;

Function Min(a,b:Integer):Integer;
begin
  If a<b then Min:=a else Min:=b;
end;

function ed(entete,demande:string;var ouiounon:boolean):string;
begin
   ouiounon:=Inputquery('Cad5W',entete,demande);
   ed:=demande;
end;

Function entrereel(borneinf,bornesup,valeur:single;var dac:boolean;s2:string):single;
var a:single;
    code:Integer;
    s:string;
Begin
  code:=1;s:='';
  while code<>0 do
  Begin
    s:=ed(s2+' : ',strg(valeur),dac);
    If s='' then Begin entrereel:=99999;Exit;End;
    val(s,a,code);
    if code=0 then if (a<borneinf) or (a>bornesup) then
    begin
      entrereel:=99999;
      exit;
    end;
  End;
  entrereel:=a;
End;

procedure bonangle(var a:single);
begin
  if a>=DeuxPI then a:=a-DeuxPI;
  if a<0 then a:=a+DeuxPI;
end;

function radtodeg(angle:single):single;
begin
  bonangle(angle);
  radtodeg:=angle*(180/PI);
end;
end.
