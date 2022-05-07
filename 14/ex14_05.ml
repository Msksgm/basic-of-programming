(* 目的: リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> a' list *)
let even lst = 
    let is_even n = n mod 2 = 0
    in List.filter is_even lst
(* テスト *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [1; 3] = []
let test4 = even [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]

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
let count_A lst = 
    let is_A gakuesi = match gakuesi with
    {namae=n; tensuu=t; seiseki=s} -> s = "A"
    in List.length(List.filter is_A lst)
(* テスト *) 
let test1 = count_A lst1 = 0 
let test2 = count_A lst2 = 0 
let test3 = count_A lst3 = 1 
let test4 = count_A lst4 = 2 

(* string list は
    - [] 空リスト、あるいは
    - first :: rest 最初の要素が first で残りのリストが rest （restが自己参照のケース）
    という形 *)
(* 目的:受け取ったリスト lst の中の偶数の要素のみを含むリストを返す *)
(* concat : string list -> string list *)
let concat lst =
    let concat_word first rest_result = first ^ rest_result
    in List.fold_right concat_word lst ""
(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["a"; "b"] = "ab"
let test4 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"

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

let gakusei_sum lst =
    let add_tokuten gakusei rest_result = match gakusei with
        {namae = n; tensuu = t; seiseki = s} -> t + rest_result
    in    List.fold_right add_tokuten lst 0

(* テスト *) 
let test1 = gakusei_sum lst1 = 0 
let test2 = gakusei_sum lst2 = 70 
let test3 = gakusei_sum lst3 = 155 
let test4 = gakusei_sum lst4 = 235 