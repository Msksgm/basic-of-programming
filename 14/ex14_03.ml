let concat_word first rest_result = first ^ rest_result

(* string list は
    - [] 空リスト、あるいは
    - first :: rest 最初の要素が first で残りのリストが rest （restが自己参照のケース）
    という形 *)
(* 目的:受け取ったリスト lst の中の偶数の要素のみを含むリストを返す *)
(* concat : string list -> string list *)
let concat lst = List.fold_right concat_word lst ""
(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["a"; "b"] = "ab"
let test4 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"