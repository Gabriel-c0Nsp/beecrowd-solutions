positive :: Int -> Bool
positive x = x > 0

oddEven :: Int -> String
oddEven n 
    | n == 0 = "NULL"
    | odd n = "ODD"
    | otherwise = "EVEN"
    
positiveNegative :: Int -> String
positiveNegative n
    | n == 0 = ""
    | positive n = " POSITIVE"
    | otherwise = " NEGATIVE"

classify :: Int -> IO ()
classify n = putStrLn $ (oddEven n) ++ (positiveNegative n)
    
main :: IO ()
main = do
    n <- readLn :: IO Int
    numbers <- sequence (replicate n (readLn :: IO Int))
    mapM_ classify numbers