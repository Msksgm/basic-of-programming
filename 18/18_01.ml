(* 'a 型の値があるか値がないかのどちらかの型 *)
type 'a option = None
    | Some of 'a

(* 八百屋においてある野菜と値段のリストの例 *)
let yaoya_list = [("トマト", 300); ("たまねぎ", 200); ("にんじん", 150); ("ほうれん草", 200)];;
(* 目的 : item の値段を調べる *)
let rec price item yaoya_list = match yaoya_list with
    [] -> None
    | (yasai, nedan) :: rest -> if item = yasai then Some (nedan) else price item rest ;;
price "トマト" yaoya_list ;;
price "じゃがいも" yaoya_list ;;