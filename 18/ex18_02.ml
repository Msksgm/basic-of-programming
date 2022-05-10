(* 八百屋においてある野菜と値段のリストの例 *) 
let yaoya_list = [("トマト", 300); ("たまねぎ", 200); 
                  ("にんじん", 150); ("ほうれん草", 200)] 

let rec price item yaoya_list = match yaoya_list with
    [] -> None
    | (yasai, nedan) :: rest -> if item = yasai then Some (nedan) else price item rest ;;

(* 目的 : yasai_list を買ったときの値段の合計を調べる *)
(* count_urikire_yasai : string list -> (string * int) list -> int *)
let rec count_urikire_yasai yasai_list yaoya_list = match yasai_list with
    [] -> 0
    | first :: rest -> match price first yaoya_list with
        None -> 1 + count_urikire_yasai rest yaoya_list
        | Some(p) -> count_urikire_yasai rest yaoya_list
(* テスト *) 
(* テスト *) 
let test1 = count_urikire_yasai ["たまねぎ"; "にんじん"] yaoya_list = 0 
let test2 = count_urikire_yasai ["たまねぎ"; "じゃがいも"; "にんじん"] yaoya_list = 1 
let test3 = count_urikire_yasai ["しいたけ"; "なす"; "にんじん"] yaoya_list = 2 