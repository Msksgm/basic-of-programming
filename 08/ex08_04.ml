(* 各人の名前、身長（m）、体重（kg)、誕生日（月と日）と血液型を表すデータ *)
type person_t = {
    namae: string;
    sincho: float;
    taijuu: float;
    tanjoutsuki: int;
    tanjouniti: int;
    ketsueki: string;
}
(* 目的> 各人のデータ person を受け取り、血液型の紹介を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
    {namae = n; sincho = s; taijuu = t; tanjoutsuki = tt; tanjouniti = tn; ketsueki = k} ->
        n ^ "さんの血液型は" ^ k ^ "型です"
let test1 = ketsueki_hyoji {namae="msk"; sincho=1.67; taijuu=67.; tanjoutsuki=1; tanjouniti=1; ketsueki="A"} = "mskさんの血液型はA型です"
