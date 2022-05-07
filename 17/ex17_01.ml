type nengou_t = Meiji of int
    | Taisho of int
    | Showa of int
    | Heisei of int

let to_seireki nengou = match nengou with
    Meiji(n) -> n + 1867
    | Taisho (n) -> n + 1911
    | Showa (n) -> n + 1925
    | Heisei (n) -> n + 1988
(* テスト *) 
let test1 = to_seireki (Showa (42)) = 1967 
let test2 = to_seireki (Heisei (11)) = 1999 
let test3 = to_seireki (Meiji (41)) = 1908 
(* 目的 : 誕生年と現在の年を nengou_t 型として受け取ってきたら、年齢を返す *)
(* nenrei : nengou_t -> nengou_t -> int *)
let nenrei nengou1 nengou2 = 
    to_seireki nengou2 - to_seireki nengou1

(* テスト *) 
let test1 = nenrei (Showa (42)) (Heisei (18)) = 39 
let test2 = nenrei (Heisei (11)) (Heisei (18)) = 7 
let test3 = nenrei (Meiji (41)) (Heisei (17)) = 97 