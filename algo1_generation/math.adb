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


--C1 et C2 points de contrôle?
--cubique
   procedure Bezier(P1, C1, C2, P2 : Point2D ; Nb_Points : Positive ;
                    Points : out Liste) is
  Index : Integer := 0;
  Bezier : Point2D;	 
 
   begin
	  while Index <= 1 loop 
	 Bezier := C1*(1-Index)^3 + C2*3*(1-Index) + P1*3*Index^2(1-Index) + P2*Index^3;
	 Insertion_Queue (Points, Bezier);
	 Index:=Index+1/Nb_Points;
	 
	 end loop;
	 
	    end;

--quadratique
--Pb: points de controle. -> lequel jarter/pourquoi? 
 procedure Bezier(P1, C1, C2, P2 : Point2D ; Nb_Points : Positive ;
                    Points : out Liste) is
   begin
   	  while Index <= 1 loop 
	 Bezier := C1*(1-Index)^2 + C2*2*Index*(1-Index) + P1*Index^2;
	 Insertion_Queue (Points, Bezier);
	 Index:=Index+1/Nb_Points;
	 
   end;

   
