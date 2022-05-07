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
(* tree_map : tree_t -> tree_t *)
let rec tree_map tree f = match tree with
    Empty -> Empty
    | Leaf (n) -> Leaf(f n)
    | Node (t1, n, t2) -> Node(tree_map t1 f, f n, tree_map t2 f)

(* テスト *)
let test1 = tree_map tree1 (fun n -> n * 2) = Empty
let test2 = tree_map tree2 (fun n -> n * 2) = Leaf (6)
let test3 = tree_map tree3 (fun n -> n * 2) = Node(Empty, 8, Leaf(6))
let test4 = tree_map tree4 (fun n -> n * 2) = Node(Leaf(6), 10, Node(Empty, 8, Leaf(6)))
