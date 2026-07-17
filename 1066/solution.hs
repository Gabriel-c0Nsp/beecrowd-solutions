main :: IO ()
main = do
    input <- getContents

    let numbers = map read (lines input) :: [Int]

    putStrLn (show (length $ filter even numbers) ++ " valor(es) par(es)")
    putStrLn (show (length $ filter odd numbers) ++ " valor(es) impar(es)")
    putStrLn (show (length $ filter (> 0) numbers) ++ " valor(es) positivo(s)")
    putStrLn (show (length $ filter (< 0) numbers) ++ " valor(es) negativo(s)")