import Text.Printf

main :: IO ()
main = do
    input <- getContents
    let numeros = map read (lines input) :: [Double]

    let greater_than_zero = filter (> 0) numeros
    let greater_than_zero_size = length greater_than_zero
    let mean = (sum greater_than_zero) / fromIntegral greater_than_zero_size

    putStrLn (show greater_than_zero_size ++ " valores positivos")
    printf "%.1f\n" mean