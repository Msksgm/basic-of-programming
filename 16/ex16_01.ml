(* 目的 : 整数のリストを受け取ったら、それまでの数の合計からなるリストを返す関数 *)
(* sum_list: int list -> int list *)
let sum_list lst =
    (* 目的 先頭からリストの整数までの合計を計算する *)
    (* ここで　total0 はこれまでの整数の合計 *)
    (* hojo : int list -> int -> int list *)
    let rec hojo lst total0 = match lst with
        [] -> []
        | first :: rest -> (first + total0) :: hojo rest (first + total0)
        in hojo lst 0
(* テスト *)
let test1 = sum_list [] = []
let test2 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]