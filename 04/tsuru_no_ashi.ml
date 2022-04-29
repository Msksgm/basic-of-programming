(* 目的:鶴の数を与えられたら足の本数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * 2
(* テスト *)
let test1 = tsuru_no_ashi 3 = 6
let test1 = tsuru_no_ashi 6 = 12
let test1 = tsuru_no_ashi 100 = 200