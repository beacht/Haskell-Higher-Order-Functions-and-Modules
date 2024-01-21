double :: [Int] -> [Int]
double = map (* 2)

evens :: [Int] -> [Int]
evens = filter (\x -> x `mod` 2 == 0)

triple :: [Int] -> [Int]
triple = map (* 3)

odds :: [Int] -> [Int]
odds = filter (\x -> x `mod` 2 == 1)

squareList :: [Int] -> [Int]
squareList = map (^ 2)

sumList :: [Int] -> Int
sumList list = foldl (+) 0 list

main = do
    let list1 = [1, 5, -18, 99]
    let doubledList = double list1
    putStrLn("#1. Doubling [1,5,-18,99] using map:")
    print doubledList
    
    let list2 = [1..100]
    let evenList = evens list2
    putStrLn("\n#2. Even numbers 1-100 using filter:")
    print evenList
    
    let list3 = [1,3..77]
    let tripledList = triple list3
    putStrLn("\n#3. Tripling [1,3..77] using map:")
    print tripledList
    
    let list4 = [1,2,3,4,5,7,8,1,43,25,65,22]
    let sumOfSquaresOfOddsList = sumList(squareList(odds list4))
    putStrLn("\n#4. Sum of the squares of the odd numbers in [1,2,3,4,5,7,8,1,43,25,65,22]:")
    print sumOfSquaresOfOddsList