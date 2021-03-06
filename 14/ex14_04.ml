(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
    namae: string;
    tensuu: int;
    seiseki: string;
}

(* gakusei_t list は
    - [] 空リスト、あるいは
    - first :: rest 最初の要素が　first で残りのリストが rest（first は gakusei_t 型 rest が自己参照のケース
    という形 *)
(* gakusei_t list 型のデータ例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 

let add_tokuten gakusei rest_result = match gakusei with
    {namae = n; tensuu = t; seiseki = s} -> t + rest_result

let gakusei_sum lst = List.fold_right add_tokuten lst 0

(* テスト *) 
let test1 = gakusei_sum lst1 = 0 
let test2 = gakusei_sum lst2 = 70 
let test3 = gakusei_sum lst3 = 155 
let test4 = gakusei_sum lst4 = 235 