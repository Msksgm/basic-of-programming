(* 目的:2次方程式の判別式を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = ((b ** 2.) -. (4. *. a *. c))
(* テスト *)
let test1 = hanbetsushiki 1. 2. 1. = 0.
let test2 = hanbetsushiki 2. 3. 4. = -23.
let test3 = hanbetsushiki 2. 6. 2. = 20.
(* 目的:2次方程式が虚数解を持つか判定する *)
(* kyosuukai : float -> bool *)
let kyosuukai a b c = (hanbetsushiki a b c < 0.)
(* テスト *)
let test1 = kyosuukai 1. 2. 1. = false
let test2 = kyosuukai 2. 3. 4. = true
let test3 = kyosuukai 2. 6. 2. = false
