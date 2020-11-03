module Ejer4

where

type Variable = String
data Var = Variable String deriving (Show)

data PL = Bot
        | Var Variable
        | String 
        | Imp PL PL
        | Dis PL PL
        | Con PL
        | Neg PL
        deriving (Eq, Show)
        
        

f0:: PL
f0= ((Var "q") `Imp` (Var "qs"))
