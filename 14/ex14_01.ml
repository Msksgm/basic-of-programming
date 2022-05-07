(* 目的: リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> a' list *)
let rec filter p lst = match lst with
    [] -> []
    | first :: rest -> if p first then first :: filter p rest else filter p rest
let is_even n = n mod 2 = 0
let even lst = filter is_even lst
(* テスト *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [1; 3] = []
let test4 = even [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]