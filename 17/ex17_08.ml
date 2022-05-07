(* 木を表す型 *)
type tree_t = Empty
    | Leaf of int
    | Node of tree_t * int * tree_t

(* tree は
    - Empty 空の木、あるいは
    - Leaf (n) 値が n の葉、あるいは
    - Node (t1, n, t2) 左の木が t1、値が n、右の木が t2 であるような節
    という形 *)

(* 木の例 *)
let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)

(* 目的 : tree に含まれる整数をすべて加える *)
(* tree_depth : tree_t -> int *)
let rec tree_depth tree = match tree with
    Empty -> 0
    | Leaf (n) -> 0
    | Node (t1, n, t2) -> 1 + max(tree_depth t1)(tree_depth t2)

(* テスト *)
let test1 = tree_depth tree1 = 0
let test2 = tree_depth tree2 = 0
let test3 = tree_depth tree3 = 1
let test4 = tree_depth tree4 = 2
