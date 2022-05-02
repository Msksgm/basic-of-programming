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
(* 目的：学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)

(* person_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

(* 目的：血液型が A の人の数を返す *) 
(* count_ketsueki_A : person_t list -> int *) 
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    | {name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k} :: rest -> if k = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

(* テスト *) 
let test1 = count_ketsueki_A lst1 = 0 
let test2 = count_ketsueki_A lst2 = 1 
let test3 = count_ketsueki_A lst3 = 0 
let test4 = count_ketsueki_A lst4 = 1 
let test5 = count_ketsueki_A lst5 = 2 