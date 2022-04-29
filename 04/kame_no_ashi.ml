(* 目的:亀の数を与えられたら足の本数を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi x = x * 4
(* テスト *)
let test1 = kame_no_ashi 3 = 12
let test2 = kame_no_ashi 6 = 24
let test3 = kame_no_ashi 100 = 400