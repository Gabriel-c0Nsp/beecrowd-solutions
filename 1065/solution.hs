main :: IO ()
main = do
    input <- getContents

    let numbers = map read (lines input) :: [Int]
    putStrLn (show (length $ filter even numbers) ++ " valores pares")