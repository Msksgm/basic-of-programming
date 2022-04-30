(* 目的:名前と成績の組みを受け取ったら"xxさん成績はyyです"という文字列を返す *)
(* string * string -> string *)
let seiseki pair = match pair with
    (name, hyouka) -> name ^ "さんの評価は" ^ hyouka ^ "です"
(* テスト *)
let test1 = seiseki ("太郎", "良") = "太郎さんの評価は良です"
let test2 = seiseki ("次郎", "可") = "次郎さんの評価は可です"