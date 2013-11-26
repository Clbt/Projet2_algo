with Ada.Unchecked_Deallocation;

package body Liste_Generique is

   ListeVide : exception ;

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
   PointeurDeLambiance : Pointeur := null;
   
   begin
   
  
   PointeurDeLambiance := new Cellule' (Contenu => Element , Suivant => null);
   L.Fin.all.Suivant := PointeurDeLambiance; -- on remplace Suivant de l'avant dernier element par un pointeur sur l'element insere
   L.Fin := PointeurDeLambiance; --Fin pointe maintenant sur la derniere cellule
   L.Taille := L.Taille + 1;
   end;

   procedure Parcourir (L : Liste) is
   
   Courant : Pointeur := L.Debut;
   
   begin
	  
	  while Courant /= L.Fin loop
	   Traiter (Courant.all);
	   Courant:=Courant.all.Suivant;	
	  end loop;
   end;

   procedure Parcourir_Par_Couples(L : Liste) is
   
   Courant : Pointeur := L.Debut;
   Suivant : Pointeur := L.Debut.all.Suivant;
   Taille : Natural := L.Taille;
   
   begin
	while Suivant /= L.Fin loop
	Traiter (Courant, Suivant);
	Courant:=Suivant;
	Suivant:=Suivant.all.Suivant;
	end loop;
	
   end;

   procedure Fusion(L1 : in out Liste ; L2 : in out Liste) is
   begin
	   InsertionQueue ( L1, L2.Debut.all);
	   L2 := null;
   end;

   function Taille(L : Liste) return Natural is
   
   Courant : Pointeur := L.Debut;
   begin
      while Courant /= L.Fin loop
      	L.Taille := L.Taille+1;
      end loop;
      return L.Taille;
   end;

   function Tete(L : Liste) return Element is
   begin
   	if L.Taille /=0 then
      		return L.Debut.Contenu;
      	else raise ListeVide;
      	end if;
   end;

   function Queue(L : Liste) return Element is
   begin
      if L.Taille /=0 then
      		return L.Fin.Contenu;
      else raise ListeVide;
      end if;
   end;

end;
