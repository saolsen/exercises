(* 3_4
   A function %% that computers the GCD using Euclid's algorithm.
*)

let rec (%%) n m =
  if m = 0 then
    n
  else
    if n > m then
      (n - m) %% m
    else
      n %% (m - n);;
5 %% 6;;
32 %% 128;;

