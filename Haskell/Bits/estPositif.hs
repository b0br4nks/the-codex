module EstPositif (estPositif) where

import Data.Bits (shiftR, (.&.))

{-| Fonction qui vérifie si un nombre est positif ou non.

    Input: Int - Nombre à vérifier.

    Output: Bool - True si le nombre est positif, False sinon.
-}
estPositif :: Int -> Bool
estPositif x = shiftR x 31 == 0

-- TEST
main :: IO ()
main = do
    mapM_
        (\x -> putStrLn $ "estPositif " ++ show x ++ " -> " ++ show (estPositif x))
        [-5..4]
{-^ Output:
    estPositif -5 -> False
    estPositif -4 -> False
    estPositif -3 -> False
    estPositif -2 -> False
    estPositif -1 -> False
    estPositif 0  -> True
    estPositif 1  -> True
    estPositif 2  -> True
    estPositif 3  -> True
    estPositif 4  -> True
-}