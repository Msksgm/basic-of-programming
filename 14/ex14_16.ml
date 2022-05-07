(* 目的 : n から　1 までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1);;

(* 目的 : 階乗を求める関数 *)
(* fac : int -> int *)
let fac n = List.fold_right ( * ) (enumerate n) 1 ;;

(* テスト *)
let test1 = fac 1 = 1;;
let test1 = fac 3 = 6;;
let test1 = fac 5 = 120;;