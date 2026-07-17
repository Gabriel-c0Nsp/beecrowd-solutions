main :: IO ()
main = do
    n <- readLn :: IO Int
    mapM_ print (take 6 $ filter odd [n..])