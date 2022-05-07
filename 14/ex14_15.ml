(* 目的 : n から　1 までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1);;

(* 目的 : 1 から受け取った自然数 n までの合計を返す *)
(* one_to_n : int -> int *)
let one_to_n m = List.fold_right (+) (enumerate m) 0;;

(* テスト *)
let test1 = one_to_n 5 = 15;;
let test2 = one_to_n 10 = 55;;
let test3 = one_to_n 100 = 5050;;