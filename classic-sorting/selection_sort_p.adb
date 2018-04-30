package body Selection_Sort_P with 
  SPARK_Mode
is
   
   procedure Selection_Sort(A : in out T_Arr)
   is
      Sel : Integer;
   begin
      if A'Length = 0 then
	 return;
      end if;

      for J in A'Range loop
	 Sel  := Min_Element(A).Value;
	 Swap_Array(A,J,Sel);
	 
	 pragma Loop_Invariant(Multiset_Unchanged(A,A'Loop_Entry));	 
      end loop;
   end Selection_Sort;
   
end Selection_Sort_P;

   
