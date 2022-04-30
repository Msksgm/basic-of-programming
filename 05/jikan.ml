(* 目的:時間xを受け取ったら、午前（am）か午後（pm）かを返す *)
(* jikan : int -> string *)
let jikan x = if (x mod 24) <= 12  then "am" else "pm"
(* テスト *)
let test1 = jikan 9 = "am"
let test2 = jikan 11 = "am"
let test3 = jikan 13 = "pm"
let test4 = jikan 20 = "pm"