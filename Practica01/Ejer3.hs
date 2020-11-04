module Ejer3

where
import Ejer4
import Data.List

varsIn :: PL -> [PL]
varsIn Bot = [Bot]
varsIn Top = [Top]
varsIn (Var _) = [(Var " ")]
varsIn (Imp x y) = varsIn(y) ++ varsIn(x)
varsIn (Neg x) = [(Var "x")]
varsIn (Dis x y) =  varsIn(y) ++ varsIn(x)
varsIn (Con x y) =  varsIn(y) ++ varsIn(x)


f1:: PL
f1 = ((Var "x") `Imp` (Bot `Dis` Top ) )


---Para probar llamas a varsIn f1 , saldra una lista solo que a las variables las deje en " " porque al poner guion bajo me marcaba error
