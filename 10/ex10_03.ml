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
let lst1 = [] 
let lst2 = [gakusei2] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei3] 
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 
(* 目的:昇順に並んでいる lst の正しい位置に gakuesi を挿入する *)
(* gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec gakusei_insert lst gakusei0 = match lst with
    [] -> [gakusei0]
    | first :: rest -> if first.tensuu < gakusei0.tensuu then first :: gakusei_insert rest gakusei0 else gakusei0 :: lst
(* テスト *) 
let test1 = gakusei_insert [] gakusei2 = [gakusei2] 
let test2 = gakusei_insert [gakusei4] gakusei3 = [gakusei4; gakusei3] 
let test3 = gakusei_insert [gakusei3] gakusei4 = [gakusei4; gakusei3] 
let test4 = gakusei_insert [gakusei6; gakusei5; gakusei3; gakusei2; gakusei1] 
			   gakusei4 
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 
(* 目的：受け取った学生のリスト lst を点数の順に並べる *) 
(* gakusei_ins_sort : gakusei_t list -> gakusei_t list *) 
let rec gakusei_ins_sort lst = match lst with
    [] -> []
    | first :: rest -> gakusei_insert (gakusei_ins_sort rest) first
(* テスト *) 
let test5 = gakusei_ins_sort lst1 = [] 
let test6 = gakusei_ins_sort lst2 = [gakusei2] 
let test7 = gakusei_ins_sort lst3 = [gakusei4; gakusei3] 
let test8 = gakusei_ins_sort lst4 = [gakusei4; gakusei3] 
let test9 = gakusei_ins_sort lst5 
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 