print_result :: Int -> IO ()
print_result x = putStrLn $ show x ++ "^2 = " ++ show (x ^ 2)

main :: IO ()
main = do
    n <- readLn :: IO Int
    mapM_ print_result (filter even [1..n])