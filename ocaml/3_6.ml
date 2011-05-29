(* 3.6, dictionary implementation *)
(* Part 1, Implementation *)
let empty = fun x -> 0
let add dict key value =
  fun y ->
    if y = key then
      value
    else
	dict y;;

let find dict key =
  (dict key)

(* Part 2, check that values work as expected *)
let dict1 = add empty "x" 1;;
let dict2 = add dict1 "y" 2;;
let dict3 = add dict2 "x" 3;;
let dict4 = add dict3 "y" 4;;
find dict1 "x";;
find dict1 "y";;
find dict2 "x";;
find dict2 "y";;
find dict3 "x";;
find dict3 "y";;
find dict4 "x";;
find dict4 "y";;
