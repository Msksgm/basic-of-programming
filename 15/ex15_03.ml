(* 目的 : 自然数 n 以下の素数をすべて求める簡単なアルゴリズム エラトステネスのふるい *)
let rec sieve lst = match lst with
    [] -> []
    | first :: rest ->  first :: sieve (List.filter (fun x -> x mod first <> 0) rest) 

(* テスト *)
let test1 = sieve [] = []
let test2 = sieve [2; 3; 4; 5; 6; 7; 8] = [2; 3; 5; 7]

let two_to_n n =
    let rec loop i = if i <= n then i :: loop (i + 1) else [] in
    loop 2
(* テスト *) 
let test2 = two_to_n 10 = [2; 3; 4; 5; 6; 7; 8; 9; 10] 

(* 2から受け取った自然数 n までの素数を返す *)
let prime n = sieve (two_to_n n)

(* テスト *)
let test3 = prime 10 = [2; 3; 5; 7]