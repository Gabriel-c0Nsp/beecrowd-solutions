isRem2 :: Int -> Int -> Bool
isRem2 n item = rem n item == 2

main :: IO ()
main = do
    n <- readLn :: IO Int
    mapM_ print (filter (\x -> isRem2 x n) [1..10000])