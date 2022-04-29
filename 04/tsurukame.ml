(* 目的:足数を与えられたら鶴の数を返す *)
(* tsurukame_no_ashi : int -> int *)
let tsurukame tsurukame_no_gokei ashi = (4*tsurukame_no_gokei - ashi) / 2
(* テスト *)
let test1 = tsurukame 6 20 = 2
let test2 = tsurukame 8 30 = 1
let test3 = tsurukame 12 40 = 4