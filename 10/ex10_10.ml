(* あらかじめ ex09_9.ml を読み込んでおく必要あり *) 
#use "../09/ex09_09.ml" (* ekimei_t, global_ekimei_list の定義 *) 
(* 目的 ローマ字と駅名とえきリストを受け取ったら、その駅の漢字表記を文字列で返す *)
(*  *)
let rec romaji_to_kanji romaji global_ekimei_list = match global_ekimei_list with
    [] -> ""
    | {kanji = k; kana = ka; romaji = ro; shozoku = s}::rest ->
        if ro = romaji then k
        else romaji_to_kanji romaji rest

(* テスト *)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷" 
let test3 = romaji_to_kanji "otemachi" global_ekimei_list = "大手町" 
let test4 = romaji_to_kanji "tenjin" global_ekimei_list = ""