result :: Int -> Int -> IO ()
result value n = putStrLn $ show n ++ " x " ++ show value ++ " = " ++ show (n * value)

main :: IO ()
main = do
    value <- readLn :: IO Int
    mapM_ (result value) [1..10]