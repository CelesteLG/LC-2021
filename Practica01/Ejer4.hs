module Ejer4

where

type Variable = String
data Var = Variable String deriving (Show)

data PL = Bot
        | Top
        | Var Variable
        | String 
        | Imp PL PL
        | Dis PL PL
        | Con PL PL
        | Neg PL
        deriving (Eq, Show)
        
        

f0:: PL
f0= (((Var "q") `Imp` ((Var "qs" `Dis` Top ) `Imp` (Var "hs" `Con` Top)) ) `Con` Bot )


--Numero total de operadores
operadores :: PL -> Int
operadores Bot = 0
operadores Top = 0
operadores (String ) = 0
operadores (Var _) = 0
operadores (Imp x y) = 1 + operadores(y) + operadores(x)
operadores (Neg x) = 1 + operadores(x)
operadores (Dis x y) = 1 + operadores(y) + operadores(x)
operadores (Con x y) = 1 + operadores(y) + operadores(x)


---Numero de conjunciones  
conjunciones :: PL -> Int
conjunciones Bot = 0
conjunciones Top = 0
conjunciones (String ) = 0
conjunciones (Var _) = 0
conjunciones (Con x y) = 1 + conjunciones(y) + conjunciones(x)
conjunciones(Imp x y) = 0 + conjunciones(y) + conjunciones(x)
conjunciones (Neg x) = 0 + conjunciones(x)
conjunciones (Dis x y) = 0 + conjunciones(y) + conjunciones(x)



---Para probar se puede utilizar f0, seria conjunciones f0 y regresara 2
