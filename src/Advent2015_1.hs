--
module Advent2015_1 where
    --(   floors'
    --)where

import Prelude

floors' :: [Char] -> [Int]
floors' [] = [0]
floors' (x:xs) =  addOrMinus  x  (floors'  xs)


floorSum ::  [Int ] -> Int
floorSum  (x:xs) = foldl (+) x xs

floorIndex :: [(Int -> Int)] -> [(Int, Int)]
floorIndex = undefined--foldr . map (\x n -> (n + 1, x))

length' (x:xs) = undefined

floors'' ::  (Int, [Int]) -> Int -> Int
floors'' (_, []) n = 0
floors''  (i, xs) (-1) = i
floors''  (i, (x:xs)) n = floors'' (i  + 1, xs) (x + n)

--(floors'' (i + 1, (xs)) (n + x))

floors :: [Char] -> Int
floors (c:cs) = undefined



indexOfBasement :: [Char] -> Int
indexOfBasement cs  = undefined--addOrMinus c  $ (+)  addOrMinus (head cs)


add :: Int -> Int
add n = 1
minus :: Int -> Int
minus n = - 1

addOrMinus :: Char -> [Int] -> [Int]
addOrMinus _ [] = []
addOrMinus ('(') xs = 1:xs
addOrMinus (')') xs = (-1):xs
addOrMinus c xs = xs

addOrMinus' = 0
