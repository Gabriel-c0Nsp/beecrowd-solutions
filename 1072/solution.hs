find_in_range :: [Int] -> [Bool]
find_in_range list = map (\x -> elem x [10..20]) list

quantity_in :: [Int] -> Int
quantity_in numbers = length $ filter (\x -> x == True) $ find_in_range numbers

quantity_out :: [Int] -> Int
quantity_out numbers = length $ filter (\x -> x == False) $ find_in_range numbers

main :: IO ()
main = do
    input <- getContents

    let (x: xs) = map read (lines input) :: [Int]
        numbers = take x xs

    putStrLn (show (quantity_in numbers) ++ " in")
    putStrLn (show (quantity_out numbers) ++ " out")