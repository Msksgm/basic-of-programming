(* int list は
    - [] 空リスト、あるいは
    - first :: rest 最初の要素が first で残りのリストが rest （restが自己参照のケース）
    という形 *)
(* 目的:受け取ったリスト lst の長さを求める *)
(* sum : int list -> int *)
let rec length lst = match lst with
    [] -> 0
    | first :: rest -> 1 + length rest
(* テスト *)
let test1 = length [] = 0
let test2 = length [2] = 1
let test3 = length [1; 3] = 2
let test4 = length [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 10