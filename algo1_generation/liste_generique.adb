with Ada.Unchecked_Deallocation;

package body Liste_Generique is

   procedure Vider(L : in out Liste) is
   begin
	   null;
   end;

   procedure Insertion_Tete(L : in out Liste ; E : Element) is
   PointeurDeLambiance : Pointeur := null;
   
   begin
   PointeurDeLambiance := new Cellule'(Contenu => Element , Suivant => L.Deb );
   L.Deb := PointeurDeLambiance;		 
   L.Taille := L.Taille + 1;
   end;

   procedure Insertion_Queue(L : in out Liste ; E : Element) is
   begin
	   null;
   end;

   procedure Parcourir (L : Liste) is
   
   Courant= Pointeur := L.Debut;
   
   begin
	  
	  while Courant /= L.Fin loop
	   Traiter (Courant.all);
	   Courant:=Courant.all.Suivant;	
	  end loop;
   end;

   procedure Parcourir_Par_Couples(L : Liste) is
   begin
	   null;
   end;

   procedure Fusion(L1 : in out Liste ; L2 : in out Liste) is
   begin
	   null;
   end;

   function Taille(L : Liste) return Natural is
   begin
      return L.Taille;
   end;

   function Tete(L : Liste) return Element is
   begin
      return L.Debut.Contenu;
   end;

   function Queue(L : Liste) return Element is
   begin
      return L.Fin.Contenu;
   end;

end;
