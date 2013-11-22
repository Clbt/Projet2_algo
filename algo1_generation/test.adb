with Ada.Text_IO;
use Ada.Text_IO;

procedure Test is
    file : File_Type;
    A : Character;
begin
    open(File => file, Name  => "test.svg", Mode => In_File);
    Put(Name(file));
    while not End_Of_File(file) loop
        Get(file,A);
        if(A = Character'val(13)) then Put("retour"); end if;  
        Put(A);
    end loop;

end Test;
