#use "../08/ex08_05.ml" 
#use "../12/ex12_01.ml" 

(* 駅名リストの例 *) 
 
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(* 目的：ekimei list から eki list を作る *) 
(* make_eki_list : ekimei_t list -> eki_t list *) 
let make_eki_list ekimei_list = 
    List.map (fun ekimei -> match ekimei with 
        {kanji = k; kana = a; romaji = r; shozoku = s} -> 
        {namae = k; saitan_kyori = infinity; temae_list = []}) 
    ekimei_list 

(* テスト *) 
let test1 = make_eki_list [] = [] 
let test2 = make_eki_list ekimei_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

(* あらかじめ ex12_1.ml を読み込んでおく必要あり *) 
#use "../12/ex12_01.ml" 
(* 駅リストの例 *) 
 
let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
 
(* 目的：ekimei list から eki list を作る *) 
(* shokika : eki_t list -> string -> eki_t list *) 
let rec shokika eki_list shiten = match eki_list with
    [] -> []
    | {namae=n; saitan_kyori = k; temae_list = t}::rest ->
        if n = shiten then {namae=n; saitan_kyori = 0.; temae_list = n :: []} :: shokika rest shiten
        else first :: shokika rest shiten
let rec shokika eki_list shiten = 
    List.map (fun eki_list -> match eki with {namae=n; saitan_kyori = k; temae_list = t} -> if n = shiten then {namae=n; saitan_kyori = 0.; temae_list = []} else eki) eki_list

(* テスト *) 
let test1 = shokika [] "茗荷谷" = [] 
let test2 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 