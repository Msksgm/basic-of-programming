(* 人に関する情報を格納するレコード *) 
type person_t = { 
  name : string;	(* 名前 *) 
  shincho : float;	(* 身長 *) 
  taiju : float;	(* 体重 *) 
  tsuki : int;		(* 誕生月 *) 
  hi : int;		(* 誕生日 *) 
  ketsueki : string;	(* 血液型 *) 
} 
 
let person1 = 
  {name = "浅井"; 
   shincho = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shincho = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
} 
(* person_t 型のリストの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person1; person2] 
let lst4 = [person2; person1] 
let lst5 = [person3; person1; person2] 
(* 目的：昇順に並んでいる lst の正しい位置に person を挿入する *) 
(* person_insert : person_t list -> person_t -> person_t list *) 
let rec person_insert lst person0 = match lst with
    [] -> [person0]
    | first :: rest -> if first.name < person0.name then first :: person_insert rest person0 else person0 :: lst
(* テスト *) 
let test1 = person_insert [] person1 = [person1] 
let test2 = person_insert [person2] person1 = [person2; person1] 
let test3 = person_insert [person1] person2 = [person2; person1] 
let test4 = person_insert [person1; person2] person3 = [person1; person2; person3] 
(* TODO 名前のソートがうまくいかないのでスキップ *)