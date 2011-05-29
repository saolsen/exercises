(* Exercise 3.5
   function on integers f : Z -> Z that is monotonically increasing over some
   range of arguments from 0 up to n. That is, f i < f (i + 1) for any
    i in [0,i) In addition f 0 < 0 and f n > 0. Write a function search f n
   that finds the smallest argument i where f i >= 0.
*)
(* returns the smallest i in [0,n) st f(i) >= 0 *)
let rec search f n =
  if (f n >= 0) && (n >= 0) then
    if (f (n - 1) >= 0) && ((n - 1) >= 0)then
      search f (n - 1)
    else
      n
  else
    -1;; (* meaning that there is no i in [0,n) st f(i) >= 0 *)
let g x = x * x - 12 * x - 2;;
search g 12;;
