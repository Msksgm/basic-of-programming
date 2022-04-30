(* 目的:2次方程式の判別式を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = ((b ** 2.) -. (4. *. a *. c))
(* テスト *)
let test1 = hanbetsushiki 1. 2. 1. = 0.
let test2 = hanbetsushiki 2. 3. 4. = -23.
let test3 = hanbetsushiki 2. 6. 2. = 20.
(* 目的:2次方程式の解の個数を返す *)
(* kai_no_kosuu : float -> int *)
let kai_no_kosuu a b c = if hanbetsushiki a b c > 0. then 2 else if hanbetsushiki a b c = 0. then 1 else 0
(* テスト *)
let test1 = kai_no_kosuu 1. 2. 1. = 1
let test2 = kai_no_kosuu 2. 3. 4. = 0
let test3 = kai_no_kosuu 2. 6. 2. = 2
