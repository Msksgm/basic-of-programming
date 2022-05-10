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

(* person_t list 型のデータの例 *) 
let lst1 = [person1; person2; person3] 
let lst2 = [person3; person2; person1] 

(* 目的 : lst に含まれる最初のA型の人を返す *)
(* first_A : person_t list -> person_t option *)
let rec first_A lst = match lst with
  [] -> None
  | first :: rest -> match first with 
      {name=n; shincho=s; taiju=ta; tsuki=ts; hi=h; ketsueki = k} -> if k = "A" then Some (first) else first_A rest 
(* テスト *) 
let test1 = first_A [] = None 
let test2 = first_A lst1 = Some (person1) 
let test3 = first_A lst2 = Some (person1) 