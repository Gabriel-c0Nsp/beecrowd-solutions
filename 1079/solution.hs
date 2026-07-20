import Control.Monad (replicateM)
import Text.Printf (printf)
import Data.Functor ((<$>))

aplicaPeso :: [Float] -> [Float]
aplicaPeso [x, y, z] = [x * 2, y * 3, z * 5]

mediaPonderada :: [Float] -> Float
mediaPonderada = (/10) . sum . aplicaPeso

main :: IO ()
main = do
    n <- readLn :: IO Int
    listas <- replicateM n (map read . words <$> getLine)
    mapM_ (printf "%.1f\n" . mediaPonderada) listas