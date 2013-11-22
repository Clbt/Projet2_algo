package body Math is

   function "+" (A : Vecteur ; B : Vecteur) return Vecteur is
      R : Vecteur(A'Range);
   begin
      for i in Vecteur'Range loop
       R(i) := A(i) + B(i);	  
       end loop;
  	return R;
   end;

   function "*" (Facteur : Float ; V : Vecteur) return Vecteur is
      R : Vecteur(V'Range);
   begin
   
	for i in Vecteur'Range loop
	R(i) := Facteur*V(i);
	end loop;
	
      return R;
   end;

   procedure Bezier(P1, C1, C2, P2 : Point2D ; Nb_Points : Positive ;
                    Points : out Liste) is
   begin
	   null;
   end;

   
