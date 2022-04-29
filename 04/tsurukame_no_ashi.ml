(* 目的:鶴と亀の数を与えられたら足の本数を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru * 2 + kame * 4
(* テスト *)
let test1 = tsurukame_no_ashi 3 4 = 22
let test2 = tsurukame_no_ashi 5 7 = 38
let test3 = tsurukame_no_ashi 100 200 = 1000