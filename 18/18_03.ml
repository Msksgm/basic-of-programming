(* 八百屋においてある野菜と値段のリストの例 *) 
let yaoya_list = [("トマト", 300); ("たまねぎ", 200); 
                ("にんじん", 150); ("ほうれん草", 200)] 

let rec price item yaoya_list = match yaoya_list with
    [] -> None
    | (yasai, nedan) :: rest -> if item = yasai then Some (nedan) else price item rest ;;

(* 目的 : yasai_list を買った時の値段の合計を調べる *)
(* total_price : string list -> (string * int) list -> int option *)
let rec total_price yasai_list yaoya_list = match yasai_list with
    [] -> Some(0)
    | first :: rest -> match price first yaoya_list with
                        None -> None
                        | Some(p) -> match total_price rest yaoya_list with
                                        None -> None
                                        | Some (q) -> Some(p + q)

(* 目的 : yasai_list を買った時の値段の合計を調べる *)
(* total_price : string list -> (string * int) list -> int option *)
let rec total_price yasai_list yaoya_list = 
    let rec hojo yasai_list = match yasai_list with
        [] -> Some(0)
        | first :: rest ->
            match price first yaoya_list with
                None -> None
                | Some(p) -> match hojo rest  with
                                None -> None
                                | Some (q) -> Some(p + q)
    in match hojo yasai_list with
        None -> 0
        | Some(p) -> p;;

total_price ["たまねぎ"; "にんじん"] yaoya_list ;;
total_price ["たまねぎ"; "じゃがいも"; "にんじん"] yaoya_list ;;

let rec price item yaoya_list = match yaoya_list with
    [] -> 0
    | (yasai, nedan) :: rest -> if item = yasai then nedan else price item rest

let rec total_price yasai_list yaoya_list = match yasai_list with
    [] -> 0
    | first :: rest -> price first yaoya_list + total_price rest yaoya_list;;

total_price ["たまねぎ"; "にんじん"] yaoya_list ;;
total_price ["たまねぎ"; "じゃがいも"; "にんじん"] yaoya_list ;;
