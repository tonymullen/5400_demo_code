-- Type annotation (optional)
squared :: Int -> Int

-- Function definition
squared n = n * n

add' :: Int -> (Int -> Int)
add' x y = x + y

inc_by_3 :: Int -> Int
inc_by_3 = add' 3

splitAt' :: Int -> [a] -> ([a], [a])
splitAt' n xs = (take n xs, drop n xs)

splitAtThree :: [a] -> ([a], [a])
splitAtThree  = splitAt' 3
