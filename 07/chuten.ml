(* 目的:x座標とy座標の組みで表された平面座標をふたつ受け取ったら、その中点の座標を返す *)
(* chuten: (float * float) * (float * float) -> float * float *)
let chuten point = match point with
    ((x1, y1), (x2, y2)) -> (((x2 +. x1) /. 2.), (y2 +. y1) /. 2.)
(* テスト *)
let test1 = chuten ((4., 3.), (0., 0.)) = (2., 1.5)
let test2 = chuten ((2., 2.), (-2., -2.)) = (0., 0.)
let test3 = chuten ((-4., -3.), (-1., -1.)) = (-2.5, -2.)