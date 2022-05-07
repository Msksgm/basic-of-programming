(* 目的:受け取ったリスト lst の中の偶数の要素のみを含むリストを返す *)
(* concat : string list -> string list *)
let concat lst = List.fold_right (^) lst ""
(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["a"; "b"] = "ab"
let test4 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"