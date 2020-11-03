module  Valuaciones
where
--import Variables
import Ejer4

type Valuacion = Variable -> Int

-- Cuando queremos una sola especifica sea 0
v1 :: Valuacion
v1 v = case v of
            "v_0" -> 0            
            _    -> 1
            
-- Para cuando queremos que cualquier cosa tenga valuacion 1
v2 :: Valuacion
v2 v = case v of
       _ -> 1     
       
-- Todo lo que sera 0
v3 :: Valuacion
v3 v = case v of
           _ -> 0
           
-- Solo 1 especifico sera 1           
v4 :: Valuacion
v4 v = case v of
            "v_1" -> 1            
            _    -> 0
           
----Para probar solo se necesita llamar vn (con n elnumero que quieras) con un string, por ejemplo v4 "x1"
