(* 目的 : 関数 f 、初期値 init、リスト lst を受け取ったら、init からはじめてリスト lst の要素を「左から」順に f を施し込む関数 *)
let rec fold_left f init lst = match lst with
    [] -> init
    | first :: rest -> fold_left f (f init first) rest

(* テスト *) 
let test1 = fold_left (-) 0 [] = 0 
let test2 = fold_left (-) 10 [4; 1; 3] = 2 
let test3 = fold_left (fun lst a -> a :: lst) [] [1; 2; 3; 4] = [4; 3; 2; 1] 