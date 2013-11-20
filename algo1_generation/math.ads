with Liste_Generique;

package Math is

   type Vecteur is array(Positive range<>) of Float;
   subtype Point2D is Vecteur(1..2);
   package Liste_Points is new Liste_Generique(Point2D);
   use Liste_Points;

   --convertit une courve de bezier cubique en segments
   procedure Bezier(P1, C1, C2, P2 : Point2D ; Nb_Points : Positive ;
                    Points : out Liste);
   --convertit une courve de bezier quadratique en segments
   procedure Bezier(P1, C, P2 : Point2D ; Nb_Points : Positive ;
                    Points : out Liste);
   --addition de 2 vecteurs
   function "+" (A : Vecteur ; B : Vecteur) return Vecteur;
   --multiplication vecteur scalaire
   function "*" (Facteur : Float ; V : Vecteur) return Vecteur;
end;
