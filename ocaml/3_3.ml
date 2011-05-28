(* Exercise 3.3 *)
let rec sum n m f =
  if n == m then
    f(m)
  else
    f(n) + sum((n + 1) m f);;
let g x = x * x;;
sum 2 4 g;;
