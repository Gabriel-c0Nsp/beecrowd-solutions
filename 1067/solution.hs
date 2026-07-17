main :: IO ()
main = do
    n <- readLn :: IO Int
    mapM_ print (filter odd [1..n])