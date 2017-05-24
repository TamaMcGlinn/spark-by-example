-- specification of Equal

with Types; Use Types;
with Equal_Ranges;

package Equal with
  SPARK_Mode is

   function Equal (A : T_Arr; B : T_Arr) return Boolean with
     Pre => A'Length <= B'Length,
     Post => Equal'Result = Equal_Ranges.Equal_Ranges(A, B);
end Equal;