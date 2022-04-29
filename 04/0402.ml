let f x = 3 * x ;;

let kyuyo x = kihonkyu + x * jikyu ;;

kyuyo 25 + kyuyo 28 + kyuyo 31 ;;

(* 4.1 *)
let baito_kyuyo year time = (850 + year * 100) * time ;;
(* 4.2 *)
let jikoshokai name = "私は" ^ name ^ "です" ;;
(* 4.3 *)
let hyojun_taiju sincho = (sincho ** 2.) *. 22. ;;
(* 4.4 *)
let bmi sincho taiju = (taiju) /. (sincho ** 2.) ;;