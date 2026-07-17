main :: IO ()
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int

    print $ (if x > y then
        sum $ filter odd [(y + 1)..(x - 1)]
        else sum $ filter odd [(x + 1)..(y - 1)])