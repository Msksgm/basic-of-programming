(* 目的 : 受け取った 自然数 m と n (m >= n >= 0) の最大公約数を求める *)
(* let rec gcd m n = match n with
    0 -> m
    | n -> gcd n (m mod n) *)

let rec gcd m n = if n = 0 then m else gcd n (m mod n)

(* テスト *)
let test1 = gcd 3 2 = 1
let test2 = gcd 18 12 = 6
let test3 = gcd 27 18 = 9
let test4 = gcd 27 0 = 27
