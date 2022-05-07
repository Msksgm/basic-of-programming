type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} ;;

fun person -> match person with
    {namae = n; tensuu = t; seiseki = s} -> n