(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* 目的：学生のデータ gakusei を受け取り成績のついたデータを返す *) 
(* hyouka : gakusei_t -> gakusei_t  *) 
let hyouka gakusei = match gakusei with 
  {namae = n; tensuu = t; seiseki = s} -> 
    if t >= 80 then      {namae = n; tensuu = t; seiseki = "A"} 
    else if t >= 70 then {namae = n; tensuu = t; seiseki = "B"} 
    else if t >= 60 then {namae = n; tensuu = t; seiseki = "C"} 
    else                 {namae = n; tensuu = t; seiseki = "D"} 
 
(* テスト *) 
let test1 = hyouka {namae="asai"; tensuu=90; seiseki=""} 
                 = {namae="asai"; tensuu=90; seiseki="A"} 
let test2 = hyouka {namae="asai"; tensuu=80; seiseki=""} 
                 = {namae="asai"; tensuu=80; seiseki="A"} 
let test3 = hyouka {namae="asai"; tensuu=75; seiseki=""} 
                 = {namae="asai"; tensuu=75; seiseki="B"} 
let test4 = hyouka {namae="asai"; tensuu=70; seiseki=""} 
                 = {namae="asai"; tensuu=70; seiseki="B"} 
let test5 = hyouka {namae="asai"; tensuu=65; seiseki=""} 
                 = {namae="asai"; tensuu=65; seiseki="C"} 
let test6 = hyouka {namae="asai"; tensuu=60; seiseki=""} 
                 = {namae="asai"; tensuu=60; seiseki="C"} 
let test7 = hyouka {namae="asai"; tensuu=55; seiseki=""} 
                 = {namae="asai"; tensuu=55; seiseki="D"} 

(* 学生のデータの例 *) 
let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"} 
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"} 
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"} 
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"} 
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"} 
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"} 
(* 学生のリストの例 *) 
let lst1 = [gakusei2] 
let lst2 = [gakusei3; gakusei4] 
let lst3 = [gakusei4; gakusei3] 
let lst4 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 
(* 目的 gakusei_t 型のリストを受け取ったら、その中から最高得点を取った人のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int ; seiseki = ""}
    | ({namae = n; tensuu = t; seiseki = s} as gakusei) :: rest
        -> let max_rest = gakusei_max rest in
            match max_rest with {namae = n_max; tensuu = t_max; seiseki = s_max}
            -> if t_max < t then gakusei else max_rest
(* テスト *) 
let test1 = gakusei_max lst1 = gakusei2 
let test2 = gakusei_max lst2 = gakusei3 
let test3 = gakusei_max lst3 = gakusei3 
let test4 = gakusei_max lst4 = gakusei1 