module Ejer5

where
import Ejer3
import Ejer4


quitaOr :: PL -> PL
quitaOr Bot = Bot
quitaOr Top = Top
quitaOr (Var _) = Var " "
quitaOr (Imp x y) = quitaOr(x) `Imp` quitaOr(y)
quitaOr (Dis x y) =  Neg (Neg(quitaOr(x) `Con` quitaOr(y)))
quitaOr (Neg x) = Neg (quitaOr(x))
quitaOr (Con x y) =  Neg (Neg(quitaOr(x) `Con` quitaOr(y)))



f2 :: PL
f2 = (Bot `Dis` Top) `Imp` (Var "x")


---Para probar llama quitaOr f2
