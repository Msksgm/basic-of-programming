(* 目的:bmiを計算する *)
(* bmi : float -> float -> float *)
let bmi sincho taiju = (taiju) /. (sincho ** 2.) ;;
(* 目的:bmiから体系を返す *)
(* taikei: float -> string *)
(* let taikei sincho taiju = if bmi <  *)
(* テスト *)
(* TODO テストデータを考えるのが面倒なのでスキップ *)
(* let test1 = taikei 18.4 = "やせ"
let test2 = taikei 18.5 = "標準"
let test3 = taikei 24.9 = "標準"
let test4 = taikei 25.0 = "肥満"
let test5 = taikei 29.9 = "肥満" *)
