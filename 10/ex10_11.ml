(* あらかじめ ex09_10.ml を読み込んでおく必要あり *) 
#use "../09/ex09_10.ml" (* ekikan_t, global_ekikan_list の定義 *) 
(* 目的 漢字の駅名をふたつと駅間リストを受け取ったら、駅間リストの中からその2駅間の距離を返す *)
(* get_ekikan_kyori *)
let rec get_ekikan_kyori ekimei01 ekimei02 global_ekikan_list = match global_ekikan_list with
    | [] -> infinity
    | {kiten = k; shuten = s; keiyu = ke; kyori = ky; jikan = j}::rest -> 
        if (k = ekimei01 && s = ekimei02) || (k = ekimei02 && s = ekimei01) then ky
        else get_ekikan_kyori ekimei01 ekimei02 rest
(* テスト *) 
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6 