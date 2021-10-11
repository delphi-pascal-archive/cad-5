unit Dessin;
// Auteur Montero-Ribas
// Logiciel sous license GNU GPL
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus,Clipbrd,printers, StdCtrls, Buttons, ComCtrls;

type
  TForm2 = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ScrollBar2: TScrollBar;
    ScrollBar1: TScrollBar;
    ScrollBar3: TScrollBar;
    Button3: TButton;
    Button1: TButton;
    Button5: TButton;
    Button2: TButton;
    Button4: TButton;
    Button6: TButton;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    Button8: TButton;
    Button7: TButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    ScrollBar4: TScrollBar;
    ScrollBar5: TScrollBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ScrollBar6: TScrollBar;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ScrollBarXChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ScrollBar4Change(Sender: TObject);
    procedure ScrollBar5Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ScrollBar6Change(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  Bitmap:TBitmap;
  onchangelavue:boolean;

Procedure Changelavue(a,b,c:single);
implementation


 uses generale,W5unit1,jpeg;
{$R *.DFM}
 


procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  canclose:=false;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin   
  onchangelavue:=false;
  Bitmap:=TBitmap.Create;
  Bitmap.Width:=1200;
  Bitmap.Height:=800;
  Bitmap.PixelFormat:=pf16bit;
  Bitmap.monochrome:=False;
  form2.Image1.PICTURE.Graphic:=Bitmap;
  form2.Image1.height:= Bitmap.Height;
  form2.Image1.Width:= Bitmap.Width;
  Feuille:=Form2.Image1.canvas;
  Getmaxx:=Bitmap.Width;
  Getmaxy:=Bitmap.Height;  
  if  ParamCount>0 then
  begin
    NomdeFichier:=changefileext(ParamStr(1),'.CAD');
    form1.Richedit1.lines.LoadFromFile(NomdeFichier);
    form2.Caption :=' Cad5W  '+ExtractFilename(NomdeFichier);
  end;
  Form1.dessusdessous1Click(Self);
  scrollbar6.Position:=0;
  Checkbox1.checked:=true;
  RadioGroup1.Itemindex:=4;    
  Feuille.Pen.Width:=1;
  scrollbox1.DoubleBuffered:=true;
end;



Procedure Changelavue(a,b,c:single);
begin
   onchangelavue:=true;
   SetVue(a,b,c);
   bonangle(latitude);
   form2.ScrollBar1.position:=round(latitude*180/pi/5);
   SetVue(a,b,c);bonangle(longitude);
   form2.ScrollBar2.position:=round((360-longitude*180/pi)/5);
   SetVue(a,b,c);bonangle(roulis);
   form2.ScrollBar3.position :=round((360-roulis*180/pi)/5);
   form1.Changementvue;
  onchangelavue:=false;
end;

Function entre2reel(borneinf,bornesup,valeur:single;var dac:boolean;s2:string):single;
var a:single;
    code:Integer;
    s:string;
Begin
  code:=1;s:='';
  while code<>0 do
  Begin
    s:=ed(s2+' : ',strg(valeur),dac);
    If s='' then Begin entre2reel:=99999;Exit;End;
    val(s,a,code);
    if code=0 then if (a<borneinf) or (a>bornesup) then
    begin
      entre2reel:=99999;exit;
    end;
  End;
  entre2reel:=a;
End;

procedure TForm2.FormResize(Sender: TObject);
begin
  form1.changementvue;
end;

procedure TForm2.ScrollBarXChange(Sender: TObject);
begin
  if dessinvalide then dessine;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  Enfacecachee:=true;
    case  RadioGroup1.Itemindex of
       0:visu:=contour;
       1:visu:=facette;
       2:visu:=rendu256;
       3:visu:=contour_couleur;
       4:Enfacecachee:=false;
     end;
     form1.Changementvue;
     Checkbox2.Enabled:=Enfacecachee;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Changelavue(0,3*PI/2,0);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Changelavue(0,0,0);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
   Changelavue(0,PI/2,0);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
   Changelavue(3*PI/2,0,0);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   Changelavue(PI/2,0,0);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   Changelavue(PI,0,0);
end;

Procedure onlatourne;
Begin
  pangle:=pi/180*form2.ScrollBar4.position;
  pk:=form2.ScrollBar5.position/100;
  form2.Label4.Caption:='K= '+strg(pk);
  form2.Label5.Caption:='Alpha='+strint (form2.ScrollBar4.position)+'°';
  if not onchangelavue then Changelavue(5*form2.ScrollBar1.position*PI/180,
  2*pi-5*form2.ScrollBar2.position*PI/180,
  2*pi-5*form2.ScrollBar3.position*PI/180);
end;

procedure TForm2.ScrollBar3Change(Sender: TObject);
begin
  Onlatourne;
end;

procedure TForm2.ScrollBar2Change(Sender: TObject);
begin
   Onlatourne;
end;

procedure TForm2.ScrollBar1Change(Sender: TObject);
begin
  Onlatourne;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
   Cava:=Checkbox1.checked;
   form2.ScrollBar4.Enabled:=cava;
   form2.ScrollBar5.Enabled:=cava;
   form1.Changementvue;
end;

procedure TForm2.ScrollBar4Change(Sender: TObject);
begin
  onlatourne;
end;

procedure TForm2.ScrollBar5Change(Sender: TObject);
begin
   onlatourne;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
   dec(mily,20);form1.Changementvue;
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
begin
  dec(milx,20);form1.Changementvue;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
   inc(milx,20);form1.Changementvue;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
   inc(mily,20);form1.Changementvue;
end;

procedure TForm2.Button7Click(Sender: TObject);
var tempo:boolean;
begin
  tempo:=true;
  Loupe:=entrereel(0.1,15,loupe,tempo,'Entrez la nouvelle echelle ? (entre 0.1 et 15)');
  form1.changementvue;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
  loupe:=loupe*1/1.2;form1.Changementvue;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
   loupe:=loupe*1.2;form1.Changementvue;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
   if not dessinvalide then exit;
  travailajuster(min(form2.width-170,getmaxx),min(form2.height-40,getmaxy));
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
   if dessinvalide then travailajuster(getmaxx,getmaxy);
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
   rep:=Checkbox2.checked;
   form1.changementvue;
end;

procedure TForm2.TrackBar1Change(Sender: TObject);
begin
    if dessinvalide then dessine;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  une_vue:=false;
  sauvecontexte;cava:=false;
  dessine;
  une_vue:=true;restituecontexte;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
  sauvecontexte;
  cava:=false;
  une_vue:=false;
  oncoupe:=true;
  dessine;
  une_vue:=true;
  oncoupe:=false;
  restituecontexte;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  if dessinvalide then Animation;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  oncoupe:=true;
  dessine;
  oncoupe:=false;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
 form1.Changementvue;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  Form1.Memo1DblClick(self);
end;

procedure TForm2.ScrollBar6Change(Sender: TObject);
begin
  if dessinvalide then dessine;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
begin
   form2.SetFocus;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  If Solide_en_Cours>1 then dec(Solide_en_Cours) else Solide_en_Cours:=NbSolide_vrai;
  Dessin_Solide_en_Cours;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  If Solide_en_Cours<NbSolide_vrai then inc(Solide_en_Cours) else Solide_en_Cours:=1;
  Dessin_Solide_en_Cours;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
  If (NbSolide>0) and (Solide_en_Cours=0) then Solide_en_Cours:=1;
  Dessin_Solide_en_Cours;
end;

end.
