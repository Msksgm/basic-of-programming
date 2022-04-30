(* 目的:x軸とy軸の組みで表された平面座標を受け取ったら、x軸に対して大正な点の座標を返す *)
(* taisho_x: float * float -> float * float *)
let taisho_x pair = match pair with
    (x, y) -> (x, -.y)
(* テスト *)
let test1 = taisho_x (0., 0.) = (0., 0.)
let test2 = taisho_x (1., 1.) = (1., -1.)
let test3 = taisho_x (1., 0.) = (1., 0.)
let test4 = taisho_x (0., 1.) = (0., -1.)