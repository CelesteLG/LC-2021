module Variables
where

data Var = Variable String deriving (Show)

type Variable = String

--EJEMPLOS 
-- *Variables> let var = Variable "q"
-- *Variables> var    --(La llamas)
-- Variable "q"       ---(Lo que imprime)


