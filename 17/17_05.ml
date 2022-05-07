(* 多層の木を表す型 *)
type 'a tree_t = Empty
    | Leaf of 'a
    | Node of 'a tree_t  * 'a * 'a tree_t